<?php
namespace Application\Controller\PageType;

use Concrete\Core\Page\Controller\PageTypeController;
use Concrete\Core\Page\PageList;
use Concrete\Core\Page\Page;
use Application\Src\Page\DarumPageUtils;

class Alist extends PageTypeController
{
    public function view($queryStringArg = null)
    {
        $pL = new PageList();

        //id родителя
        /**
         * @var Page $c
         */
        $c = Page::getCurrentPage();
        $cParentID = $c->getCollectionParentID();

        //фильтруем по разделу
        $pL->filterByParentID($cParentID);
        $pL->sortByPublicDateDescending();
        if( null !== $queryStringArg ) {
            switch ($queryStringArg) {
                case DarumPageUtils::POPULAR_SLUG; 
                    $pL->filterByIsFeatured(1);
                    break;
                case DarumPageUtils::NEW_SLUG; 
                    $pL->filterByIsNew(1);
                    break;
                default:
                    if( $cParentID == DarumPageUtils::ARTICLE_PARENTS_CATEGORY_CID ) {
                        $pL->filterByParentsArticles($queryStringArg, 'by_slug');
                        $this->set('whom', 'родителям');
                    } elseif ($cParentID == DarumPageUtils::ARTICLE_STUDENTS_CATEGORY_CID ) {
                        $pL->filterByStudentsArticles($queryStringArg, 'by_slug');
                        $this->set('whom', 'студентам');
                    } elseif ($cParentID == DarumPageUtils::ARTICLE_RELATIONS_CATEGORY_CID ) {
                        $pL->filterByRelationshipArticles($queryStringArg, 'by_slug');
                        $this->set('whom', 'про отношения');
                    }
            }
        }

        if( $cParentID == DarumPageUtils::ARTICLE_PARENTS_CATEGORY_CID ) {
            $this->set('whom', 'родителям');
        } elseif ($cParentID == DarumPageUtils::ARTICLE_STUDENTS_CATEGORY_CID ) {
            $this->set('whom', 'студентам');
        } elseif ($cParentID == DarumPageUtils::ARTICLE_RELATIONS_CATEGORY_CID ) {
            $this->set('whom', 'про отношения');
        }

        $this->set('pages', $pL->getResults());
        $this->set('slug', $queryStringArg);
    }
}
