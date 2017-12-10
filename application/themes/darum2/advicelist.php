<?php defined('C5_EXECUTE') or die("Access Denied."); ?>
<?php use Application\Src\Page\DarumPageUtils; ?>
<?php use Concrete\Core\Localization\Service\Date; ?>
<?php $landingDir = $this->getThemePath() . '/landing'; ?>
<?php $this->inc('elements/head.php'); ?>

<body class="page">
    <?php $this->inc('elements/ie8_warn.php'); ?>
    <div class="<?= $c->getPageWrapperClass() ?>">
        <?php $this->inc('elements/header.php'); ?> 
        <div class="page__viewport">
            <?php $this->inc('elements/nav.php'); ?>

            <div class="l-container page__container">
                <div class="page__block">
                <?php //Заголовок списка ?>
                <?php if ($slug== DarumPageUtils::NEW_SLUG):?>
                    <span class="page__header"><h1 class="allarticles-h1">Новые советы <?=$whom?></h1></span>
                <?php elseif($slug== DarumPageUtils::POPULAR_SLUG):?>
                    <span class="page__header"><h1 class="allarticles-h1">Популярные советы <?=$whom?></h1></span>
                <?php elseif($slug):?>
                    <?php $ontology = DarumPageUtils::getOntologyLabelBySlug($slug);?>
                    <span class="page__header"><h1 class="allarticles-h1">Статьи <?=$whom?> <br/> на тему  "<?=$ontology?>"</h1></span>
                <?php else: ?>
                    <span class="page__header"><h1 class="allarticles-h1">Статьи <?=$whom?></h1></span>
                <?php endif;?>
                </div>
                    <div class="l-contentbar-allarticles right-bordered page__column-9 page__preview-container">
                        <ul class="allarticles">
                            <?php foreach ($pages as $p):?> 
                                <li class="allarticles-one page__block">
                                    <?php $pageUtils = new DarumPageUtils($p);?>
                                    <?php if( !empty($p->mainImage)) :?>
                                    <div itemscope itemtype="http://schema.org/ImageObject">
                                        <?php echo $pageUtils->cropImage($p->mainImage, 300, 193, $p->altMainImage); ?>
                                    </div>
                                    <?php endif;?>

                                    <div class="allarticles-content" itemscope itemtype="http://schema.org/NewsArticle">

                                            <?php $title = $pageUtils->getCategoryTitle($slug); ?> 
                                            <h2 class="subcategory-header preview__category">
                                                <a class="<?=$title['css']?>" href="<?=$title['href']?>" itemprop="genre">
                                                     <?=$title['title']?>
                                                </a>
                                            </h2>
                                            <h3 class="allarticles-content-header">
                                                <a class="link-block__normlink" href="<?= $p->getCollectionPath()?>" itemprop="name">
                                                    <?= $p->getAttribute('meta_title')?>
                                                </a>
                                            </h3>
                                            <div class="intro__text" itemprop="description">
                                                <?= $p->getAttribute('introtext');?>
                                            </div>
                                        <span class="like intro__like">
                                            <?php /* 
                                                $dateService = new Date();
                                                $prettyDate = $dateService->formatPrettyDate( 
                                                    $p->getCollectionDateAdded()); 
                                            */ ?>
                                            <?php // $prettyDate ?>
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
                        <div class="showmore">
                            <a href="#" class="btn btn-default">Показать еще</a>
                        </div>
                    </div>

                    
                        <div class="page__column-3 page__preview-container page__last">
                            <div class="aside-list aside-list_mini ">
                                <div class="aside-list__header">
                                    <h3 class="aside-list__header-inner">Интересные советы</h3>
                                </div>
                                <div class="aside-list__content" style="visibility:visible;">
                                    <?php foreach( $articles as $p ):?>
                                    <?php $pageUtils = new DarumPageUtils($p);?>
                                    <div  class="aside-list__item">
                                        <a href="<?= $p->getCollectionPath() ?>" class="aside-list__image">
                                            <?php if( !empty($p->mainImage)) :?>
                                            <?php echo $pageUtils->cropImage($p->mainImage, 98, 98, $p->altMainImage); ?>
                                            <?php endif;?>
                                        </a>
                                        <div class="aside-list__text link-block" itemscope itemtype="http://schema.org/NewsArticle">
                                            <a href="<?= $p->getCollectionPath()?>" class="link-block__normlink" itemprop="description">
                                                <?php echo mb_substr($p->getAttribute('introtext'), 0, 60) . '...';?>
                                            </a>
                                        </div>
                                    </div>
                                    <?php endforeach; ?> 
                                </div> 
                            </div>
                            <div class="aside-banner aside-banner-middle">
                                <img src="<?php echo $this->getThemePath() ?>/img/demo/vk.jpg"/>
                            </div>
                            <div class="aside-banner aside-banner-middle">
                            <a href="http://goo.gl/E8hQ3k" target="_blank">
                                    <img src="<?php echo $this->getThemePath() ?>/img/CPA/ladvices/1.gif"/>
                            </a>
                            </div>
                            <div class="aside-banner aside-banner-middle">
                            <a href="http://kshop2.biz/e9Eu9s/" target="_blank">
                                    <img src="<?php echo $this->getThemePath() ?>/img/CPA/ladvices/4.jpg"/>
                            </a>
                            </div>
                        </div>
                    
            </div>
        </div>
        <?php $this->inc('elements/footer.php'); ?> 
        
        <div class="page__opacity"></div>
    </div>
    <?php $this->inc('elements/js.php'); ?>
    <?php Loader::element('footer_required') ?>

</body>
</html>
