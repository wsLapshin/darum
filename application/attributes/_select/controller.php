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
use Application\Entity\Attribute\Key\Settings\SelectSettingsDarum;

class Controller extends SelectCoreController
{

    private $akSelectAllowMultipleValues;
    private $akSelectAllowOtherValues;
    private $akSelectOptionDisplayOrder;
    private $akSelectGenerateSlug;

    public function filterByAttribute(AttributedItemList $list, $value, $comparison = '=')
    {
        if ($comparison == 'by_slug') {
            // slug 
        } else {
            parent::filterByAttribute($list, $value, $comparison);
        }
    }

    protected function load()
    {
        parent::load();
        $ak = $this->getAttributeKey();
        $type = $ak->getAttributeKeySettings();
        if (is_object($type)) {
           $this->akSelectGenerateSlug = $type->getGenerateSlug();
           $this->set('akSelectGenerateSlug', $this->akSelectGenerateSlug);
        }
    }

    public function saveKey($data)
    {
        parent::saveKey($data);
        $type = $this->getAttributeKeySettings();
        $type->setGenerateSlug( (bool) $data['akSelectGenerateSlug']);

        return $type;
    }
    
    public function getAttributeKeySettingsClass()
    {
        return SelectSettingsDarum::class;
    }

}
