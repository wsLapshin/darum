<?php

namespace Application\Src\Page;

use Concrete\Core\Page\Page;
use Concrete\Core\Support\Facade\Application;
use Concrete\Core\Page\PageList;

class DarumPageUtils
{

    /** Containers' ids */
    const ARTICLE_PARENTS_CATEGORY_CID = 203;
    const ARTICLE_STUDENTS_CATEGORY_CID = 204;
    const ARTICLE_RELATIONS_CATEGORY_CID = 205;
    const ADVICE_PARENTS_CATEGORY_CID = 200;
    const ADVICE_STUDENTS_CATEGORY_CID = 201;
    const ADVICE_RELATIONS_CATEGORY_CID = 202;
    //@todo захаркодены idшники которые не выводятся в листингах
    const GLOBAL_EXCLUDED_CIDS = [1, 412, 200, 201, 202, 203, 204, 205, 207,211, 413, 208, 414, 209, 423,424,425, 426,427, 428 ];

    /** Containers' ontology attribute names, при добавлении/удалении поправте метод getCateogoryTitle стр74  Это аттрибут-селект, где выбираем онтологию */
    const ARTICLE_PARENTS_ONTOLOGY_ATTR = 'parents_articles';
    const ARTICLE_STUDENTS_ONTOLOGY_ATTR = 'students_articles';
    const ARTICLE_RELATIONS_ONTOLOGY_ATTR = 'relationship_articles';
    const ADVICE_PARENTS_ONTOLOGY_ATTR = 'parents_advices';
    const ADVICE_STUDENTS_ONTOLOGY_ATTR = 'students_advices';
    const ADVICE_RELATIONS_ONTOLOGY_ATTR = 'relationship_advices';

    /** Type Handlers of article pages **/
    const ARTICLE_PARENTS_TYPE_HANDLER = 'article_parents';
    const ARTICLE_STUDENTS_TYPE_HANDLER = 'article_students';
    const ARTICLE_RELATIONS_TYPE_HANDLER = 'article_relationships';
    const ADVICE_PARENTS_TYPE_HANDLER = 'advice_parents';
    const ADVICE_STUDENTS_TYPE_HANDLER = 'advice_students';
    const ADVICE_RELATIONS_TYPE_HANDLER = 'advice_relationships';

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

    /** new and popular slugs */
    const NEW_SLUG = "new";
    const POPULAR_SLUG = "populyarnie";

    /** common slug for lists */
    const LIST_SLUG = "spisok";

    /** Name of the block of article(or advice) where the main image is stored */
    const MAIN_IMAGE_AREA_NAME_IN_ARTICLE = 'MainImage';

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
                break;
            case static::ARTICLE_STUDENTS_CATEGORY_CID:
                $result['title'] = static::ARTICLE_STUDENTS_CATEGORY_TITLE;
                break;
            case static::ARTICLE_RELATIONS_CATEGORY_CID:
                $result['title'] = static::ARTICLE_RELATIONS_CATEGORY_TITLE;
                break;
            case static::ADVICE_PARENTS_CATEGORY_CID:
                $result['title'] = static::ADVICE_PARENTS_CATEGORY_TITLE;
                break;
            case static::ADVICE_STUDENTS_CATEGORY_CID:
                $result['title'] = static::ADVICE_STUDENTS_CATEGORY_TITLE;
                break;
            case static::ADVICE_RELATIONS_CATEGORY_CID:
                $result['title'] = static::ADVICE_RELATIONS_CATEGORY_TITLE;
                break;
            default:
                $result['title'] = static::DEFAULT_TITLE;
        }
        $result['css'] = DarumPageUtils::getCategoryColor($cParentID); 
        $result['href'] = Page::getCollectionPathFromID($cParentID);

        return $result;
    }

    public static function getCategoryColor($categoryID)
    {
        $colors = [
            static::ARTICLE_PARENTS_CATEGORY_CID => static::ARTICLE_PARENTS_CATEGORY_TITLE_CSS_CLASS,
            static::ARTICLE_STUDENTS_CATEGORY_CID => static::ARTICLE_STUDENTS_CATEGORY_TITLE_CSS_CLASS,
            static::ARTICLE_RELATIONS_CATEGORY_CID => static::ARTICLE_RELATIONS_CATEGORY_TITLE_CSS_CLASS,
            static::ADVICE_PARENTS_CATEGORY_CID => static::ADVICE_PARENTS_CATEGORY_TITLE_CSS_CLASS,
            static::ADVICE_STUDENTS_CATEGORY_CID => static::ADVICE_STUDENTS_CATEGORY_TITLE_CSS_CLASS,
            static::ADVICE_RELATIONS_CATEGORY_CID => static::ADVICE_RELATIONS_CATEGORY_TITLE_CSS_CLASS,
        ];

        if( isset($colors[$categoryID]) ) {
            return $colors[$categoryID];
        } else {
            return static::DEFAULT_CSS_CLASS;
        }
    }


    /**
     * Обрезка фото 
     * @param \Concrete\Core\Entity\File\File $image
     * @param int $width
     * @param height  $height 300 193
     */
    public static function cropImage($image, $width, $height, $alt='')
    {
        $ih = \Core::make('helper/image');
        $crop = true;
        return $ih->outputThumbnail($image, $width, $height, $alt, true, $crop); 
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
        $stmt->execute(array(':slug' => $slug));
        return $stmt->fetch()['value'];
    }

    /**
     * Материалы верхнего уровня,скрытые от показа в меню ( вн. страницы)
     * @return array
     */
    public static function getCIDHiddenFromMainMenu()
    {
        return array(423, 424, 425, 426, 427);
    }

    /**
     * Дополняет страницы параметрами,для удобства использования во вьюхах
     * @param $pagesAr | Page - массив страниц
     */
    public static function extendPages(&$pagesAr)
    {
        if( !is_array( $pagesAr ) ) {
            $pagesAr = [ $pagesAr ];
            $isOnePage = true;
        } else {
            $isOnePage = false;
        }

        foreach ($pagesAr as &$p) {
            $blocks = $p->getBlocks('MainImage');
            $mainImage = null;
            $mainImageAlt = null;
            foreach ($blocks as $block) {
                if ($block->getBlockTypeID() == 32) { //image type
                    $mainImage = $block->getInstance()->getFileObject();
                    $mainImageAlt = $block->getInstance()->getAltText();
                    break;
                }
            }
            $p->mainImage = $mainImage;
            $p->altMainImage = $mainImageAlt;
        }

        if ($isOnePage) {
            $pagesAr = $pagesAr[0];
        }
    }

    /**
     * Исключает глобальные(системные) странички, которых никогда не должно быть в списках 
     * @param PageList $pL
     */
    public static function excludeGlobal(&$query)
    {
        $query->andWhere( 'p.cID not in (' . implode(',', self::GLOBAL_EXCLUDED_CIDS) . ')');
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
