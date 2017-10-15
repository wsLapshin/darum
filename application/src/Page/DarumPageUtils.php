<?php

namespace Application\Src\Page;

use Concrete\Core\Page\Page;
use Concrete\Core\Support\Facade\Application;

class DarumPageUtils
{

    /** Containers' ids */
    const ARTICLE_PARENTS_CATEGORY_CID = 203;
    const ARTICLE_STUDENTS_CATEGORY_CID = 204;
    const ARTICLE_RELATIONS_CATEGORY_CID = 205;

    const ADVICE_PARENTS_CATEGORY_CID = 200;
    const ADVICE_STUDENTS_CATEGORY_CID = 201;
    const ADVICE_RELATIONS_CATEGORY_CID = 202;

    /** Containers' ontology attribute names, при добавлении/удалении поправте метод getCateogoryTitle стр74  Это аттрибут-селект, где выбираем онтологию*/
    const ARTICLE_PARENTS_ONTOLOGY_ATTR = 'parents_articles';
    const ARTICLE_STUDENTS_ONTOLOGY_ATTR = 'students_articles';
    const ARTICLE_RELATIONS_ONTOLOGY_ATTR = 'relationship_articles';
    const ADVICE_PARENTS_ONTOLOGY_ATTR = 'parents_advices';
    const ADVICE_STUDENTS_ONTOLOGY_ATTR = 'students_advices';
    const ADVICE_RELATIONS_ONTOLOGY_ATTR = 'relationship_advices';

    /** Default Titles @todo multilingual */
    const ARTICLE_PARENTS_CATEGORY_TITLE = "Статьи родителям";
    const ARTICLE_STUDENTS_CATEGORY_TITLE = "Статьи студентам";
    const ARTICLE_RELATIONS_CATEGORY_TITLE = "Статьи отношения";
    const ADVICE_PARENTS_CATEGORY_TITLE = "Советы родителям";
    const ADVICE_STUDENTS_CATEGORY_TITLE = "Советы студентам";
    const ADVICE_RELATIONS_CATEGORY_TITLE = "Советы про отношения";

    /** CSS styles for titles */
    const ARTICLE_PARENTS_CATEGORY_TITLE_CSS_CLASS = "blue";
    const ARTICLE_STUDENTS_CATEGORY_TITLE_CSS_CLASS = "green";
    const ARTICLE_RELATIONS_CATEGORY_TITLE_CSS_CLASS = "pink";
    const ADVICE_PARENTS_CATEGORY_TITLE_CSS_CLASS = "blue";
    const ADVICE_STUDENTS_CATEGORY_TITLE_CSS_CLASS = "green";
    const ADVICE_RELATIONS_CATEGORY_TITLE_CSS_CLASS = "pink";
    const DEFAULT_TITLE = "Darum, когда нужна помощь";
    const DEFAULT_CSS_CLASS = "blue";


    /** new and popular slugs*/
    const NEW_SLUG = "new";
    const POPULAR_SLUG = "populyarnie";

    /** common slug for lists*/
    const LIST_SLUG = "spisok";

    private $page;

    public function __construct(Page $page)
    {
        $this->page = $page;
    }

    public function getPage()
    {
        return $this->page;
    }

    /**
     * Возвращает текст, css класс и ссылку для формирования заголовков раздела у статьи
     * Опирается на онтологии(задаваемые аттрибутом у страницы)
     * и fallback на значение заголовка по умолчанию
     *
     * @param string $excludeSlug - исключить slug для онтологии
     * @return array ['title'=><заголовок>, 'css'=><css class>, 'href'=><link to category>]
     */
    public function getCategoryTitle($excludeSlug = null)
    {
        $cParentID = $this->page->getCollectionParentID();

        /* get title from ontology attributes or fallback default */
        $attributeNames = array(
            static::ARTICLE_PARENTS_CATEGORY_CID => static::ARTICLE_PARENTS_ONTOLOGY_ATTR,
            static::ARTICLE_STUDENTS_CATEGORY_CID => static::ARTICLE_STUDENTS_ONTOLOGY_ATTR,
            static::ARTICLE_RELATIONS_CATEGORY_CID => static::ARTICLE_RELATIONS_ONTOLOGY_ATTR,
            static::ADVICE_PARENTS_CATEGORY_CID => static::ADVICE_PARENTS_ONTOLOGY_ATTR,
            static::ADVICE_STUDENTS_CATEGORY_CID => static::ADVICE_STUDENTS_ONTOLOGY_ATTR,
            static::ADVICE_RELATIONS_CATEGORY_CID => static::ADVICE_RELATIONS_ONTOLOGY_ATTR,
        );


        if (isset($attributeNames[$cParentID])) {
            $attributeName = $attributeNames[$cParentID];
        } else {
            return $this->getDefaultCategoryTitle();
        }

        $ontology = $this->getPageOntology();
        if (null === $ontology) {
            return $this->getDefaultCategoryTitle();
        }

        $title = null;
        $app = Application::getFacadeApplication();
        $textUtils = $app->make('helper/text');
        foreach ($ontology as $one) {
            if ($one['slug'] === $excludeSlug) {
                continue;
            }
            $title = $one['value'];
            $slug = $one['slug'];
            break;
        }
        if (null === $title) {
            return $this->getDefaultCategoryTitle();
        }

        $href = Page::getCollectionPathFromID($cParentID) . '/' . static::LIST_SLUG . '/' . $slug;

        $result = array_merge($this->getDefaultCategoryTitle(), array('href' => $href, 'title' => $title));

        return $result;
    }

    public function getDefaultCategoryTitle()
    {
        $result = array();
        $cParentID = $this->page->getCollectionParentID();
        switch ($cParentID) {
            case static::ARTICLE_PARENTS_CATEGORY_CID:
                $result['title'] = static::ARTICLE_PARENTS_CATEGORY_TITLE;
                $result['css'] = static::ARTICLE_PARENTS_CATEGORY_TITLE_CSS_CLASS;
                break;
            case static::ARTICLE_STUDENTS_CATEGORY_CID:
                $result['title'] = static::ARTICLE_STUDENTS_CATEGORY_TITLE;
                $result['css'] = static::ARTICLE_STUDENTS_CATEGORY_TITLE_CSS_CLASS;
                break;
            case static::ARTICLE_RELATIONS_CATEGORY_CID:
                $result['title'] = static::ARTICLE_RELATIONS_CATEGORY_TITLE;
                $result['css'] = static::ARTICLE_RELATIONS_CATEGORY_TITLE_CSS_CLASS;
                break;
            case static::ADVICE_PARENTS_CATEGORY_CID:
                $result['title'] = static::ADVICE_PARENTS_CATEGORY_TITLE;
                $result['css'] = static::ADVICE_PARENTS_CATEGORY_TITLE_CSS_CLASS;
                break;
            case static::ADVICE_STUDENTS_CATEGORY_CID:
                $result['title'] = static::ADVICE_STUDENTS_CATEGORY_TITLE;
                $result['css'] = static::ADVICE_STUDENTS_CATEGORY_TITLE_CSS_CLASS;
                break;
            case static::ADVICE_RELATIONS_CATEGORY_CID:
                $result['title'] = static::ADVICE_RELATIONS_CATEGORY_TITLE;
                $result['css'] = static::ADVICE_RELATIONS_CATEGORY_TITLE_CSS_CLASS;
                break;
            default:
                $result['title'] = static::DEFAULT_TITLE;
                $result['css'] = static::DEFAULT_CSS_CLASS;
        }

        $result['href'] = Page::getCollectionPathFromID($cParentID);

        return $result;
    }

    /**
     * Получить label онтологии для вывода на экран по slug 
     * @param type $slug
     */
    public static function getOntologyLabelBySlug($slug)
    {
        $em = \Database::get()->getEntityManager();
        $query = "select `value` from atSelectOptions where slug = :slug";
        $stmt = $em->getConnection()->prepare($query);
        $stmt->execute(array(':slug'=>$slug));
        return $stmt->fetch()['value'];
    }

    /**
     * Материалы верхнего уровня,скрытые от показа в меню ( вн. страницы)
     * @return array
     */
    public static function getCIDHiddenFromMainMenu()
    {
        return array(423,424,425,426,427);
    }

    /**
     * Проверяет, является ли страница контейнером статей 
     * @return boolean 
     */
    public function isArticlesContainer()
    {
        return in_array($this->page->getCollectionID(), array(
             static::ARTICLE_PARENTS_CATEGORY_CID,
             static::ARTICLE_STUDENTS_CATEGORY_CID,
             static::ARTICLE_RELATIONS_CATEGORY_CID,
        ));
    }

    /**
     * Проверяет, является ли страница контейнером советов 
     * @return boolean 
     */
    public function isAdvicesContainer()
    {
        return in_array($this->page->getCollectionID(), array(
             static::ADVICE_PARENTS_CATEGORY_CID,
             static::ADVICE_STUDENTS_CATEGORY_CID,
             static::ADVICE_RELATIONS_CATEGORY_CID,
        ));
    }

    private function getPageOntology()
    {
        $em = \Database::get()->getEntityManager();
        $pageId = $this->page->getCollectionID();
        $pageVersionId = $this->page->getVersionID();
        $query = "select opt.value, opt.slug from CollectionAttributeValues cav "
            . "inner join atSelectOptionsSelected as sel on sel.avID=cav.avID "
            . "left join atSelectOptions as opt on opt.avSelectOptionID = sel.avSelectOptionID "
            . "where cav.cID=:pageId and cav.cvID = :pageVersionId";
        $stmt = $em->getConnection()->prepare($query);
        $stmt->execute(array(':pageId' => $pageId, ':pageVersionId' => $pageVersionId));
        return $stmt->fetchAll();
    }


}
