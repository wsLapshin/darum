<?php
namespace Application\Controller\PageType;

use Application\Controller\PageType\AbstractContainer;
use Concrete\Core\Page\Page;
use Application\Src\Page\DarumPageUtils;

class RelationshipAdvices extends AbstractContainer
{
    const MAX_NEW_RESULTS = 7;
    const MAX_POPULAR_RESULTS = 5;
    const MAX_COMMENTED_RESULTS = 5;
    const MAX_INTERESTING_RESULTS = 6;

    public function __construct(Page $c)
    {
        $this->categoryCID = DarumPageUtils::ADVICE_RELATIONS_CATEGORY_CID;
        $this->neighbourCategoryCID = DarumPageUtils::ARTICLE_RELATIONS_CATEGORY_CID;
        parent::__construct($c);
    }
    
}
