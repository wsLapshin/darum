<?php $landingDir = $this->getThemePath() . '/landing';?>
<!DOCTYPE html>
<html lang="ru" class="no-js">
  <head>
    <?php echo Loader::element('header_required'); ?>  
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta property="og:image" content="path/to/image.jpg">
    <link rel="shortcut icon" href="img/favicon/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="img/favicon/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="img/favicon/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="img/favicon/apple-touch-icon-114x114.png">
   
    <!-- Load CSS Start-->
    <link rel="stylesheet" href="<?php echo $landingDir?>/libs/slick/slick/slick.css" type="text/css"/>
    <link rel="stylesheet" href="<?php echo $landingDir?>/libs/slick/slick/slick-theme.css" type="text/css"/>
    <link rel="stylesheet" href="<?php echo $landingDir?>/libs/font-awesome/css/font-awesome.min.css" type="text/css"/>
    <link rel="stylesheet" href="<?php echo $landingDir?>/libs/flipster/dist/jquery.flipster.min.css" type="text/css"/>
   
    <link rel="stylesheet" href="<?php echo $landingDir?>/css/fonts.min.css" type="text/css"/>
<link href="<?php echo $view->getThemePath() ?>/css/screen.css" media="screen" rel="stylesheet" type="text/css" />
    <!--Для футера-->
     <link rel="stylesheet" href="<?php echo $view->getThemePath()?>/landing/css/main.min.css" type="text/css"/>
    <!-- Load CSS End-->
    <!-- Load CSS Compiled without JS-->
    <noscript>
      <link rel="stylesheet" href="<?php echo $landingDir?>/css/fonts.min.css">
      <link rel="stylesheet" href="<?php echo $landingDir?>/css/main.min.css">
    </noscript>
  </head>
  <body>
      <div class="<?= $c->getPageWrapperClass() ?>">
          <?php $this->inc('elements/nav.php'); ?>
          <header class="headers">
            <div class="header-landing">
              <div class="header__imgs">
               <?php //$a = new Area('TopBannerImage1'); $a->display($c);?>
                  <img src="<?php echo $landingDir?>/img/page/header/bg.jpg" alt="Изображение" class="header__im    gs_img">

             </div>  
              <div class="header__wrap">
                  <div class="header__wrap_text">ВАЖНЫЙ ВОПРОС</div>
                  <div class="header__wrap_header">Как помочь ребенку научиться быть счастливым и силь&shy;ным?</div>
              </div>
            </div>
            
            <div class="header-landing">
              <div class="header__imgs">
               <?php $a = new Area('TopBannerImage2'); $a->display($c);?>
             </div>  
              <div class="header__wrap">
                  <div class="header__wrap_text">ВАЖНЫЙ ВОПРОС</div>
                  <div class="header__wrap_header">Как помочь ребенку научиться быть счастливым и силь&shy;ным?</div>
              </div>
            </div>

            <div class="header-landing">
              <div class="header__imgs">
               <?php $a = new Area('TopBannerImage3'); $a->display($c);?>
             </div>  
              <div class="header__wrap">
                  <div class="header__wrap_text">ВАЖНЫЙ ВОПРОС</div>
                  <div class="header__wrap_header">Как помочь ребенку научиться быть счастливым и силь&shy;ным?</div>
              </div>
            </div>

            <div class="header-landing">
              <div class="header__imgs">
               <?php $a = new Area('TopBannerImage4'); $a->display($c);?>
             </div>  
              <div class="header__wrap">
                  <div class="header__wrap_text">ВАЖНЫЙ ВОПРОС</div>
                  <div class="header__wrap_header">Как помочь ребенку научиться быть счастливым и силь&shy;ным?</div>
              </div>
            </div>

            <div class="header-landing">
              <div class="header__imgs">
               <?php $a = new Area('TopBannerImage5'); $a->display($c);?>
             </div>  
              <div class="header__wrap">
                  <div class="header__wrap_text">ВАЖНЫЙ ВОПРОС</div>
                  <div class="header__wrap_header">Как помочь ребенку научиться быть счастливым и силь&shy;ным?</div>
              </div>
            </div>
          </header>

           <section class="sect1">
               <div class="container">
                <div class="sect1__left">
                  <img src="<?php echo $landingDir?>/img/page/sect1/1i.jpg" alt="Изображение" class="sect1__left_img">
                </div>
          
                <div class="sect1__right">
                  <h2 class="sect1__right_header">Каждый день - новый этап, и не всегда ясно как поступить</h2>
                  <div class="sect1__right_text">Кто ищет ответы на жизненные вопросы. Родителям, студентам, отношения - здесь полезные советы психологов, тесты, помощь в жизненных ситуации. У родителей тысяча дел и миллион вопросов. Самый </div>
                </div>
               </div>
           </section>

          <section class="sect2">
            <div class="container">
              <h2 class="sect2__headers">Важные этапы, когда родителям стоит изменить стиль общения </h2>
         
              <div class="items1">
                <div class="items1__item">
                  <div class="items1__item_wrap">
                    <img src="<?php echo $landingDir?>/img/page/sect2/1i.jpg" alt="Изображение" class="items1__item_img">
                  </div>

                  <div class="items1__item_header">1,5 года</div>
                  <div class="items1__item_text">Кто ищет ответы на жизненные вопросы. Родителям, студентам, отношения - здесь полезные советы</div>
                </div>

                <div class="items1__item">
                  <div class="items1__item_wrap">
                    <img src="<?php echo $landingDir?>/img/page/sect2/2i.jpg" alt="Изображение" class="items1__item_img">
                  </div>

                  <div class="items1__item_header">3 года</div>
                  <div class="items1__item_text">Детская дружба открывает ребенку дверь во внешний мир. Но она предлагает ему увидеть себя через</div>
                </div>

                <div class="items1__item">
                  <div class="items1__item_wrap">
                    <img src="<?php echo $landingDir?>/img/page/sect2/3i.jpg" alt="Изображение" class="items1__item_img">
                  </div>

                  <div class="items1__item_header">6 лет</div>
                  <div class="items1__item_text">Взгляд другого и, следовательно, обучить узнать себя лучше, через правила, присущие коллективной</div>
                </div>
              </div>
            </div>
          </section>
            
           <section class="sect3">
             <div class="container">
               <h2 class="sect3__headers">Кто ищет, то всегда найдет. Найдет то, что нужно. Ведь дорогу осилит идущий!</h2>
          
               <div class="sect3__text">Взгляд другого и, следовательно, обучить узнать себя лучше, через правила, присущие коллективной жизни. Обратите внимание на то,</div>

               <a href="#" class="link"></a>
               <a href="#" class="link"></a>
             </div>
           </section>

          <section class="sect4">
            <div class="container">
              <div class="sect1__right order1">
              <h2 class="sect1__right_header">Родители каждый день открывают новый мир</h2>
              <div class="sect1__right_text">До школьного возраста игры между детьми отмечаются конфликтами. Это касается игрушек. Пытаться вмешиваться, чтобы научить детей правилам добра или стараться не вмешиваться в их</div>
            </div>

            <div class="sect1__left order2">
              <img src="<?php echo $landingDir?>/img/page/sect4/1i.jpg" alt="Изображение" class="sect1__left_img">
            </div> 
            </div>
          </section>

           <section class="sect5">
             <div class="container">
               <h2 class="sect5__headers">Посмотрите, как просто увлечь ребенка игрой</h2>
          
               <div class="carousel">
                 <ul class="carousel__ul">
                   <li class="carousel__ul_li">
                     <img src="<?php echo $landingDir?>/img/page/sect5/1i.jpg" alt="Изображение" class="carousel__ul_img">
                   </li>

                   <li class="carousel__ul_li">
                     <img src="<?php echo $landingDir?>/img/page/sect5/2i.jpg" alt="Изображение" class="carousel__ul_img">
                   </li>

                   <li class="carousel__ul_li">
                     <img src="<?php echo $landingDir?>/img/page/sect5/3i.jpg" alt="Изображение" class="carousel__ul_img">
                   </li>
                 </ul>
               </div>
             </div>
           </section>

            <section class="sect6">
              <div class="container">
                <div class="block">
                  <div class="block__wrap">
                    <img src="<?php echo $landingDir?>/img/page/sect6/1i.jpg" alt="Изображение" class="block__wrap_img">
                  </div>

                  <div class="block__texts">
                    <div class="block__texts_info">ВАЖНЫЙ ВОПРОС</div>
                    <div class="block__texts_header">Интересныеигры помогут найти общий язык с ребенком</div>
                    <div class="block__texts_text">Надо обращать внимание на отсутствие друзей в любом возрасте, какими бы ни были причины, и поощрять дружбу. Если это не происходит, несмотря на советы и поощрения, надо подключить психологическую помощь. У родителей тысяча дел и миллион вопросов. Самый важный из которых.</div>
                  </div>
                </div>
           
                <div class="block">
                  

                  <div class="block__texts">
                    <div class="block__texts_info">ВАЖНЫЙ ВОПРОС</div>
                    <div class="block__texts_header">Внимание и забота помогут справиться с любой ситуацией</div>
                    <div class="block__texts_text">У родителей тысяча дел и миллион вопросов. Самый важный из которых. Родителям, студентам, отношения - здесь полезные советы психологов, тесты, помощь в жизненных ситуации. Также в этот момент, они проживают свой “Эдипов период”: ощущение чувства любви к родственнику</div>
                  </div>

                  <div class="block__wrap">
                    <img src="<?php echo $landingDir?>/img/page/sect6/2i.jpg" alt="Изображение" class="block__wrap_img">
                  </div>
                </div>
              </div>
            </section>

             <section class="sect7">
               
                <div class="sect7__top">
                    <div class="sect7__top__imgcont">
                         <img src="<?php echo $landingDir?>/img/page/sect7/bg.jpg"/>
                    </div>
                 <div class="sect7__wrap">
                   <div class="sect7__wrap_text">ВАЖНЫЙ ВОПРОС</div>
                   <div class="sect7__wrap_header">Современные технологи помогут сделать сложные вещи простыми</div>
                 </div>
                 </div>

                <div class="sect7__bottom">
                  <div class="sect7__bottom_text">У родителей тысяча дел и миллион вопросов. Самый важный из которых. Родителям, студентам, отношения - здесь полезные советы психологов, тесты, помощь в жизненных ситуации. Также в этот момент, они проживают свой “Эдипов период”: ощущение чувства любви к родственнику противоположного пола и враждебности по</div>
                  <div class="sect7__bottom_header">Скачивайте приложение!</div>
                  <a href="#" class="link"></a>
                  <a href="#" class="link"></a>
                </div>
                 
             </section>
             <?php $this->inc('elements/footer.php'); ?>
             
            <div class="hidden"></div>
      </div>
        <!-- Поддержка старых браузеров--><!--[if lt IE 9]>
        <script src="<?php echo $landingDir?>/libs/html5shiv/es5-shim.min.js"></script>
        <script src="<?php echo $landingDir?>/libs/html5shiv/html5shiv.min.js"></script>
        <script src="<?php echo $landingDir?>/libs/html5shiv/html5shiv-printshiv.min.js"></script>
        <script src="<?php echo $landingDir?>/libs/respond/respond.min.js"></script>
        <![endif]-->

        <!-- Load Scripts-->
        <script type="text/javascript" src="<?php echo $landingDir?>/js/libs.js"></script>
        <script type="text/javascript" src="<?php echo $landingDir?>/libs/jquery/jquery-1.11.2.min.js"></script> 
        <script type="text/javascript" src="<?php echo $landingDir?>/libs/slick/slick/slick.min.js"></script>
        <script type="text/javascript" src="<?php echo $landingDir?>/libs/flipster/dist/jquery.flipster.min.js"></script>
        <script type="text/javascript" src="<?php echo $landingDir?>/js/common.js"></script>
        <script type="text/javascript" src="<?php echo $view->getThemePath() ?>/js/vendor/fontfaceobserver.js" ></script>
<script type="text/javascript" src="<?php echo $view->getThemePath() ?>/js/font.js"></script>
        <?php Loader::element('footer_required') ?>
<style>
    .ccm-edit-mode .slick-dots li {
       border: 2px solid black; 
    }
</style>
  </body>

</html>

