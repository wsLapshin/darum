<?php
namespace Application\Controller\PageType;

use Concrete\Core\Page\Controller\PageTypeController;
use Concrete\Core\Page\PageList;
use Application\Src\Page\DarumPageUtils;
use Concrete\Core\Page\Page;

class AbstractArticle extends PageTypeController
{
    protected $fetchedIDs = array();
    protected $categoryCID;
    protected $neighbourCategoryCID; //напр. для статей советы (и наооборот) в конкретном разделе

    public function view()
    {


        $c = Page::getCurrentPage();
        $this->categoryCID = $c->getCollectionParentID();
        $this->set('categoryCID', $this->categoryCID);

        /*aside more*/
        $pL1 = new PageList();
        DarumPageUtils::excludeGlobal($pL1->getQueryObject());
        $pL1->filterByParentID ( $this->categoryCID );
        $pL1->getQueryObject()->orderBy('RAND ()');
        $pL1->getQueryObject()->setMaxResults(static::MAX_MORE_RESULTS);
        $morePages = $pL1->getResults();
        DarumPageUtils::extendPages($morePages);

        $this->set('morePages', $morePages);

        /*aside neighbour*/
        $pL2 = new PageList();
        DarumPageUtils::excludeGlobal($pL2->getQueryObject());
        $pL2->filterByParentID ( $this->neighbourCategoryCID );
        $pL2->getQueryObject()->orderBy('RAND ()');
        $pL2->getQueryObject()->setMaxResults(static::MAX_NEIGHBOUR_RESULTS);
        $neighbourPages = $pL2->getResults();
        DarumPageUtils::extendPages($neighbourPages);

        $this->set('neighbourPages', $neighbourPages);

        /*aside neighbour category*/

        /*misc in bottom*/
        $pL4 = new PageList();
        DarumPageUtils::excludeGlobal($pL4->getQueryObject());
        $pL4->filterByParentID ( [ $this->categoryCID, $this->neighbourCategoryCID]);
        $pL4->getQueryObject()->orderBy('RAND ()');
        $pL4->getQueryObject()->setMaxResults(static::MAX_INTERESTING_RESULTS);
        $interestingPages = $pL4->getResults();
        DarumPageUtils::extendPages($interestingPages);

        $this->set('interestingPages', $interestingPages);

    }

}