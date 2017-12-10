<?php use Application\Src\Page\DarumPageUtils; ?>
<ul class="page__column-9 page__preview-container">
    <?php foreach ($interestingPages as $p): ?>
        <?php $pageUtils = new DarumPageUtils($p); ?>
        <?php $title = $pageUtils->getCategoryTitle() ?>
        <li class="page__preview 
            preview
            link-block
            <?php
            if (!empty($title['css'])) {
                echo 'link-block_' . $title['css'];
            }
            ?>
            ">
            <div itemscope itemtype="http://schema.org/ImageObject">
                <a class="preview__image" href="<?= $p->getCollectionPath() ?>">
                    <?php if (!empty($p->mainImage)) : ?>
                        <?php echo $pageUtils->cropImage($p->mainImage, 263, 180, $p->altMainImage); ?>
                    <?php endif; ?>                              
                </a>
            </div>
            <div class="preview__content link-block" itemscope itemtype="http://schema.org/NewsArticle">
                <h3 class="preview__category">
                    <!--class="<?= $title['css'] ?>"-->
                    <a class="link-block__brghtlink" href="<?= $title['href'] ?>" itemprop="genre">
    <?= $title['title'] ?> 
                    </a>
                </h3>
                <div class="preview__header">
                    <a class="link-block__normlink" href="<?= $p->getCollectionPath() ?>" itemprop="name">
    <?= $p->getAttribute('meta_title') ?>
                    </a>
                </div>
                <meta itemprop="description" content="<?= $p->getAttribute('introtext');?>">
                <span class="like preview__like">
                    <a href="" class="like__item link-block__normlink">
                        <i class="fa fa-fw fa-heart"></i>54 
                    </a>
                    <a href="" class="like__item link-block__normlink">
                        <i class="fa fa-fw fa-comment"></i>31
                    </a>
                </span>
            </div> 
        </li>
<?php endforeach; ?>
</ul>

