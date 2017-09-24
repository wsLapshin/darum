<?php
$classLoader = new \Symfony\Component\ClassLoader\Psr4ClassLoader();
$classLoader->addPrefix('Application\\Src', DIR_APPLICATION . '/' . DIRNAME_CLASSES);
$classLoader->register();

return [
    'canonical-url' => '',
    'canonical-url-alternative' => '',
    'providers' => [
        'core_utility' => '\Application\Src\Utility\UtilityServiceProvider' 
    ],
];
