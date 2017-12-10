<?php defined('C5_EXECUTE') or die("Access Denied."); ?>
<?php use Application\Src\Page\DarumPageUtils; ?>
<?php use Concrete\Core\Localization\Service\Date; ?>
<?php $landingDir = $this->getThemePath() . '/landing'; ?>
<?php $this->inc('elements/head.php'); ?>
<body class="page">
<style>
.aside-list__image{margin-right:10px;}
</style>
    <?php $this->inc('elements/ie8_warn.php'); ?>
    <div class="<?= $c->getPageWrapperClass() ?>">
        <?php $this->inc('elements/header.php'); ?> 
        <div class="l-container page__container">
            <?php $this->inc('elements/nav.php'); ?>
            <div class="l-twocolumns page__block">
                <div class="page__column-9 page__preview-container">
                    <div class="intro link-block_white">
                        <div class="topimage intro__image" itemscope itemtype="http://schema.org/ImageObject">
                            <?php
                            $a = new Area('MainImage');
                            $a->display($c);
                            ?>
                        </div>
                        <div class="intro__content" itemscope itemtype="http://schema.org/NewsArticle">
                            
                                <?php $pageUtils = new DarumPageUtils($c); ?>
                                <?php $title = $pageUtils->getCategoryTitle(); ?> 
                                <h2 class="intro__category">
                                    <a class="<?= $title['css'] ?> link-block__brghtlink" href="<?= $title['href'] ?>" itemprop="genre">
                                        <?= $title['title'] ?>
                                    </a>
                                </h2>
                                <h1 class="intro__header" itemprop="name">
                                    <?= $c->getAttribute('meta_title'); ?>
                                </h1>
                                <a class="link-block__brghtlink intro__author" itemprop="author">
                                    Автор: Кравченко Полина
                                </a>
                                <meta itemprop="description" content="<?= strip_tags($c->getAttribute('introtext'));?>">
                                <span class="like intro__like">
                                    <?php/*
                                    $dateService = new Date();
                                    $prettyDate = $dateService->formatPrettyDate($c->getCollectionDateAdded());
                                    */?>
                                    <?// $prettyDate ?>
                                            <a href="" class="like__item like__item_intro link-block__brghtlink">
                                                <i class="fa fa-fw fa-heart"></i>54 
                                            </a>
                                            <a href="" class="like__item like__item_intro link-block__brghtlink">
                                                <i class="fa fa-fw fa-comment"></i>31
                                            </a>
                                </span>
                        </div>
                    </div>
                            <div class="social">
                                <div class="social-share" style="margin-right:0px;">
                                    <a href="#">
                                        <i class="fa fa-fw fa-vk"></i>
                                    </a>
                                    <a href="#">
                                        <i class="fa fa-fw fa-facebook"></i>
                                    </a>
                                    <a href="#">
                                        <i class="fa fa-fw fa-twitter"></i>
                                    </a>
                                </div>
                            </div>
                    <main role="main">
                        <div class="article-text">
                            <?php
                            $a = new Area('MainContent');
                            $a->display($c);
                            ?>
                        </div>
                        <footer>
                            <div class="social">
                                <div class="social-likes">
                                    <a rel="sidebar" class="addFav heart" href="">
                                        <i class="fa fa-heart"></i></a><!--
                                    --><span class="social-karma">
                                        <a href="#">
                                            <i class="fa fa-angle-down"></i>
                                        </a>
                                        <span>+&nbsp;8</span>
                                        <a href="#">
                                            <i class="fa fa-angle-up"></i>
                                        </a>
                                    </span>
                                </div>
                                <div class="social-share">
                                    <a href="#">
                                        <i class="fa fa-fw fa-vk"></i>
                                    </a>
                                    <a href="#">
                                        <i class="fa fa-fw fa-facebook"></i>
                                    </a>
                                    <a href="#">
                                        <i class="fa fa-fw fa-twitter"></i>
                                    </a>
                                </div>
                                <a href="#" class="social-rss">

                                    <span>Подпишитесь на нас</span>
                                    <i class="fa fa-envelope"></i>
                                </a>

                            </div>
                            <div class="article-links">
                                <h6>Другие статьи этого автора</h6> 
                                <ul>
                                    <li><a href="#">Как научить ребенка плавать</a></li>
                                    <li><a href="#">8 причин, чтобы перестать беспокоиться о капризах малыша</a></li>
                                    <li><a href="#">Готовим ребенка в школу</a></li>
                                </ul>
                            </div>
                            <!--<div class="comments">
                                <h3>Комментарии (4)</h3>
                                <div class="comment-block comment-send">
                                    <img alt="" class="avatar" src="<?php echo $view->getThemePath() ?>/img/demo/ava1.png"/>
                                    <div>
                                        <span class="name">Ваш комментарий</span>
                                    </div>
                                    <textarea name="comment"></textarea>
                                    <a href="#" class="btn btn-primary">
                                        Отправить
                                    </a>
                                </div>
                                <ul class="comment-list">
                                    <li class="comment-block">
                                        <img alt="" class="avatar" src="<?php echo $view->getThemePath() ?>/img/demo/ava1.png"/>
                                        <div>
                                            <span class="name">Чертыжанова Наталья</span>
                                            <span class="date">12 июля 2017</span>
                                            <span class="social-karma">
                                                <a href="#">
                                                    <i class="fa fa-angle-down"></i>
                                                </a>
                                                <span>+&nbsp;10</span>
                                                <a href="#">
                                                    <i class="fa fa-angle-up"></i>
                                                </a>
                                            </span>
                                        </div>
                                        <p>
                                            Родителям очень важно понимать разницу между типами мышления и не ошибиться в определении склада ума ребенка в дошкольном возрасте (5-7лет). 
                                        </p>
                                        <a href="#" class="comment-answer">
                                            Ответить  
                                        </a>
                                    </li>
                                    <li class="comment-block">
                                        <img alt="" class="avatar" src="<?php echo $view->getThemePath() ?>/img/demo/ava2.png"/>
                                        <div>
                                            <span class="name">Ангелочек</span>
                                            <span class="date">12 июля 2017</span>
                                            <span class="social-karma">
                                                <a href="#">
                                                    <i class="fa fa-angle-down"></i>
                                                </a>
                                                <span>+&nbsp;5</span>
                                                <a href="#">
                                                    <i class="fa fa-angle-up"></i>
                                                </a>
                                            </span>
                                        </div>
                                        <p>Вот так инфа!</p>
                                        <a href="#" class="comment-answer">
                                            Ответить  
                                        </a>
                                    </li>
                                    <li class="comment-block">
                                        <img alt="" class="avatar" src="<?php echo $view->getThemePath() ?>/img/demo/ava1.png"/>
                                        <div>
                                            <span class="name">Чертыжанова Наталья</span>
                                            <span class="date">12 июля 2017</span>
                                            <span class="social-karma">
                                                <a href="#">
                                                    <i class="fa fa-angle-down"></i>
                                                </a>
                                                <span>+&nbsp;8</span>
                                                <a href="#">
                                                    <i class="fa fa-angle-up"></i>
                                                </a>
                                            </span>
                                        </div>
                                        <p>
                                            Родителям очень важно понимать разницу между типами мышления и не ошибиться в определении склада ума ребенка в дошкольном возрасте (5-7лет). Исследование, результаты которого опубликованы в журнале Current Biology, было проведено в общенациональной детской больнице в Колумбусе штат
                                        </p>
                                        <a href="#" class="comment-answer">
                                            Ответить  
                                        </a>
                                        <ul class="comment-list">
                                            <li class="comment-block">

                                                <img alt="" class="avatar" src="<?php echo $view->getThemePath() ?>/img/demo/ava3.png"/>
                                                <div>
                                                    <span class="name">Помошников Павел</span>
                                                    <span class="date">12 июля 2017</span>
                                                    <span class="social-karma">
                                                        <a href="#">
                                                            <i class="fa fa-angle-down"></i>
                                                        </a>
                                                        <span>+&nbsp;3</span>
                                                        <a href="#">
                                                            <i class="fa fa-angle-up"></i>
                                                        </a>
                                                    </span>
                                                </div>
                                                <p>Родителям очень важно понимать разницу между типами мышления и ошибиться в определении склада ума ребенка в дошкольном</p>
                                                <a href="#" class="comment-answer">
                                                    Ответить  
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>-->
                        </footer>
                    </main>
                </div>
                <div class="page__column-3 page__preview-container page__last">
                    <div class="aside-banner aside-banner-middle" style="margin-top:0px;">
                    <a href="http://goo.gl/E8hQ3k" target="_blank">
                            <img style="max-width:100%" src="<?php echo $this->getThemePath() ?>/img/CPA/oadvice/1.gif"/>
                    </a>
                    </div>
                    <div class="aside-list aside-list_mini">
                        <div class="aside-list__header">
                             <?php if (in_array($categoryCID, [
                                 DarumPageUtils::ADVICE_PARENTS_CATEGORY_CID,
                                 DarumPageUtils::ADVICE_STUDENTS_CATEGORY_CID,
                                 DarumPageUtils::ADVICE_RELATIONS_CATEGORY_CID
                                 ])):?>
                            <h3 class="aside-list__header-inner">Ещё советы</h3> 
                            <?php elseif (in_array($categoryCID, [
                                 DarumPageUtils::ARTICLE_PARENTS_CATEGORY_CID,
                                 DarumPageUtils::ARTICLE_STUDENTS_CATEGORY_CID,
                                 DarumPageUtils::ARTICLE_RELATIONS_CATEGORY_CID
                                 ])):?>
                            <h3 class="aside-list__header-inner">Ещё статьи</h3> 
                            <?php else:?>
                            <h3 class="aside-list__header-inner">Ещё</h3> 
                            <?php endif;?>
                        </div>
                        <div class="aside-list__content" style="visibility:visible;">
                            <?php foreach( $morePages as $p ):?>
                            <?php $pageUtils = new DarumPageUtils($p);?>
                            <div class="aside-list__item">
                                <div class="aside-list__image" itemscope itemtype="http://schema.org/ImageObject">
                                    <a href="<?= $p->getCollectionPath() ?>">
                                    <?php if( !empty($p->mainImage)) :?>
                                        <?php echo $pageUtils->cropImage($p->mainImage, 72, 72, $p->altMainImage); ?>
                                    <?php endif;?>
                                    </a>
                                </div>
                                <div class="aside-list__text link-block" itemscope itemtype="http://schema.org/NewsArticle">
                                        <a href="<?= $p->getCollectionPath()?>" itemprop="description">
                                            <?php echo mb_substr($p->getAttribute('introtext'), 0, 85) . '...';?>
                                        </a>
                                </div>
                            </div>
                            <?php endforeach;?>
                        </div>
                    </div>
                    <div class="aside-banner aside-banner-middle">
                    <a target="_blank" href="http://goo.gl/d6Am5B">
                            <img style="max-width:100%" src="<?php echo $this->getThemePath() ?>/img/CPA/oadvice/2.gif"/>
                    </a>
                    </div>

                    <div class="aside-list aside-list_mini">
                        <div class="aside-list__header">
                            <?php if (in_array($categoryCID, [
                                 DarumPageUtils::ADVICE_PARENTS_CATEGORY_CID,
                                 DarumPageUtils::ADVICE_STUDENTS_CATEGORY_CID,
                                 DarumPageUtils::ADVICE_RELATIONS_CATEGORY_CID
                                 ])):?>
                            <h3 class="aside-list__header-inner">Статьи от психологов</h3> 
                            <?php elseif (in_array($categoryCID, [
                                 DarumPageUtils::ARTICLE_PARENTS_CATEGORY_CID,
                                 DarumPageUtils::ARTICLE_STUDENTS_CATEGORY_CID,
                                 DarumPageUtils::ARTICLE_RELATIONS_CATEGORY_CID
                                 ])):?>
                            <h3 class="aside-list__header-inner">Советы на все времена</h3> 
                            <?php else:?>
                            <h3 class="aside-list__header-inner">Ещё</h3> 
                            <?php endif;?>
                        </div>
                        <div class="aside-list__content" style="visibility:visible;">
                            <?php foreach( $neighbourPages as $p ):?>
                            <?php $pageUtils = new DarumPageUtils($p);?>
                            <div class="aside-list__item">
                                <div class="aside-list__image" itemscope itemtype="http://schema.org/ImageObject">
                                    <a href="<?= $p->getCollectionPath() ?>">
                                    <?php if( !empty($p->mainImage)) :?>
                                        <?php echo $pageUtils->cropImage($p->mainImage, 72, 72, $p->altMainImage); ?>
                                    <?php endif;?>
                                    </a>
                                </div>
                                <div class="aside-list__text link-block" itemscope itemtype="http://schema.org/NewsArticle">
                                        <a href="<?= $p->getCollectionPath()?>" itemprop="description">
                                            <?php echo mb_substr($p->getAttribute('introtext'), 0, 85) . '...';?>
                                        </a>
                                    <span class="like intro__like">
                                        <?php/*
                                        $dateService = new Date();
                                        $prettyDate = $dateService->formatPrettyDate($c->getCollectionDateAdded());
                                        */?>
                                        <?// $prettyDate ?>
                                                <a href="" class="like__item like__item_intro link-block__brghtlink">
                                                    <i class="fa fa-fw fa-heart"></i>54 
                                                </a>
                                                <a href="" class="like__item like__item_intro link-block__brghtlink">
                                                    <i class="fa fa-fw fa-comment"></i>31
                                                </a>
                                    </span>
                                </div>
                            </div>
                            <?php endforeach;?>
                        </div>
                    </div>
                    <div class="aside-banner aside-banner-middle">
                    <a target="_blank" href="http://kshop2.biz/e9Eu9s/">
                            <img style="max-width:100%" src="<?php echo $this->getThemePath() ?>/img/CPA/oadvice/4.jpg"/>
                    </a>
                    </div>
                    <!--<div class="aside-list">
                        <div class="aside-list-header">
                            <h3>Интересные советы</h3> 
                        </div>
                        <ul>
                            <li class="aside-list-item">
                                <img src="<?php echo$this->getThemePath() ?>/img/demo/asidethumbnail1.jpg"/>
                                <div class="introtext">
                                    <p>
                                        <a href="#">
                                            Жертвы тайминга: Екатерина Попова о том, зачем отличать свои желания от чужих
                                        </a>
                                    </p>
                                    <span class="intro-likes intro-likes-list">
                                        16 июля <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                                    </span>
                                </div>
                            </li>
                            <li class="aside-list-item">
                                <img src="<?php echo $this->getThemePath() ?>/img/demo/asidethumbnail2.jpg"/>
                                <div class="introtext">
                                    <p>
                                        <a href="#">
                                            Как правильно ссроиться? Рассказывает Михаил Лабковский
                                        </a>
                                    </p>
                                    <span class="intro-likes intro-likes-list">
                                        16 июля <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                                    </span>
                                </div>
                            </li>
                        </ul>
                    </div>-->
                </div>
            </div>
            <!--<div class="topadvice">
                <div class="topadvice-inner">
                    <h2>ТОП 10 полезных советов,<br/> которые стоит знать каждому родителю</h2>
                    <div class="top10carousel">
                        <ul class="slides">
                            <li>
                                <img src="<?php echo $this->getThemePath() ?>/img/demo/top10thumbnail1.jpg"/>
                                <div class="introtext">
                                    <p>
                                        <a href="#">
                                            Как быстро остановить плач ребенка
                                        </a>
                                    </p>
                                    <span class="intro-likes intro-likes-list">
                                        16 июля <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                                    </span>
                                </div>
                            </li>
                            <li>
                                <img src="<?php echo $this->getThemePath() ?>/img/demo/top10thumbnail2.jpg"/>
                                <div class="introtext">
                                    <p>
                                        <a href="#">
                                            Как научить ребенка выговаривать
                                        </a>
                                    </p>
                                    <span class="intro-likes intro-likes-list">
                                        16 июля <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                                    </span>
                                </div>
                            </li>
                            <li>
                                <img src="<?php echo $this->getThemePath() ?>/img/demo/top10thumbnail3.jpg"/>
                                <div class="introtext">
                                    <p>
                                        <a href="#">
                                            Как оградить ребенка от опасности на улице
                                        </a>
                                    </p>
                                    <span class="intro-likes intro-likes-list">
                                        16 июля <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                                    </span>
                                </div>
                            </li>
                            <li>
                                <img src="<?php echo $this->getThemePath() ?>/img/demo/top10thumbnail4.jpg"/>
                                <div class="introtext">
                                    <p>
                                        <a href="#">
                                            Учим цифры с помощью игр
                                        </a>
                                    </p>
                                    <span class="intro-likes intro-likes-list">
                                        16 июля <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                                    </span>
                                </div>
                            </li>
                            <li>
                                <img src="<?php echo $this->getThemePath() ?>/img/demo/top10thumbnail1.jpg"/>
                                <div class="introtext">
                                    <p>
                                        <a href="#">
                                            Как быстро остановить плач ребенка
                                        </a>
                                    </p>
                                    <span class="intro-likes intro-likes-list">
                                        16 июля <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                                    </span>
                                </div>
                            </li>
                            <li>
                                <img src="<?php echo $this->getThemePath() ?>/img/demo/top10thumbnail2.jpg"/>
                                <div class="introtext">
                                    <p>
                                        <a href="#">
                                            Как научить ребенка выговаривать
                                        </a>
                                    </p>
                                    <span class="intro-likes intro-likes-list">
                                        16 июля <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                                    </span>
                                </div>
                            </li>
                            <li>
                                <img src="<?php echo $this->getThemePath() ?>/img/demo/top10thumbnail3.jpg"/>
                                <div class="introtext">
                                    <p>
                                        <a href="#">
                                            Как оградить ребенка от опасности на улице
                                        </a>
                                    </p>
                                    <span class="intro-likes intro-likes-list">
                                        16 июля <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                                    </span>
                                </div>
                            </li>
                            <li>
                                <img src="<?php echo $this->getThemePath() ?>/img/demo/top10thumbnail4.jpg"/>
                                <div class="introtext">
                                    <p>
                                        <a href="#">
                                            Учим цифры с помощью игр
                                        </a>
                                    </p>
                                    <span class="intro-likes intro-likes-list">
                                        16 июля <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                                    </span>
                                </div>
                            </li>
                        </ul> 
                    </div> 
                </div>
            </div>-->
            <div class="l-moreadvice page__block">
                <span class="page__header">Интересно почитать</span>
                <ul class="moreadvice-list page__column-9 page__preview-container">
                    <?php foreach ( $interestingPages as $p):?>
                    <?php $pageUtils = new DarumPageUtils($p);?>
                    <li class="page__preview preview link-block">
                        <div itemscope itemtype="http://schema.org/ImageObject">
                        <a class="preview__image" href="<?= $p->getCollectionPath() ?>">
                        <?php if( !empty($p->mainImage)) :?>
                            <?php echo $pageUtils->cropImage($p->mainImage, 262, 179, $p->altMainImage); ?>
                        <?php endif;?>
                        <?php $title = $pageUtils->getCategoryTitle();?>
                        </a>
                        </div>
                        <div class="preview__content link-block" itemscope itemtype="http://schema.org/NewsArticle">
                            <h2 class="preview__category">
                                <a class="<?=$title['css']?> link-block__brghtlink" href="<?=$title['href']?>" itemprop="genre">
                                    <?=$title['title']?>
                                </a>
                            </h2>
                            <h3 class="preview__header">
                                <a class="link-block__normlink" href="<?= $p->getCollectionPath()?>" itemprop="name">
                                    <?= $p->getAttribute('meta_title')?>
                                </a>
                            </h3>
                            <meta itemprop="description" content="<?= strip_tags($p->getAttribute('introtext'));?>">
                                    <span class="like intro__like">
                                        <?php/*
                                        $dateService = new Date();
                                        $prettyDate = $dateService->formatPrettyDate($c->getCollectionDateAdded());
                                        */?>
                                        <?// $prettyDate ?>
                                                <a href="" class="like__item like__item_intro link-block__brghtlink">
                                                    <i class="fa fa-fw fa-heart"></i>54 
                                                </a>
                                                <a href="" class="like__item like__item_intro link-block__brghtlink">
                                                    <i class="fa fa-fw fa-comment"></i>31
                                                </a>
                                    </span>
                        </div>
                    </li>
                    <?php endforeach;?>
                </ul>
                <div class="moreadvice-banner page__column-3 page__preview-container page__last">
                    <div class="aside-banner aside-banner-middle">
                        <img style="max-width:100%" src="/application/themes/darum/img/demo/vk.jpg">
                    </div>
                    <div class="aside-banner aside-banner-middle">
                    <a target="_blank" href="http://kshop2.biz/NmNHDQ/">
                        <img style="max-width:100%" src="/application/themes/darum/img/CPA/oadvice/3.jpeg" />
                    </a>
                    </div>
                </div> 
            </div>
        </div>
        <?php $this->inc('elements/footer.php'); ?>
    </div>
    <?php $this->inc('elements/js.php'); ?>
    <?php Loader::element('footer_required') ?>

</body>
</html>
