<?php defined('C5_EXECUTE') or die("Access Denied."); ?>

<?php $this->inc('elements/common/doctype.php'); ?>
<?php $this->inc('elements/common/head.php'); ?>
<body>
    <?php $this->inc('elements/common/ie8_warn.php'); ?>
    <div class="<?= $c->getPageWrapperClass() ?>">
        <?php $this->inc('elements/nav.php'); ?>

        Template: landing<br/> 
        <?php
        $a = new Area('Main');
        $a->display($c);
        ?>

        <?php $this->inc('elements/footer.php'); ?>
    </div>
    <?php $this->inc('elements/common/js.php'); ?>
    <?php Loader::element('footer_required') ?>    
</body>
<?php $this->inc('elements/common/doctype_bot.php');?>

