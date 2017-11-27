<?php defined('C5_EXECUTE') or die("Access Denied."); ?>
<?php use Application\Src\Page\DarumPageUtils; ?>
<?php use Concrete\Core\Localization\Service\Date?>

<?php $this->inc('elements/common/doctype.php'); ?>
<?php $this->inc('elements/common/head.php'); ?>
<body>
    <style>
	.aside-banner-middle {
		border:none;
	}
        .aside-banner > a {
                display:block;
        }
        .aside-banner > a > img {
                display:inline-block;
                text-align:center;
                max-width: 100%;
        }
    </style>
    <?php $this->inc('elements/common/ie8_warn.php'); ?>
    <div class="<?= $c->getPageWrapperClass() ?>">
        <?php $this->inc('elements/nav.php'); ?>
        <div class="l-container">

            <?php //Заголовок списка ?>
            <?php if ($slug== DarumPageUtils::NEW_SLUG):?>
                <h1 class="allarticles-h1">Новые статьи <?=$whom?></h1>
            <?php elseif($slug== DarumPageUtils::POPULAR_SLUG):?>
                <h1 class="allarticles-h1">Популярные статьи <?=$whom?></h1>
            <?php elseif($slug):?>
                <?php $ontology = DarumPageUtils::getOntologyLabelBySlug($slug);?>
                <h1 class="allarticles-h1">Статьи <?=$whom?> <br/> на тему  "<?=$ontology?>"</h1>
            <?php else: ?>
                <h1 class="allarticles-h1">Статьи <?=$whom?></h1>
            <?php endif;?>

            <div class="l-twocolumns">
                <div class="l-contentbar-allarticles right-bordered">
                    <ul class="allarticles">
                        <?php foreach ($pages as $p):?> 
                            <li class="allarticles-one">
                                <?php $pageUtils = new DarumPageUtils($p);?>
                                <?php if( !empty($p->mainImage)) :?>
                                    <?php echo $pageUtils->cropImage($p->mainImage, 300, 193, $p->altMainImage); ?>
                                <?php endif;?>

                                <div class="allarticles-content">

                                        <?php $title = $pageUtils->getCategoryTitle($slug); ?> 
                                        <h2 class="subcategory-header">
                                            <a class="<?=$title['css']?>" href="<?=$title['href']?>">
                                                 <?=$title['title']?>
                                            </a>
                                        </h2>
                                        <h3 class="allarticles-content-header">
                                            <a href="<?= $p->getCollectionPath()?>" >
                                                <?= $p->getAttribute('meta_title')?>
                                            </a>
                                        </h3>

                                        <?= $p->getAttribute('introtext');?>

                                    <span class="intro-likes intro-likes-list">
                                        <?php /* 
                                            $dateService = new Date();
                                            $prettyDate = $dateService->formatPrettyDate( 
                                                $p->getCollectionDateAdded()); 
                                        */ ?>
                                        <?php // $prettyDate ?>
                                        <i class="fa fa-fw fa-heart"></i>54 <i class="fa fa-fw fa-comment"></i>31
                                    </span>
                                </div>
                            </li>
                        <?php endforeach;?>
                    </ul>
                    <div class="showmore">
                        <a href="#" class="btn btn-default">Показать еще</a>
                    </div>
                </div>
                <aside class="l-aside-allarticles">
                   <img style="margin-bottom:49px" src="<?php echo $this->getThemePath() ?>/img/demo/vk.jpg"/>
                   
                    <div class="aside-list">
                        <div class="aside-list-header">
                            <h3>Интересные советы</h3> 
                        </div>
                         <ul>
                                <?php foreach( $advices as $p ):?>
                                <?php $pageUtils = new DarumPageUtils($p);?>
                                <li class="aside-list-item">
                                    <?php if( !empty($p->mainImage)) :?>
                                        <?php echo $pageUtils->cropImage($p->mainImage, 98, 98, $p->altMainImage); ?>
                                    <?php endif;?>
                                    <div class="introtext">
                                        <p>
                                            <a href="<?= $p->getCollectionPath()?>">
                                                <?php echo mb_substr($p->getAttribute('introtext'), 0, 60) . '...';?>
                                            </a>
                                        </p>
                                    </div>
                                </li>
                                <?php endforeach;?>
                        </ul>
                    </div>
		    <div class="aside-banner aside-banner-middle">
		    <a href="http://goo.gl/E8hQ3k" target="_blank">
                    <img class="aside-banner aside-banner-middle" 
                         src="<?php echo $this->getThemePath() ?>/img/CPA/ladvices/1.gif"/>
		    </a>
		    </div>
		    <div class="aside-banner">
		    <a href="http://kshop2.biz/e9Eu9s/" target="_blank">
                    <img  
                         src="<?php echo $this->getThemePath() ?>/img/CPA/ladvices/4.jpg"/>
		    </a>
		    </div>
                </aside>
            </div>
        </div>

        <?php $this->inc('elements/footer.php');?>
    </div>
    <?php $this->inc('elements/common/js.php');?>
    <?php Loader::element('footer_required') ?>    
</body>
<?php $this->inc('elements/common/doctype_bot.php');?>
