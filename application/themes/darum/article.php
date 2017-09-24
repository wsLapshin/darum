<?php defined('C5_EXECUTE') or die("Access Denied."); ?>

<?php use Application\Src\Page\DarumPageUtils; ?>
<?php use Concrete\Core\Localization\Service\Date?>
<?php $this->inc('elements/common/doctype.php'); ?>
<?php $this->inc('elements/common/head.php'); ?>
<body>
    <?php $this->inc('elements/common/ie8_warn.php'); ?>
    <div class="<?= $c->getPageWrapperClass() ?>">
        <?php $this->inc('elements/nav.php');?>
        <div class="l-container">
            <div class="l-twocolumns">
                <article>
                    <div class="topimage">
                        <?php $a = new Area('MainImage'); $a->display($c);?>
                    </div>
                    <header class="article-header">
                        <div class="intro intro-article">
                            <?php $pageUtils = new DarumPageUtils($c);?>
                            <?php $title = $pageUtils->getCategoryTitle(); ?> 
                            <h2 class="intro-category">
                                <a class="<?=$title['css']?>" href="<?=$title['href']?>">
                                     <?=$title['title']?>
                                </a>
                            </h2>
                            <h1 class="intro-header">
                                <?= $c->getAttribute('meta_title'); ?>
                            </h1>
                            <span class="intro-author">
                                Автор: Кравченко Полина
                            </span> 
                            <span class="intro-likes">
                                <?php 
                                            $dateService = new Date();
                                            $prettyDate = $dateService->formatPrettyDate( $c->getCollectionDateAdded()); ?>
                                 <?= $prettyDate ?><i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
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
                            <?php $a = new Area('MainContent'); $a->display($c);?>
                        </div>
                        <footer>
                            <div class="social">
                                <div class="social-likes">
                                    <a class="heart" href="#">
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
                <aside></aside>
            </div>
            <div class="topadvice"></div>
            <div class="l-twocolumns">
                <div class="l-contentbar">
                </div>
                <aside></aside>
            </div>
        </div>
        <?php $this->inc('elements/footer.php');?>
    </div>
    <?php $this->inc('elements/common/js.php');?>
    <?php Loader::element('footer_required') ?>    
</body>
<?php $this->inc('elements/common/doctype_bot.php');?>
