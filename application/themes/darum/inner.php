<?php defined('C5_EXECUTE') or die("Access Denied."); ?>
<?php use Application\Src\Page\DarumPageUtils; ?>
<?php use Concrete\Core\Localization\Service\Date ?>
<?php $this->inc('elements/common/doctype.php'); ?>
<?php $this->inc('elements/common/head.php'); ?>
<body>
    <?php $this->inc('elements/common/ie8_warn.php'); ?>
    <div class="<?= $c->getPageWrapperClass() ?>">
        <?php $this->inc('elements/nav.php'); ?>
        <div class="l-container">
            <ul class="iconmenu">
                <li>
                    <a class="iconmenu-item" href="#">
                        <img src="<?php echo $this->getThemePath(); ?>/img/demo/iconmenu1.png" />
                        <span>
                            Изучайте советы при типовых ситуациях
                        </span>
                    </a>
                </li>
                <li>
                    <a class="iconmenu-item" href="#">
                        <img src="<?php echo $this->getThemePath(); ?>/img/demo/iconmenu2.png" />
                        <span>
                            Читайте тематические статьи психологов
                        </span>
                    </a>
                </li>
                <li>
                    <a class="iconmenu-item" href="#">
                        <img src="<?php echo $this->getThemePath(); ?>/img/demo/iconmenu3.png" />
                        <span>
                            Запишитесь на консультацию психолога
                        </span>
                    </a>
                </li>
                <li>
                    <a class="iconmenu-item" href="#">
                        <img src="<?php echo $this->getThemePath(); ?>/img/demo/iconmenu4.png" />
                        <span>
                            Ищите готовые ответы в форуме с психологами
                        </span>
                    </a>
                </li>
            </ul>
            <div class="l-twocolumns l-twocolumns-inner">
                    <article class="l-contentbar-allarticles right-bordered">
                        <h1 class="inner-h1">
                            <?php $a = new Area('ArticleHeader'); $a->display($c);?>
                        </h1>
                            <div class="article-text article-text-inner">
                                <?php
                                $a = new Area('MainContent');
                                $a->display($c);
                                ?>
                            </div>
                    </article>
                    <aside class="l-aside-allarticles">
                       <img style="margin-bottom:49px" src="<?php echo $this->getThemePath() ?>/img/demo/vk.jpg"/>
                        <div class="aside-list">
                            <div class="aside-list-header">
                                <h3>Интересные статьи</h3> 
                            </div>
                            <ul>
                                <li class="mini aside-list-item">
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
                                <li class="mini aside-list-item">
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
                    </aside>
            </div>
        </div>
        <?php $this->inc('elements/footer.php');?>
    </div>
    <?php $this->inc('elements/common/js.php');?>
    <?php Loader::element('footer_required') ?>    
</body>
<?php $this->inc('elements/common/doctype_bot.php');?>