<?php defined('C5_EXECUTE') or die("Access Denied."); ?>
<?php use Application\Src\Page\DarumPageUtils; ?>
<?php use Concrete\Core\Localization\Service\Date?>

<?php $this->inc('elements/common/doctype.php'); ?>
<?php $this->inc('elements/common/head.php'); ?>
<body>
    <?php $this->inc('elements/common/ie8_warn.php'); ?>
    <div class="<?= $c->getPageWrapperClass() ?>">
        <?php $this->inc('elements/nav.php'); ?>
        <div class="l-container">

            <?php //Заголовок списка ?>
            <?php if ($slug== DarumPageUtils::NEW_SLUG):?>
                <h1 class="allarticles-h1">Новые советы <?=$whom?></h1>
            <?php elseif($slug== DarumPageUtils::POPULAR_SLUG):?>
                <h1 class="allarticles-h1">Популярные советы <?=$whom?></h1>
            <?php elseif($slug):?>
                <?php $ontology = DarumPageUtils::getOntologyLabelBySlug($slug);?>
                <h1 class="allarticles-h1">Советы <?=$whom?> <br/> на тему  "<?=$ontology?>"</h1>
            <?php else: ?>
                <h1 class="allarticles-h1">Советы <?=$whom?></h1>
            <?php endif;?>

            <div class="l-twocolumns">
                <div class="l-contentbar-allarticles">
                    <ul class="allarticles">
                        <?php foreach ($pages as $p):?> 
                            <?php $blocks = $p->getBlocks('MainImage');
                                  $mainImage = null;
                                  foreach( $blocks as $block ) {
                                    if ($block->getBlockTypeID() == 32 ) { //image type
                                        $mainImage = $block;
                                        break;
                                    }
                                  }
                              ?>
                            <li class="allarticles-one">

                                <?php //thumbnail ?>
                                <?php if ( null !== $mainImage ):?>
                                    <?php   $ih = Core::make('helper/image');
                                            $thumb = $mainImage->getInstance();
                                            $alt =  $thumb->getAltText();
                                            $ih->outputThumbnail($thumb->getFileObject(), 
                                                300, 193, $alt, false, true); //return false, crop true 
                                     ?>
                                <?php endif; ?>

                                <?php $pageUtils = new DarumPageUtils($p);?>
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
                                        <?php 
                                            $dateService = new Date();
                                            $prettyDate = $dateService->formatPrettyDate( 
                                                $p->getCollectionDateAdded()); 
                                        ?>
                                        <?= $prettyDate ?>
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
                <aside class="l-aside-allarticles"></aside>
            </div>
        </div>

        <?php $this->inc('elements/footer.php');?>
    </div>
    <?php $this->inc('elements/common/js.php');?>
    <?php Loader::element('footer_required') ?>    
</body>
<?php $this->inc('elements/common/doctype_bot.php');?>
