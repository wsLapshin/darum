<?php
namespace Application\Controller\PageType;

use Concrete\Core\Page\Controller\PageTypeController;
use Concrete\Core\Page\PageList;
use Concrete\Core\Page\Page;
use Application\Src\Page\DarumPageUtils;

class Advlist extends PageTypeController
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
                    if( $cParentID == DarumPageUtils::ADVICE_PARENTS_CATEGORY_CID ) {
                        $pL->filterByParentsArticles($queryStringArg, 'by_slug');
                        $this->set('whom', 'родителям');
                    } elseif ($cParentID == DarumPageUtils::ADVICE_STUDENTS_CATEGORY_CID ) {
                        $pL->filterByStudentsArticles($queryStringArg, 'by_slug');
                        $this->set('whom', 'студентам');
                    } elseif ($cParentID == DarumPageUtils::ADVICE_RELATIONS_CATEGORY_CID ) {
                        $pL->filterByRelationshipArticles($queryStringArg, 'by_slug');
                        $this->set('whom', 'про отношения');
                    }
            }
        }

        $pLArticles = new PageList();
    
        if( $cParentID == DarumPageUtils::ADVICE_PARENTS_CATEGORY_CID ) {
            $pLArticles->filterByParentId(DarumPageUtils::ARTICLE_PARENTS_CATEGORY_CID);
        } elseif ($cParentID == DarumPageUtils::ADVICE_STUDENTS_CATEGORY_CID ) {
            $pLArticles->filterByParentId(DarumPageUtils::ARTICLE_STUDENTS_CATEGORY_CID);
        } elseif ($cParentID == DarumPageUtils::ADVICE_RELATIONS_CATEGORY_CID ) {
            $pLArticles->filterByParentId(DarumPageUtils::ARTICLE_RELATIONS_CATEGORY_CID);
        }
        $pLArticles->getQueryObject()->orderBy('RAND ()');
        $pLArticles->getQueryObject()->setMaxResults(7);
        $articles = $pLArticles->getResults(); 
        DarumPageUtils::extendPages($articles);
        $this->set('articles', $articles);

        $pages = $pL->getResults();
        DarumPageUtils::extendPages($pages);
        $this->set('pages', $pages);
        $this->set('slug', $queryStringArg);
    }
}
