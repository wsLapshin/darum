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
    <div class="menu-submenu">
        <ul>
        <?php $totalItems = count($navItems);?>
        <?php for($i=0; $i<$totalItems; $i++): ?>
            <?php $ni = $navItems[$i];?>
            <li>
                <a class="<?php echo $ni->classes ?>" href="<?php echo $ni->url ?>">
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
                    <div class="third-level-cont">
                        <div>
                            <a href="<?php echo $urlNew?>"  class="third-level">
                                Новые
                            </a>
                            <a href="<?php echo $urlPopular ?>"  class="third-level">
                                Популярные
                            </a>
                        </div>
                    </div>
                <?php endif;?>
                
                <?php //not used ?>
                <?php if($ni->hasSubmenu && false): //delete this block in future maybe?>
                    <div class="third-level-cont">
                        <div>
                                
                        <?php for($j=$i+1; $j<$totalItems; $j++):?>
                            <?php $subNi = $navItems[$j];?>
                            <?php if($subNi->level == 1) {break;}?>
                            <a href="<?php echo $subNi->url?>"  class="third-level">
                                <?php echo $subNi->name ?>
                            </a>
                        <?php endfor;?>
                        <?php $i = $j-1; ?>

                        </div>
                    </div>
                <?php endif;?>
                <?php //\not used ?>

            </li>
        <?php endfor; ?>
        </ul>
    </div>
<?php elseif (is_object($c) && $c->isEditMode()) : ?>
    <div class="ccm-edit-mode-disabled-item"><?php echo t('Empty Auto-Nav Block.') ?></div>
<?php endif; ?>
