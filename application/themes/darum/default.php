<?php defined('C5_EXECUTE') or die("Access Denied."); ?>

<?php $this->inc('elements/common/doctype.php'); ?>
<?php $this->inc('elements/common/head.php'); ?>
<body>
    <?php $this->inc('elements/common/ie8_warn.php'); ?>

    <div class="<?= $c->getPageWrapperClass() ?>">
        <?php $this->inc('elements/nav.php');?>
        <h1>Main Page!</h1>
        <div>
            <?php $a = new Area('nav'); $a->display($c);?>
        </div>
    </div>

    <?php $this->inc('elements/common/js.php'); ?>
    <?php Loader::element('footer_required') ?>    
</body>
<?php $this->inc('elements/common/doctype_bot.php');?>
