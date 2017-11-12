<?php //Opengraph variables
    use Application\Src\Page\DarumPageUtils;

    $articleTypes = [
        DarumPageUtils::ARTICLE_PARENTS_TYPE_HANDLER,
        DarumPageUtils::ARTICLE_RELATIONS_TYPE_HANDLER,
        DarumPageUtils::ARTICLE_STUDENTS_TYPE_HANDLER,
        DarumPageUtils::ADVICE_PARENTS_TYPE_HANDLER,
        DarumPageUtils::ADVICE_RELATIONS_TYPE_HANDLER,
        DarumPageUtils::ADVICE_STUDENTS_TYPE_HANDLER,
    ];
    $ogType = ( in_array($c->getPageTypeHandle(), $articleTypes )?'article':'website' );
    $ogTitle = ( !empty($c->getAttribute('og_title'))?$c->getAttribute('og_title'):$c->getAttribute('meta_title'));
    $ogDescription = ( !empty($c->getAttribute('og_description'))?$c->getAttribute('og_description'):$c->getAttribute('meta_description'));
    /** get Image */

    DarumPageUtils::extendPages($c);
    $ogImageWidth = ( !empty($c->getAttribute('og_image_width')) )?$c->getAttribute('og_image_width'):100;
    $ogImageHeight = ( !empty($c->getAttribute('og_image_height')) )?$c->getAttribute('og_image_height'):100;
    $ih = \Core::make('helper/image');
    $crop = true;
/*
    if( !empty($c->getAttribute('og_image')) ) {
        //Явно заданное изображение
        $ogImage = $c->getAttribute('og_image');
    } elseif ( null !== $c->mainImage ) {
        //Изображение статьи
        $ogImageObj = $c->mainImage;
        $thumb = $ih->getThumbnail($c->mainImage, $ogImageWidth, $ogImageHeight, $crop);
        $ogImage = $thumb->src;
    } else {
        //Логотип
        $ogImagePath = $this->getThemePath() . '/img/logo.png';
        $thumb = $ih->getThumbnail($ogImagePath, $ogImageWidth, $ogImageHeight, $crop);
        $ogImage = $thumb->src;
    }*/

    
?>
<head>
    <?php echo Loader::element('header_required'); ?>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta property="og:site_name" content="Центр развития Дарум"/>
    <meta property="og:locale" content="ru_RU" />
    <meta property="og:type" content="<?=$ogType?>" />
    <meta property="og:title" content="<?= $ogTitle?>" />
    <meta property="og:description" content="<?= $ogDescription?>" />
    <meta property="og:image" content="http://centr-razvitiy-darum.ru<?php echo $this->getThemePath() ?>/img/logo_social2.png" />
    <!--<meta property="og:image:width" content="<?= $ogImageWidth?>" />
    <meta property="og:image:height" content="<?= $ogImageHeight?>" />-->
    <!--<meta property="og:url" content="http://www.websiteaddress.com/article/" />-->
    
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <link href="<?php echo $view->getThemePath() ?>/css/screen.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="<?php echo $view->getThemePath() ?>/css/print.css" media="print" rel="stylesheet" type="text/css" />

    <link rel="stylesheet" href="<?php echo $view->getThemePath()?>/landing/css/main.min.css" type="text/css"/>

    <link rel="stylesheet" href="<?php echo $view->getThemePath()?>/js/vendor/jqueryui/jquery-ui.min.css" type="text/css"/>
    <link rel="stylesheet" href="<?php echo $view->getThemePath()?>/js/vendor/jqueryui/jquery-ui.theme.min.css" type="text/css"/>

    <!--[if IE]>
        <link href="/css/ie.css" media="screen, projection" rel="stylesheet" type="text/css" />
    <![endif]-->

    <!--[if lt IE 9]>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script>window.html5 || document.write('<script src="js/vendor/html5shiv.js"><\/script>')</script>
    <![endif]-->
</head>
