<?php
namespace Application\Controller\PageType;

use Application\Src\Page\DarumPageUtils;
use Concrete\Core\Page\Page;

use Application\Controller\PageType\AbstractArticle;

class ArticleParents extends AbstractArticle 
{
    const MAX_MORE_RESULTS  = 5; //сайдбар, еще из того же раздела
    const MAX_NEIGHBOUR_RESULTS = 3; //сайдбар из соседнего раздела (например советы, если сейчас в статье)
    const MAX_INTERESTING_RESULTS  = 9;

    public function __construct(Page $p)
    {
       parent::__construct($p);
       $this->neighbourCategoryCID = DarumPageUtils::ADVICE_PARENTS_CATEGORY_CID; 
    }
    
}
