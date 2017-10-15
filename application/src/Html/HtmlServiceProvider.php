<?php
namespace Application\Src\Html;

use Concrete\Core\Foundation\Service\Provider as ServiceProvider;

class HtmlServiceProvider extends ServiceProvider
{
    public function register()
    {
        $singletons = array(
            'helper/html' => '\Concrete\Core\Html\Service\Html',
            'helper/lightbox' => '\Concrete\Core\Html\Service\Lightbox',
            'helper/navigation' => '\Concrete\Core\Html\Service\Navigation',
            'helper/seo' => '\Concrete\Core\Html\Service\Seo',
        );

        foreach ($singletons as $key => $value) {
            $this->app->singleton($key, $value);
        }

        //changed vs core ...
        $this->app->bind('html/image', '\Application\Src\Html\Image');
    }
}
