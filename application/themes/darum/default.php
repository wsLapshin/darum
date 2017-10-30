<?php defined('C5_EXECUTE') or die("Access Denied."); ?>
<?php use Application\Src\Page\DarumPageUtils; ?>
<?php $landingDir = $this->getThemePath() . '/landing'; ?>
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
            <!--*1-->
            <span class="allarticles-h1 allarticles-h1-maintop">Ново></span>
            <div class="l-maintop">
                <ul class="previewlist">
                    <?php foreach( $newPages as $p ):?>
                    <?php $pageUtils = new DarumPageUtils($p);?>
                    <li class="previewlist-one">
                        <?php if( !empty($p->mainImage)) :?>
                            <?php echo $pageUtils->cropImage($p->mainImage, 263, 180, $p->altMainImage); ?>
                        <?php endif;?>                              
                        <div class="previewlist-content">
                            <?php $title = $pageUtils->getCategoryTitle()?>
                            <h3 class="subcategory-header">
                                <a class="<?=$title['css']?>" href="<?=$title['href']?>">
                                    <?= $title['title']?> 
                                </a>
                            </h3>
                            <h2 class="previewlist-content-header">
                                <a href="<?= $p->getCollectionPath()?>">
                                    <?= $p->getAttribute('meta_title')?>
                                </a>
                            </h2>

                            <span class="intro-likes intro-likes-previewlist">
                                <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                            </span>
                        </div>
                    </li>
                    <?php endforeach;?>
                </ul>
                <div class="preview-main-container">
                    <ul class="flipster__container">
                        <?php foreach( $mainNewPage as $p ):?>
                        <?php $pageUtils = new DarumPageUtils($p);?>
                        <li>
                            <div class="preview-main">
                               <?php if( !empty($p->mainImage)) :?>
                                    <?php echo $pageUtils->cropImage($p->mainImage, 555, 420, $p->altMainImage); ?>
                                <?php endif;?>

                                <?php $title = $pageUtils->getCategoryTitle();?>
                                <div class="intro <?= $title['css'] ?>">

                                    <h3 class="intro-category">
                                        <a href="<?= $title['href']?>">
                                            <?= $title['title']?> 
                                        </a>
                                    </h3>
                                    <h2 class="intro-header">
                                        <a style="color:#fff" href="<?= $p->getCollectionPath()?>">
                                            <?= $p->getAttribute('meta_title')?>
                                        </a>
                                    </h2>
                                    <p class="intro-text">
                                       <?php echo mb_substr($p->getAttribute('introtext'), 0, 100) . '...';?>
                                    </p>
<!--                                    <span class="intro-author">
                                        Автор: Кравченко Полина
                                    </span> -->
                                    <span class="intro-likes">
                                       <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                                    </span>
                                </div>
                            </div>
                        </li>
                        <?php endforeach;?>
                    </ul>
                </div>
                <div class="l-aside-allarticles">
                    <div class="aside-list" style="margin-top:17px;">
                        <div class="aside-list-header">
                            <h3>Новые советы</h3> 
                        </div>
                        <ul>
                            <?php foreach( $newAdvicePages as $p ):?>
                            <?php $pageUtils = new DarumPageUtils($p);?>
                            <li class="aside-list-item mini">
                                <?php if( !empty($p->mainImage)) :?>
                                    <?php echo $pageUtils->cropImage($p->mainImage, 72, 72, $p->altMainImage); ?>
                                <?php endif;?>
                                <div class="introtext">
                                    <p>
                                        <a href="<?= $p->getCollectionPath()?>">
                                            <?php echo mb_substr($p->getAttribute('introtext'), 0, 50) . '...';?>
                                        </a>
                                    </p>
                                </div>
                            </li>
                            <?php endforeach;?>
                        </ul>
                    </div>
                </div>
            </div>

            <!--*2-->
            <span class="allarticles-h1 allarticles-h1-mainarticles">Популярные Стат� </span>
            <div class="l-mainarticles">
                <div class="preview-main-container">
                    <ul class="flipster__container">
                        <?php foreach( $mainPopularArticlePage as $p ):?>
                        <?php $pageUtils = new DarumPageUtils($p);?>
                        <li>
                            <div class="preview-main">
                                <?php if( !empty($p->mainImage)) :?>
                                    <?php echo $pageUtils->cropImage($p->mainImage, 555, 420, $p->altMainImage); ?>
                                <?php endif;?>
                                <?php $title = $pageUtils->getCategoryTitle();?>
                                <div class="intro <?= $title['css'] ?>">
                                    <h3 class="intro-category">
                                        <a href="<?= $title['href']?>">
                                            <?= $title['title']?> 
                                        </a>
                                    </h3>
                                    <h2 class="intro-header">
                                        <a style="color:#fff" href="<?= $p->getCollectionPath()?>">
                                            <?= $p->getAttribute('meta_title')?>
                                        </a>
                                    </h2>
                                    <p class="intro-text">
                                         <?php echo mb_substr($p->getAttribute('introtext'), 0, 100) . '...';?>
                                    </p>
<!--                                    <span class="intro-author">
                                        Автор: Кравченко Полина
                                    </span> -->
                                    <span class="intro-likes">
                                        <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                                    </span>
                                </div>
                            </div>
                        </li>
                        <?php endforeach;?>
                    </ul>
                </div>
                <ul class="previewlist">
                    <?php foreach( $popularArticlePages as $p ):?>
                    <?php $pageUtils = new DarumPageUtils($p);?>
                    <li class="previewlist-one">
                        <?php if( !empty($p->mainImage)) :?>
                            <?php echo $pageUtils->cropImage($p->mainImage, 263, 180, $p->altMainImage); ?>
                        <?php endif;?>                              
                        <div class="previewlist-content">
                            <?php $title = $pageUtils->getCategoryTitle()?>
                            <h3 class="subcategory-header">
                                <a class="<?=$title['css']?>" href="<?=$title['href']?>">
                                    <?= $title['title']?> 
                                </a>
                            </h3>
                            <h2 class="previewlist-content-header">
                                <a href="<?= $p->getCollectionPath()?>">
                                    <?= $p->getAttribute('meta_title')?>
                                </a>
                            </h2>

                            <span class="intro-likes intro-likes-previewlist">
                                <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                            </span>
                        </div>
                    </li>
                    <?php endforeach;?>
                    <li class="previewlist-one">
                        <img alt="" src="<?php echo $this->getThemePath() ?>/img/demo/cklass.png">
                    </li>
                </ul>
            </div>

            <!--*3-->
            <span class="allarticles-h1 allarticles-h1-mainadvices">Советы</span>
            <div class="l-mainadvices">
                <ul class="previewlist">
                    <?php foreach( $popularAdvicePages as $p ):?>
                    <?php $pageUtils = new DarumPageUtils($p);?>
                    <li class="previewlist-one">
                        <?php if( !empty($p->mainImage)) :?>
                            <?php echo $pageUtils->cropImage($p->mainImage, 263, 180, $p->altMainImage); ?>
                        <?php endif;?>                              
                        <div class="previewlist-content">
                            <?php $title = $pageUtils->getCategoryTitle()?>
                            <h3 class="subcategory-header">
                                <a class="<?=$title['css']?>" href="<?=$title['href']?>">
                                    <?= $title['title']?> 
                                </a>
                            </h3>
                            <h2 class="previewlist-content-header">
                                <a href="<?= $p->getCollectionPath()?>">
                                    <?= $p->getAttribute('meta_title')?>
                                </a>
                            </h2>

                            <span class="intro-likes intro-likes-previewlist">
                                <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                            </span>
                        </div>
                    </li>
                    <?php endforeach;?>
                    <li class="previewlist-one">
                        <img alt="" src="<?php echo $this->getThemePath() ?>/img/demo/cklass.png">                                
                    </li>
                </ul>

                <div class="preview-main-container">
                    <ul class="flipster__container">
                        <?php foreach( $mainPopularAdvicePage as $p ):?>
                        <?php $pageUtils = new DarumPageUtils($p);?>
                        <li>
                            <div class="preview-main">
                                <?php if( !empty($p->mainImage)) :?>
                                    <?php echo $pageUtils->cropImage($p->mainImage, 555, 420, $p->altMainImage); ?>
                                <?php endif;?>
                                <?php $title = $pageUtils->getCategoryTitle();?>
                                <div class="intro <?= $title['css'] ?>">
                                    <h3 class="intro-category">
                                        <a href="<?= $title['href']?>">
                                            <?= $title['title']?> 
                                        </a>
                                    </h3>
                                    <h2 class="intro-header">
                                        <a style="color:#fff" href="<?= $p->getCollectionPath()?>">
                                            <?= $p->getAttribute('meta_title')?>
                                        </a>
                                    </h2>
                                    <p class="intro-text">
                                         <?php echo mb_substr($p->getAttribute('introtext'), 0, 100) . '...';?>
                                    </p>
<!--                                    <span class="intro-author">
                                        Автор: Кравченко Полина
                                    </span> -->
                                    <span class="intro-likes">
                                        <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                                    </span>
                                </div>
                            </div>
                        </li>
                        <?php endforeach;?>
                    </ul>
                </div>
            </div>
        </div>
        <div class="mainbanner">
            <div class="mainbanner-img">
                <img src="<?php echo $this->getThemePath() ?>/img/demo/mainbanner.jpg" >
            </div>
            <div class="mainbanner-overlay">
                <span class="mainbanner-overlay-header">Получите профессиональную помощь психолога</span>
                <a href="#" class="mainbanner-overlay-action">Выбрать психолога</a>
            </div>
        </div>
        <div class="l-container">
            <!--<h1 class="allarticles-h1 allarticles-h1-mainquestion">Самые обсуждаемые<br/>Вопросы-Ответы</h1>
            <ul class="questionlist">
                <li class="questionlist-one">
                    <h3 class="subcategory-header">
                        <a href="/index.php/otnosheniya/stati/spisok">
                            Родителям
                        </a>
                    </h3>
                    <h2 class="previewlist-content-header">
                        <a href="/roditelyam/stati/psihika-rebenka">
                            За что мы любим наших мам, откровения взрослых девочек. 
                        </a>
                    </h2>
                    <span class="intro-likes intro-likes-previewlist">
                        <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                    </span>
                </li>
                <li class="questionlist-one">
                    <h3 class="subcategory-header">
                        <a class="green" href="/index.php/otnosheniya/stati/spisok">
                            Студентам
                        </a>
                    </h3>
                    <h2 class="previewlist-content-header">
                        <a href="/roditelyam/stati/psihika-rebenka">
                            Уверенность в результате работы над ошибками
                        </a>
                    </h2>
                    <span class="intro-likes intro-likes-previewlist">
                        <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                    </span>
                </li>
                <li class="questionlist-one">
                    <h3 class="subcategory-header">
                        <a class="pink" href="/index.php/otnosheniya/stati/spisok">
                            Отношения
                        </a>
                    </h3>
                    <h2 class="previewlist-content-header">
                        <a href="/roditelyam/stati/psihika-rebenka">
                            Топ 10 советов, для тех, кто хочет влюбиться
                        </a>
                    </h2>
                    <span class="intro-likes intro-likes-previewlist">
                        <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                    </span>
                </li>
                <li class="questionlist-one">
                    <h3 class="subcategory-header">
                        <a class="pink" href="/index.php/otnosheniya/stati/spisok">
                            Отношения
                        </a>
                    </h3>
                    <h2 class="previewlist-content-header">
                        <a href="/roditelyam/stati/psihika-rebenka">
                            Топ 10 советов, для тех, кто хочет влюбиться
                        </a>
                    </h2>
                    <span class="intro-likes intro-likes-previewlist">
                        <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                    </span>
                </li>
                <li class="questionlist-one">
                    <h3 class="subcategory-header">
                        <a class="pink" href="/index.php/otnosheniya/stati/spisok">
                            Отношения
                        </a>
                    </h3>
                    <h2 class="previewlist-content-header">
                        <a href="/roditelyam/stati/psihika-rebenka">
                            Топ 10 советов, для тех, кто хочет влюбиться
                        </a>
                    </h2>
                    <span class="intro-likes intro-likes-previewlist">
                        <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                    </span>
                </li>
                <li class="questionlist-one">
                    <h3 class="subcategory-header">
                        <a href="/index.php/otnosheniya/stati/spisok">
                            Родителям
                        </a>
                    </h3>
                    <h2 class="previewlist-content-header">
                        <a href="/roditelyam/stati/psihika-rebenka">
                            За что мы любим наших мам, откровения взрослых девочек. 
                        </a>
                    </h2>
                    <span class="intro-likes intro-likes-previewlist">
                        <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                    </span>
                </li>
                <li class="questionlist-one">
                    <h3 class="subcategory-header">
                        <a class="green" href="/index.php/otnosheniya/stati/spisok">
                            Студентам
                        </a>
                    </h3>
                    <h3 class="previewlist-content-header">
                        <a href="/roditelyam/stati/psihika-rebenka">
                            Уверенность в результате работы над ошибками
                        </a>
                    </h3>
                    <span class="intro-likes intro-likes-previewlist">
                        <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                    </span>
                </li>
                <li class="questionlist-one">
                    <h2 class="subcategory-header">
                        <a class="pink" href="/index.php/otnosheniya/stati/spisok">
                            Отношения
                        </a>
                    </h2>
                    <h3 class="previewlist-content-header">
                        <a href="/roditelyam/stati/psihika-rebenka">
                            Топ 10 советов, для тех, кто хочет влюбиться
                        </a>
                    </h3>
                    <span class="intro-likes intro-likes-previewlist">
                        <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                    </span>
                </li>
            </ul>-->

            <div class="l-moreadvice">
                <h2>Интересно почитать</h2>
                <ul class="moreadvice-list">
                    <?php foreach ( $interestingPages as $p):?>
                    <?php $pageUtils = new DarumPageUtils($p);?>
                    <li class="moreadvice-one moreadvice-listitem right-bordered">
                        <?php if( !empty($p->mainImage)) :?>
                            <?php echo $pageUtils->cropImage($p->mainImage, 262, 179, $p->altMainImage); ?>
                        <?php endif;?>
                        <?php $title = $pageUtils->getCategoryTitle();?>
                        <h2 class="subcategory-header">
                            <a class="<?=$title['css']?>" href="<?=$title['href']?>">
                                <?=$title['title']?>
                            </a>
                        </h2>
                        <h3 class="moreadvice-listitem-header">
                            <a href="<?= $p->getCollectionPath()?>">
                                <?= $p->getAttribute('meta_title')?>
                            </a>
                        </h3>
                        <span class="intro-likes intro-likes-list">
                            <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                        </span>
                    </li>
                    <?php endforeach;?>
                </ul>
                <ul class="moreadvice-banner">
                    <li class="moreadvice-one">
                        <img src="/application/themes/darum/img/demo/vk.jpg" <="" li="">
                    </li><li class="moreadvice-one">
                        <img src="/application/themes/darum/img/demo/cklass.png" <="" li="">
                    </li></ul> 
            </div>
        </div>
        <?php $this->inc('elements/footer.php'); ?>
    </div>

    <?php $this->inc('elements/common/js.php'); ?>
    <script type="text/javascript" src="<?php echo $landingDir ?>/libs/flipster/dist/jquery.flipster.min.js"></script>
    <script>
        $(window).on('load', function () {
            $(".preview-main-container").flipster({
                style: 'flat',
                spacing: 0,
                loop: true,
                autoplay: 3000,
                keyboard: false,
                buttons: true
            });
        });
    </script>
    <?php Loader::element('footer_required') ?>    
</body>
<?php $this->inc('elements/common/doctype_bot.php'); ?>
