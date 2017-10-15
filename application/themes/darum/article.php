<?php defined('C5_EXECUTE') or die("Access Denied."); ?>

<?php

use Application\Src\Page\DarumPageUtils; ?>
<?php

use Concrete\Core\Localization\Service\Date ?>
<?php $this->inc('elements/common/doctype.php'); ?>
<?php $this->inc('elements/common/head.php'); ?>
<body>
    <?php $this->inc('elements/common/ie8_warn.php'); ?>
    <div class="<?= $c->getPageWrapperClass() ?>">
        <?php $this->inc('elements/nav.php'); ?>
        <div class="l-container">
            <div class="l-twocolumns">
                <article class="right-bordered">
                    <div class="topimage">
                        <?php
                        $a = new Area('MainImage');
                        $a->display($c);
                        ?>
                    </div>
                    <header class="article-header">
                        <div class="intro intro-article">
                            <?php $pageUtils = new DarumPageUtils($c); ?>
                            <?php $title = $pageUtils->getCategoryTitle(); ?> 
                            <h2 class="intro-category">
                                <a class="<?= $title['css'] ?>" href="<?= $title['href'] ?>">
                                    <?= $title['title'] ?>
                                </a>
                            </h2>
                            <h1 class="intro-header">
                                <?= $c->getAttribute('meta_title'); ?>
                            </h1>
                            <span class="intro-author">
                                Автор: Кравченко Полина
                            </span> 
                            <span class="intro-likes">
                                <?php/*
                                $dateService = new Date();
                                $prettyDate = $dateService->formatPrettyDate($c->getCollectionDateAdded());
                                */?>
                                <?php// $prettyDate ?><i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                            </span>
                        </div>
                        <div class="social">
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
                        </div>
                    </header>
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
                            <div class="comments">
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
                            </div>
                        </footer>
                    </main>
                </article>
                <aside>
                    <img src="<?php echo $this->getThemePath() ?>/img/demo/garnier.jpg"/>
                    <div class="aside-list">
                        <div class="aside-list-header">
                            <h3>Интересные статьи</h3> 
                        </div>
                        <ul>
                            <li class="aside-list-item mini">
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
                            <li class="aside-list-item mini">
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
                            <li class="mini aside-list-item">
                                <img src="<?php echo $this->getThemePath() ?>/img/demo/asidethumbnail3.jpg"/>
                                <div class="introtext">
                                    <p>
                                        <a href="#">
                                            За что мы любим наших мам - откровения взрослых девочек.
                                        </a>
                                    </p>
                                    <span class="intro-likes intro-likes-list">
                                        16 июля <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                                    </span>
                                </div>
                            </li>
                            <li class="mini aside-list-item">
                                <img src="<?php echo $this->getThemePath() ?>/img/demo/asidethumbnail4.jpg"/>
                                <div class="introtext">
                                    <p>
                                        <a href="#">
                                            Уверенность в результате работы над ошибками Лабковский
                                        </a>
                                    </p>
                                    <span class="intro-likes intro-likes-list">
                                        16 июля <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                                    </span>
                                </div>
                            </li>
                            <li class="mini aside-list-item">
                                <img src="<?php echo $this->getThemePath() ?>/img/demo/asidethumbnail5.jpg"/>
                                <div class="introtext">
                                    <p>
                                        <a href="#">
                                            Как правильно ссориться? Рассказывает Михаил Лабковский
                                        </a>
                                    </p>
                                    <span class="intro-likes intro-likes-list">
                                        16 июля <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                                    </span>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <img class="aside-banner-middle" src="<?php echo $this->getThemePath() ?>/img/demo/makeup.jpg"/>

                    <div class="aside-list">
                        <div class="aside-list-header">
                            <h3>Советы на все времена</h3> 
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
                            <li class="aside-list-item">
                                <img src="<?php echo $this->getThemePath() ?>/img/demo/asidethumbnail3.jpg"/>
                                <div class="introtext">
                                    <p>
                                        <a href="#">
                                            За что мы любим наших мам - откровения взрослых девочек.
                                        </a>
                                    </p>
                                    <span class="intro-likes intro-likes-list">
                                        16 июля <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                                    </span>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <img class="aside-banner-bottom" src="<?php echo $this->getThemePath() ?>/img/demo/divanru.jpg"/>
                    <div class="aside-list">
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
                    </div>
                </aside>
            </div>
            <div class="topadvice">
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
            </div>
            <div class="l-moreadvice">
                <h2>Еще советы родителям</h2>
                <ul class="moreadvice-list">
                    <li class="moreadvice-one moreadvice-listitem right-bordered">
                        <img src="<?php echo $this->getThemePath() ?>/img/demo/moreadvice1.jpg"/>
                        <h2 class="subcategory-header">
                            <a class="blue" href="#">
                                Советы родителям    
                            </a>
                        </h2>
                        <h3 class="moreadvice-listitem-header">
                            <a href="#" >
                                ТОП-10 лучших советов, для тех, кто хочет влюбиться
                            </a>
                        </h3>
                        <span class="intro-likes intro-likes-list">
                            <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                        </span>
                    </li>
                    <li class="moreadvice-one moreadvice-listitem right-bordered">
                        <img src="<?php echo $this->getThemePath() ?>/img/demo/moreadvice2.jpg"/>
                        <h2 class="subcategory-header">
                            <a class="blue" href="#">
                                Советы родителям    
                            </a>
                        </h2>
                        <h3 class="moreadvice-listitem-header">
                            <a href="#" >
                                ТОП-10 лучших советов, для тех, кто хочет влюбиться
                            </a>
                        </h3>
                        <span class="intro-likes intro-likes-list">
                            <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                        </span>
                    </li>
                    <li class="moreadvice-one moreadvice-listitem right-bordered third">
                        <img src="<?php echo $this->getThemePath() ?>/img/demo/moreadvice3.jpg"/>
                        <h2 class="subcategory-header">
                            <a class="blue" href="#">
                                Советы родителям    
                            </a>
                        </h2>
                        <h3 class="moreadvice-listitem-header">
                            <a href="#" >
                                От учителя дефектолога (учим ребенка говорить!)
                            </a>
                        </h3>
                        <span class="intro-likes intro-likes-list">
                            <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                        </span>
                    </li>
                    <li class="moreadvice-one moreadvice-listitem right-bordered">
                        <img src="<?php echo $this->getThemePath() ?>/img/demo/moreadvice4.jpg"/>
                        <h2 class="subcategory-header">
                            <a class="blue" href="#">
                                Советы родителям    
                            </a>
                        </h2>
                        <h3 class="moreadvice-listitem-header">
                            <a href="#" >
                                ТОП-10 лучших советов, для тех, кто хочет влюбиться
                            </a>
                        </h3>
                        <span class="intro-likes intro-likes-list">
                            <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                        </span>
                    </li>
                    <li class="moreadvice-one moreadvice-listitem right-bordered">
                        <img src="<?php echo $this->getThemePath() ?>/img/demo/moreadvice5.jpg"/>
                        <h2 class="subcategory-header">
                            <a class="blue" href="#">
                                Советы родителям    
                            </a>
                        </h2>
                        <h3 class="moreadvice-listitem-header">
                            <a href="#" >
                                ТОП-10 лучших советов, для тех, кто хочет влюбиться
                            </a>
                        </h3>
                        <span class="intro-likes intro-likes-list">
                            <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                        </span>
                    </li>
                    <li class="moreadvice-one moreadvice-listitem right-bordered third">
                        <img src="<?php echo $this->getThemePath() ?>/img/demo/moreadvice6.jpg"/>
                        <h2 class="subcategory-header">
                            <a class="blue" href="#">
                                Советы родителям    
                            </a>
                        </h2>
                        <h3 class="moreadvice-listitem-header">
                            <a href="#" >
                                От учителя дефектолога (учим ребенка говорить!)
                            </a>
                        </h3>
                        <span class="intro-likes intro-likes-list">
                            <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                        </span>
                    </li>
                </ul>
                <ul class="moreadvice-banner">
                    <li class="moreadvice-one">
                        <img src="<?php echo $this->getThemePath()?>/img/demo/vk.jpg"
                    </li>
                    <li class="moreadvice-one">
                        <img src="<?php echo $this->getThemePath()?>/img/demo/cklass.png"
                    </li>
                </ul> 
            </div>
        </div>
        <?php $this->inc('elements/footer.php'); ?>
    </div>
    <?php $this->inc('elements/common/js.php'); ?>
    <?php Loader::element('footer_required') ?>    
    <!--<script type="text/javascript" src="<?php echo $this->getThemePath() ?>/js/vendor/jquery.flexslider-min.js" ></script>
    <script type="text/javascript">
        (function () {

            // store the slider in a local variable
            var $window = $(window),
                    flexslider = {vars: {}};

            // tiny helper function to add breakpoints
            function getGridSize() {
                return (window.innerWidth < 600) ? 2 :
                        (window.innerWidth < 900) ? 3 : 4;
            }

            $(function () {
                SyntaxHighlighter.all();
            });

            $window.load(function () {
                $('.top10carousel').flexslider({
                    controlNav: false,
                    directionNav: true,
                    prevText: "",
                    nextText: "",
                    animation: "slide",
                    animationLoop: false,
                    itemWidth: 263,
                    itemMargin: 0,
                    start: function(){
                        $('.top10carousel').addClass('active');
                    },
                    minItems: getGridSize(), // use function to pull in initial value
                    maxItems: getGridSize() // use function to pull in initial value
                });
            });

            // check grid size on resize event
            $window.resize(function () {
                var gridSize = getGridSize();

                flexslider.vars.minItems = gridSize;
                flexslider.vars.maxItems = gridSize;
            });
        }());
    </script>-->
</body>
<?php $this->inc('elements/common/doctype_bot.php'); ?>
