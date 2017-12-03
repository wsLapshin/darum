<?php
defined('C5_EXECUTE') or die("Access Denied.");
use Application\Src\Page\DarumPageUtils as PageUtils;

$navItems = $controller->getNavItems();
$c = Page::getCurrentPage();

foreach ($navItems as $ni) {
    $classes = array();

    if ($ni->isCurrent) {
        //class for the page currently being viewed
        $classes[] = 'active';
    }
    $ni->classes = implode(" ", $classes);
}
?>

<?php if (count($navItems) > 0) : ?>
        <div class="menu menu_submenu menu_bordered">
        <ul class="menu__list menu__list_bordered link-block_blue"><!--TODO-->
        <?php $totalItems = count($navItems);?>
        <?php for($i=0; $i<$totalItems; $i++): ?>
            <?php $ni = $navItems[$i];?>
            <li class="menu__item menu__item_bordered hoverup">
                <a class="link-block__normlink menu__link <?php echo $ni->classes ?>" href="<?php echo $ni->url ?>">
                    <?php echo $ni->name ?>
                </a>

                <?php //third level submenu ?>
                <?php
                    $pUtils = new PageUtils($ni->cObj);
                    if ( $pUtils->isArticlesContainer() || $pUtils->isAdvicesContainer() ):
                        $containerURL = $ni->url;
                        $urlNew = $containerURL . '/' . PageUtils::LIST_SLUG . '/' . PageUtils::NEW_SLUG;
                        $urlPopular = $containerURL . '/' . PageUtils::LIST_SLUG . '/' . PageUtils::POPULAR_SLUG;
                ?>
                    <div class="hoverup__layer hoverup__layer_subm">
                        <div class="hoverup__pointer"></div>
                        <div class="hoverup__container_m hoverup__container">
                            <div class="hoverup__bg"></div>
                            <div class="hoverup__content">
                                <ul class="menu__list menu__list_v">
                                    <li class="menu__item">
                                        <a class="menu__link menu__link_w link-block__normlink" href="<?php echo $urlNew?>">
                                            Новые
                                        </a>
                                    </li>
                                    <li class="menu__item">
                                        <a class="menu__link menu__link_w link-block__normlink" href="<?php echo $urlPopular ?>">
                                            Популярные
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div> 
                <?php endif;?>
            </li>
        <?php endfor; ?>
        </ul>
        </div>
<?php elseif (is_object($c) && $c->isEditMode()) : ?>
    <div class="ccm-edit-mode-disabled-item"><?php echo t('Empty Auto-Nav Block.') ?></div>
<?php endif; ?>
