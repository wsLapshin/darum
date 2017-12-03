<?php
namespace Application\Controller\PageType;

use Concrete\Core\Page\Controller\PageTypeController;
use Concrete\Core\Page\PageList;
use Application\Src\Page\DarumPageUtils;

class AbstractContainer extends PageTypeController
{
    protected $fetchedIDs = array();
    protected $categoryCID;
    protected $neighbourCategoryCID; //напр. для статей советы (и наооборот) в конкретном разделе

    public function view()
    {
        //top - new advices for parents
        $pL = new PageList();
        DarumPageUtils::excludeGlobal($pL->getQueryObject());
        $pL->filterByParentID($this->categoryCID);
        $pL->filterByIsNew(1);
        $pL->getQueryObject()->setMaxResults(static::MAX_NEW_RESULTS);
        $pL->sortByPublicDateDescending();
        $newPages = $pL->getResults();
        DarumPageUtils::extendPages($newPages);
        $this->addFetchedIds($newPages);

        $mainNewPage[] = array_shift($newPages);
        $mainNewPage[] = array_shift($newPages);
        
        //middle - popular advices for parents
        $pL2 = new PageList();
        DarumPageUtils::excludeGlobal($pL2->getQueryObject());
        $pL2->filterByParentID($this->categoryCID);
        $pL2->filterByIsFeatured(1);
        //$pL2->getQueryObject()->andWhere( 'p.cID not in ' . $this->getFetchedIdsString());
        //@todo not opimized
        $pL2->getQueryObject()->orderBy('RAND ()');
        $pL2->getQueryObject()->setMaxResults(static::MAX_POPULAR_RESULTS);
        $popularPages = $pL2->getResults();
        DarumPageUtils::extendPages($popularPages);
        $this->addFetchedIds($popularPages);
        
        $mainPopularPage[] = array_shift($popularPages);
        $mainPopularPage[] = array_shift($popularPages);

        //bottom - mostcommente
        $pL3 = new PageList();
        DarumPageUtils::excludeGlobal($pL3->getQueryObject());
        $pL3->filterByParentID($this->categoryCID);
        $pL3->filterByIsCommented(1);
        //$pL3->getQueryObject()->andWhere( 'p.cID not in ' . $this->getFetchedIdsString());
        //@todo not opimized
        $pL3->getQueryObject()->orderBy('RAND ()');
        $pL3->getQueryObject()->setMaxResults(static::MAX_COMMENTED_RESULTS);
        $commentedPages = $pL3->getResults();
        DarumPageUtils::extendPages($commentedPages);
        $this->addFetchedIds($commentedPages);
        
        $mainCommentedPage = array();
        $mainCommentedPage[] = array_shift($commentedPages);
        $mainCommentedPage[] = array_shift($commentedPages);

        $pL4 = new PageList();
        DarumPageUtils::excludeGlobal($pL4->getQueryObject());
        $pL4->filterByParentID([$this->categoryCID, $this->neighbourCategoryCID]);
        $pL4->getQueryObject()->andWhere( 'p.cID not in ' . $this->getFetchedIdsString());
        //@todo not opimized
        $pL4->getQueryObject()->orderBy('RAND ()');
        $pL4->getQueryObject()->setMaxResults(static::MAX_INTERESTING_RESULTS);
        $interestingPages = $pL4->getResults();
        DarumPageUtils::extendPages($interestingPages);

        $this->set('newPages', $newPages);
        $this->set('mainNewPage', $mainNewPage);
        $this->set('popularPages', $popularPages);
        $this->set('mainPopularPage', $mainPopularPage);
        $this->set('commentedPages', $commentedPages);
        $this->set('mainCommentedPage', $mainCommentedPage);
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