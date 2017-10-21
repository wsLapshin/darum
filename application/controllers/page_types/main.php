<?php
namespace Application\Controller\PageType;

use Concrete\Core\Page\Controller\PageTypeController;
use Concrete\Core\Page\PageList;
use Application\Src\Page\DarumPageUtils;

class Main extends PageTypeController
{
    const MAX_NEW_ARTICLE_RESULTS = 4;
    const MAX_NEW_ADVICE_RESULTS = 5;
    const MAX_POPULAR_ARTICLES = 5;
    const MAX_POPULAR_ADVICES = 5;
    const MAX_INTERESTING_RESULTS = 6;

    protected $fetchedIDs = array();
    protected $categoryCID;
    protected $neighbourCategoryCID; //напр. для статей советы (и наооборот) в конкретном разделе

    public function view()
    {
        //top news articles
        $pL = new PageList();
        DarumPageUtils::excludeGlobal($pL->getQueryObject());
        $pL->filterByParentID([
            DarumPageUtils::ARTICLE_PARENTS_CATEGORY_CID,
            DarumPageUtils::ARTICLE_STUDENTS_CATEGORY_CID,
            DarumPageUtils::ARTICLE_RELATIONS_CATEGORY_CID
        ]);
        $pL->filterByIsNew(1);
        $pL->sortByPublicDateDescending();
        $pL->getQueryObject()->setMaxResults(static::MAX_NEW_ARTICLE_RESULTS);
        $newPages = $pL->getResults();
        DarumPageUtils::extendPages($newPages);
        $this->addFetchedIds($newPages);

        $mainNewPage[] = array_shift($newPages);
        $mainNewPage[] = array_shift($newPages);
        $this->set('newPages', $newPages);
        $this->set('mainNewPage', $mainNewPage);

        //top news advices
        $pL1 = new PageList();
        DarumPageUtils::excludeGlobal($pL1->getQueryObject());
        $pL1->filterByParentID([
            DarumPageUtils::ADVICE_PARENTS_CATEGORY_CID,
            DarumPageUtils::ADVICE_STUDENTS_CATEGORY_CID,
            DarumPageUtils::ADVICE_RELATIONS_CATEGORY_CID
        ]);
        $pL1->filterByIsNew(1);
        $pL1->sortByPublicDateDescending();
        $pL1->getQueryObject()->setMaxResults(static::MAX_NEW_ADVICE_RESULTS);
        $newAdvicePages = $pL1->getResults();
        DarumPageUtils::extendPages($newAdvicePages);
        $this->addFetchedIds($newAdvicePages);
        $this->set('newAdvicePages', $newAdvicePages);

        //middle articles
        $pL2 = new PageList();
        DarumPageUtils::excludeGlobal($pL2->getQueryObject());
        $pL2->filterByParentID([
            DarumPageUtils::ARTICLE_PARENTS_CATEGORY_CID,
            DarumPageUtils::ARTICLE_STUDENTS_CATEGORY_CID,
            DarumPageUtils::ARTICLE_RELATIONS_CATEGORY_CID
        ]);
        $pL2->filterByIsFeatured(1);
        //$pL2->getQueryObject()->andWhere( 'p.cID not in ' . $this->getFetchedIdsString());
        //@todo not opimized
        $pL2->getQueryObject()->orderBy('RAND ()');
        $pL2->getQueryObject()->setMaxResults(static::MAX_POPULAR_ARTICLES);
        $popularArticlePages = $pL2->getResults();
        DarumPageUtils::extendPages($popularArticlePages);
        $this->addFetchedIds($popularArticlePages);
        
        $mainPopularArticlePage[] = array_shift($popularArticlePages);
        $mainPopularArticlePage[] = array_shift($popularArticlePages);
        $this->set('popularArticlePages', $popularArticlePages);
        $this->set('mainPopularArticlePage', $mainPopularArticlePage);

        //bottom advices
        $pL3 = new PageList();
        DarumPageUtils::excludeGlobal($pL3->getQueryObject());
        $pL3->filterByParentID([
            DarumPageUtils::ADVICE_PARENTS_CATEGORY_CID,
            DarumPageUtils::ADVICE_STUDENTS_CATEGORY_CID,
            DarumPageUtils::ADVICE_RELATIONS_CATEGORY_CID
        ]);
        $pL3->filterByIsFeatured(1);
        //$pL3->getQueryObject()->andWhere( 'p.cID not in ' . $this->getFetchedIdsString());
        //@todo not opimized
        $pL3->getQueryObject()->orderBy('RAND ()');
        $pL3->getQueryObject()->setMaxResults(static::MAX_POPULAR_ADVICES);
        $popularAdvicePages = $pL3->getResults();
        DarumPageUtils::extendPages($popularAdvicePages);
        $this->addFetchedIds($popularAdvicePages);
        
        $mainPopularAdvicePage[] = array_shift($popularAdvicePages);
        $mainPopularAdvicePage[] = array_shift($popularAdvicePages);
        $this->set('popularAdvicePages', $popularAdvicePages);
        $this->set('mainPopularAdvicePage', $mainPopularAdvicePage);

        //interesting (prefooter)
        $pL4 = new PageList();
        
        DarumPageUtils::excludeGlobal($pL4->getQueryObject());
        $pL4->getQueryObject()->andWhere( 'p.cID not in ' . $this->getFetchedIdsString());
        //@todo not opimized
        $pL4->getQueryObject()->orderBy('RAND ()');
        $pL4->getQueryObject()->setMaxResults(static::MAX_INTERESTING_RESULTS);
        $interestingPages = $pL4->getResults();
        DarumPageUtils::extendPages($interestingPages);
        $this->set('interestingPages', $interestingPages);

    }

    protected function addFetchedIds($result)
    {
        foreach($result as $p) {
            $this->fetchedIDs[] = $p->getCollectionID(); 
        }
    }

    protected function getFetchedIdsString()
    {
        return '(' . implode(',', $this->fetchedIDs ) . ')';
    }
    
}