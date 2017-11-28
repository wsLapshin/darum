<div class="slide__nav">
    <div class="page__container">
    <nav class="mainnav">

        <?php
        $ga = new GlobalArea('mainmenu');
        $ga->display($c);
        ?>

        <?php if ($c->getCollectionID != 1): ?>
            <?php
            $ga = new GlobalArea('subnav');
            $ga->display($c);
            ?> 
        <?php endif; ?>

        <a class="mainnav__magnifier-ico icolink" href="">
            <img class="icolink__image" src="<?= $this->getThemePath() ?>/img/magnifier.png"/>
        </a>
        <div class="mainnav__login-ico icolink hoverup hoverup_ico" >
            <img class="icolink__image" src="<?= $this->getThemePath() ?>/img/login.svg"/>
            <div class="hoverup__layer hoverup__layer_i">
                <div class="hoverup__pointer"></div>
                <div class="hoverup__container">
                    <div class="hoverup__bg">d</div>
                    <div class="hoverup__content">
                        <ul class="menu__list menu__list_v">
                            <li class="menu__item link-block">
                                <a class="menu__link menu__link_w link-block__normlink" href="#1">
                                    Вход
                                </a>
                            </li>
                            <li>
                                <a class="menu__link menu__link_w link-block__normlink" href="#1">
                                    Регистрация
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="link-block">
            <a href="#" class="download-mobile download-mobile_responsive link-block__brghtlink" data-action="downloadmobile">Скачайте приложение</a>
        </div>
    </nav>
    </div>
</div>
