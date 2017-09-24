<div class="l-container">
    <div class="header">
        <a href="#">Скачайте приложение</a>
        <div class="logo">
            <span class="logo-head">Когда нужна помощь</span>
            <span id="logo" class="logo-intro">дарум</span>
        </div>
        <div class="login">
            <a href="#">Вход</a>
            <a href="#">Регистрация</a>
        </div>
    </div>
    <nav>
        <?php $ga = new GlobalArea('mainmenu'); $ga->display($c);?>
        <?php if ($c->getCollectionID != 1):?>
            <?php $ga = new GlobalArea('subnav'); $ga->display($c);?> 
        <?php endif;?>
    </nav>
</div>