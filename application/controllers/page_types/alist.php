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

        //фильтруем по текущему разделу
        $pL->filterByParentID($cParentID);
        $pL->sortByPublicDateDescending();

        //add advices to aside and make right text in headers
        $pLAdvices = new PageList();
        if( $cParentID == DarumPageUtils::ARTICLE_PARENTS_CATEGORY_CID ) {
            $pLAdvices->filterByParentId(DarumPageUtils::ADVICE_PARENTS_CATEGORY_CID);
        } elseif ($cParentID == DarumPageUtils::ARTICLE_STUDENTS_CATEGORY_CID ) {
            $pLAdvices->filterByParentId(DarumPageUtils::ADVICE_STUDENTS_CATEGORY_CID);
        } elseif ($cParentID == DarumPageUtils::ARTICLE_RELATIONS_CATEGORY_CID ) {
            $pLAdvices->filterByParentId(DarumPageUtils::ADVICE_RELATIONS_CATEGORY_CID);
        }
        $pLAdvices->getQueryObject()->orderBy('RAND ()');
        $pLAdvices->getQueryObject()->setMaxResults(7);
        $advices = $pLAdvices->getResults(); 
        DarumPageUtils::extendPages($advices);
        $this->set('advices', $advices);

        
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
        
        $pages = $pL->getResults();
        DarumPageUtils::extendPages($pages);
        $this->set('pages', $pages);
        $this->set('slug', $queryStringArg);
    }
}
