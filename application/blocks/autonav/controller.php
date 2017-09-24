<?php
namespace Application\Block\Autonav;

use Concrete\Block\Autonav\Controller as BaseBlockController;

class Controller extends BaseBlockController
{
    public function view()
    {
        $this->set('test', 'Hello world !');
    }
}
