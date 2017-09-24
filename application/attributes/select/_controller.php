<?php

namespace Application\Attribute\Select;

/**
 * Darum 
 * 
 * Переопределяет поведение встроенного аттрибута Select
 * Расширяет возможности Select для маркировки страниц на принадлежность произвольной категории
 * 
 *  - добавлена настройка "генерировать slug" - относительно введенного значения 
 *  - генерация и сохранение транслитерированного slug в бд если настройка включена
 *  - добавлен метод генерации ссылки
 *  - добавлена возможность поиска по slug
 *  - миграция: 001.sql 
 * 
 * @copyright   Copyright (c) 2018 Darum
 * @version   $Id: controller.php Sep 6, 2017  7:26:27 PM
 * @autor http://vk.com/wslapshin
 */
use Concrete\Attribute\Select\Controller as SelectCoreController;
use Concrete\Core\Search\ItemList\Database\AttributedItemList;
use Concrete\Core\Entity\Attribute\Value\Value\SelectValue;
use Application\Entity\Attribute\Key\Settings\SelectSettingsDarum;
use Concrete\Core\Entity\Attribute\Value\Value\SelectValueOption;

class Controller extends SelectCoreController
{

    private $akSelectAllowMultipleValues;
    private $akSelectAllowOtherValues;
    private $akSelectOptionDisplayOrder;
    private $akSelectGenerateSlug;

    /**
     * Используется методами сортировки PageList 
     * Добавлена возможность фильтрации по сгенерированному slug
     */
    public function filterByAttribute(AttributedItemList $list, $value, $comparison = '=')
    {
        if ($comparison == 'by_slug') {
            // slug 
        } else {
            parent::filterByAttribute($list, $value, $comparison);
        }
    }

    /**
     * Подгружает конкретный аттрибут в контроллер 
     * Сохраняет настройки аттрибута в свойства контроллера по отдельности
     * и свойство $this->sets для совместной работы с параметрами запросов
     * @return boolean
     */
    protected function load()
    {
        /*
         * @var \Concrete\Core\Entity\Attribute\Key\SelectKey
         */
        $ak = $this->getAttributeKey();
        if (!is_object($ak)) {
            return false;
        }

        /**
         * @var $type SelectSettings
         */
        $type = $ak->getAttributeKeySettings();
        if (is_object($type)) {

            $this->akSelectAllowMultipleValues = $type->getAllowMultipleValues();
            $this->akSelectAllowOtherValues = $type->getAllowOtherValues();
            $this->akSelectOptionDisplayOrder = $type->getDisplayOrder();
            $this->set('akSelectAllowMultipleValues', $this->akSelectAllowMultipleValues);
            $this->set('akSelectAllowOtherValues', $this->akSelectAllowOtherValues);
            $this->set('akSelectOptionDisplayOrder', $this->akSelectOptionDisplayOrder);
            $this->akSelectGenerateSlug = $type->getGenerateSlug();
            $this->set('akSelectGenerateSlug', $this->akSelectGenerateSlug);
        }
    }

    /**
     * Используется при сохранении настроек конкретного аттрибута
     */
    public function saveKey($data)
    {
        $type = parent::saveKey($data);
        $type->setGenerateSlug( (bool) $data['akSelectGenerateSlug']);

        return $type;
    }
    
    public function getAttributeKeySettingsClass()
    {
        return SelectSettingsDarum::class;
    }


    /**
     * CopyPasted from original as it works with private members
     */
    public function createAttributeValue($value)
    {
        $app = \Concrete\Core\Support\Facade\Application::getFacadeApplication();
        $textUtils = $app->make('helper/text');

//        if( (bool)$this->akSelectGenerateSlug ) {
//            foreach ($_selectValue->getSelectedOptions() as $selectOption){
//                if( empty($selectOption->getSlug()) ){
//                    $optionValue = $selectOption->getSelectAttributeOptionValue();
//                    $selectOption->setSlug( $textUtils->slugSafeStringTransliterate( $optionValue ) );
//                }
//            }
//        }
        
        $this->load();

        $options = array();
        
        if ($value != null) {
            if (is_array($value) && $this->akSelectAllowMultipleValues) {
                foreach ($value as $v) {
                    if ($v instanceof SelectValueOption) {
                        $option = $v;


                    } else {
                        // Retrieve the option by value. Only get those that are assigned to this attribute key.
                        $option = $this->getOptionByValue($v, $this->attributeKey);

                    }

                    if (!is_object($option) && $this->akSelectAllowOtherValues) {
                        $option = new SelectValueOption();
                        $option->setIsEndUserAdded(true);
                        $option->setSelectAttributeOptionValue($v);
                    }

                    if (is_object($option)) {

                        //slug
                        if( $this->akSelectGenerateSlug && empty($option->getSlug()) ){
                            $optionValue = $option->getSelectAttributeOptionValue();
                            $option->setSlug( $textUtils->slugSafeStringTransliterate( $optionValue ) );
                        }
                        $options[] = $option;
                    }
                }
            } else {
                if (is_array($value)) {
                    $value = $value[0];
                }

                if ($value instanceof SelectValueOption) {
                    $option = $value;
                } else {
                    $option = $this->getOptionByValue($value, $this->attributeKey);
                }

                if (is_object($option)) {
                    
                    //slug
                    if( $this->akSelectGenerateSlug && empty($option->getSlug()) ){
                        $optionValue = $option->getSelectAttributeOptionValue();
                        $option->setSlug( $textUtils->slugSafeStringTransliterate( $optionValue ) );
                    }
                    $options[] = $option;
                }
            }
        }

        
        $av = new SelectValue();
        $av->setSelectedOptions($options);
        return $av;
    }

    /**
     * Обрабатывает запрос связанный с аттрибутом из публикатора  
     * @return Concrete\Core\Entity\Attribute\Value\Value\SelectValue
     */
    public function createAttributeValueFromRequest()
    {  
        /**copy past from original to work with modified entity of SelectValue*/
        $data = $this->post();
        $this->load();

        $akSelectAllowMultipleValues = $this->akSelectAllowMultipleValues;
        $akSelectAllowOtherValues = $this->akSelectAllowOtherValues;
        $keyType = $this->attributeKey->getAttributeKeySettings();
        $optionList = $keyType->getOptionList();
        if (!$akSelectAllowMultipleValues && !$akSelectAllowOtherValues) {
            // select list. Only one option possible. No new options.
            $option = $this->getOptionByID($data['atSelectOptionValue']);
            if (is_object($option)) {
                return  $this->createAttributeValue($option);
            } else {
                return  $this->createAttributeValue(null);
            }
        } else {
            if ($akSelectAllowMultipleValues && !$akSelectAllowOtherValues) {
                // checkbox list.  No new options.
                $options = array();
                if (is_array($data['atSelectOptionValue'])) {
                    foreach ($data['atSelectOptionValue'] as $optionID) {
                        $option = $this->getOptionByID($optionID);
                        if (is_object($option)) {
                            $options[] = $option;
                        }
                    }
                }
                return  $this->createAttributeValue($options);
            } else {
                if (!$akSelectAllowMultipleValues && $akSelectAllowOtherValues) {

                    // The post comes through in the select2 format. Either a SelectAttributeOption:ID item
                    // or a new item.
                    $option = false;
                    if ($data['atSelectOptionValue']) {
                        if (preg_match('/SelectAttributeOption\:(.+)/i',
                            $data['atSelectOptionValue'], $matches)) {
                            $option = $this->getOptionByID($matches[1]);
                        } else {
                            $option = $this->getOptionByValue(trim($data['atSelectOptionValue']), $this->attributeKey);
                            if (!is_object($option)) {
                                $option = new SelectValueOption();
                                $option->setOptionList($optionList);
                                $option->setIsEndUserAdded(true);
                                $option->setDisplayOrder(count($optionList));
                                $option->setSelectAttributeOptionValue(trim($data['atSelectOptionValue']));
                            }
                        }
                    }
                    if (is_object($option)) {
                        return $this->createAttributeValue($option);
                    } else {
                        return $this->createAttributeValue(null);
                    }
                } else {
                    if ($akSelectAllowMultipleValues && $akSelectAllowOtherValues) {

                        // The post comes through in the select2 format. A comma-separated
                        // list of SelectAttributeOption:ID items and new items.
                        $options = array();
                        if ($data['atSelectOptionValue']) {
                            foreach (explode(',', $data['atSelectOptionValue']) as $value) {
                                if (preg_match('/SelectAttributeOption\:(.+)/i', $value, $matches)) {
                                    $option = $this->getOptionByID($matches[1]);
                                } else {
                                    $option = $this->getOptionByValue(trim($value), $this->attributeKey);
                                    if (!is_object($option)) {
                                        $option = new SelectValueOption();
                                        $option->setOptionList($optionList);
                                        $option->setDisplayOrder(count($optionList));
                                        $option->setSelectAttributeOptionValue(trim($value));
                                        $option->setIsEndUserAdded(true);
                                    }
                                }

                                if (is_object($option)) {
                                    $options[] = $option;
                                }
                            }
                        }
                        if (count($options)) {
                            return  $this->createAttributeValue($options);
                        } else {
                            return  $this->createAttributeValue(null);
                        }
                    }
                }
            }
        }
    }

    /**
     * Almost full copy-paste from original to use with new entity 
     */
    public function getOptionByID($id)
    {
        $orm = $this->entityManager;
        $repository = $orm->getRepository('\Application\Entity\Attribute\Value\Value\SelectValueOptionDarum');
        $option = $repository->findOneBy(array(
            'avSelectOptionID' => $id
        ));

        return $option;
    }

    /**
     * Almost full copy-paste from original to use with new entity 
     */
    public function getOptionByValue($value, $attributeKey = false)
    {
        $orm = \Database::connection()->getEntityManager();
        $repository = $orm->getRepository('\Application\Entity\Attribute\Value\Value\SelectValueOptionDarum');
        if ($attributeKey) {
            $existingList = $attributeKey->getAttributeKeySettings()->getOptionList();
        }
        if (isset($existingList) && is_object($existingList)) {
            $option = $repository->findOneBy(array(
                'list' => $existingList,
                'value' => $value,
            ));
        } else {
            $option = $repository->findOneByValue($value);
        }

        return $option;
    }

}
