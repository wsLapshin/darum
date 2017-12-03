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
          <?php $this->inc('elements/header.php'); ?> 
          <?php $this->inc('elements/nav.php'); ?>
          <header class="headers">
            <div class="header-landing">
              <div class="header__imgs">
               <?php $a = new Area('TopBannerImage1'); $a->display($c);?>

             </div>  
              <div class="header__wrap">
                  <div class="header__wrap_text"><?php $a = new Area('TopBannerImageCategory1'); $a->display($c);?></div>
                  <div class="header__wrap_header"><?php $a = new Area('TopBannerImageHeader1'); $a->display($c);?></div>
              </div>
            </div>
            
            <div class="header-landing">
              <div class="header__imgs">
               <?php $a = new Area('TopBannerImage2'); $a->display($c);?>
             </div>  
              <div class="header__wrap">
                  <div class="header__wrap_text"><?php $a = new Area('TopBannerImageCategory2'); $a->display($c);?></div>
                  <div class="header__wrap_header"><?php $a = new Area('TopBannerImageHeader2'); $a->display($c);?></div>
              </div>
            </div>

            <div class="header-landing">
              <div class="header__imgs">
               <?php $a = new Area('TopBannerImage3'); $a->display($c);?>
             </div>  
              <div class="header__wrap">
                  <div class="header__wrap_text"><?php $a = new Area('TopBannerImageCategory3'); $a->display($c);?></div>
                  <div class="header__wrap_header"><?php $a = new Area('TopBannerImageHeader3'); $a->display($c);?></div>
              </div>
            </div>

            <div class="header-landing">
              <div class="header__imgs">
               <?php $a = new Area('TopBannerImage4'); $a->display($c);?>
             </div>  
              <div class="header__wrap">
                  <div class="header__wrap_text"><?php $a = new Area('TopBannerImageCategory4'); $a->display($c);?></div>
                  <div class="header__wrap_header"><?php $a = new Area('TopBannerImageHeader4'); $a->display($c);?></div>
              </div>
            </div>

            <div class="header-landing">
              <div class="header__imgs">
               <?php $a = new Area('TopBannerImage5'); $a->display($c);?>
             </div>  
              <div class="header__wrap">
                  <div class="header__wrap_text"><?php $a = new Area('TopBannerImageCategory5'); $a->display($c);?></div>
                  <div class="header__wrap_header"><?php $a = new Area('TopBannerImageHeader5'); $a->display($c);?></div>
              </div>
            </div>
          </header>

           <section class="sect1">
               <div class="container">
                <div class="sect1__left">
                  <?php $a = new Area('TopNoteImage'); $a->display($c);?>
                </div>
          
                <div class="sect1__right">
                  <span class="sect1__right_header"><?php $a = new Area('TopNoteHeader'); $a->display($c);?></span>
                  <div class="sect1__right_text"><?php $a = new Area('TopNoteText'); $a->display($c);?></div>
                </div>
               </div>
           </section>

          <section class="sect2">
            <div class="container">
              <h2 class="sect2__headers"><?php $a = new Area('EggsHeader'); $a->display($c);?></h2>
         
              <div class="items1">
                <div class="items1__item">
                  <div class="items1__item_wrap"><?php $a = new Area('Eggs1Image'); $a->display($c);?></div>

                  <div class="items1__item_header"><?php $a = new Area('Eggs1Header'); $a->display($c);?></div>
                  <div class="items1__item_text"><?php $a = new Area('Eggs1Text'); $a->display($c);?></div>
                </div>

                <div class="items1__item">
                  <div class="items1__item_wrap"><?php $a = new Area('Eggs2Image'); $a->display($c);?></div>

                  <div class="items1__item_header"><?php $a = new Area('Eggs2Header'); $a->display($c);?></div>
                  <div class="items1__item_text"><?php $a = new Area('Eggs2Text'); $a->display($c);?></div>
                </div>

                <div class="items1__item">
                  <div class="items1__item_wrap"><?php $a = new Area('Eggs3Image'); $a->display($c);?></div>

                  <div class="items1__item_header"><?php $a = new Area('Eggs3Header'); $a->display($c);?></div>
                  <div class="items1__item_text"><?php $a = new Area('Eggs3Text'); $a->display($c);?></div>
                </div>
              </div>
            </div>
          </section>
            
           <section class="sect3">
             <div class="container">
               <h2 class="sect3__headers"><?php $a = new Area('BlueHeader'); $a->display($c);?></h2>
          
               <div class="sect3__text"><?php $a = new Area('BlueSubHeader'); $a->display($c);?></div>

               <a href="#" class="link"></a>
               <a href="#" class="link"></a>
             </div>
           </section>

          <section class="sect4">
            <div class="container">
              <div class="sect1__right order1">
              <span class="sect1__right_header"><?php $a = new Area('MiddleNoteHeader'); $a->display($c);?></span>
              <div class="sect1__right_text"><?php $a = new Area('MiddleNoteText'); $a->display($c);?></div>
            </div>

            <div class="sect1__left order2">
              <?php $a = new Area('MiddleNoteImage'); $a->display($c);?>
            </div> 
            </div>
          </section>

           <section class="sect5">
             <div class="container">
               <h2 class="sect5__headers"><?php $a = new Area('MiddleSliderHeader'); $a->display($c);?></h2>
          
               <div class="carousel">
                 <ul class="carousel__ul">
                   <li class="carousel__ul_li">
                       <div class="carousel__ul_img">
                         <?php $a = new Area('MiddleSliderImage1'); $a->display($c);?>
                       </div>
                   </li>

                   <li class="carousel__ul_li">
                     <div class="carousel__ul_img">
                        <?php $a = new Area('MiddleSliderImage2'); $a->display($c);?>
                       </div>
                   </li>

                   <li class="carousel__ul_li">
                     <div class="carousel__ul_img">
                        <?php $a = new Area('MiddleSliderImage3'); $a->display($c);?>
                       </div>
                   </li>

                   <li class="carousel__ul_li">
                     <div class="carousel__ul_img">
                        <?php $a = new Area('MiddleSliderImage4'); $a->display($c);?>
                       </div>
                   </li>

                   
                   <li class="carousel__ul_li">
                     <div class="carousel__ul_img">
                        <?php $a = new Area('MiddleSliderImage5'); $a->display($c);?>
                       </div>
                   </li>

                 </ul>
               </div>
             </div>
           </section>

            <section class="sect6">
              <div class="container">
                <div class="block">
                  <div class="block__wrap">
                      <?php $a = new Area('DownNote1Image'); $a->display($c);?>
                  </div>

                  <div class="block__texts">
                    <div class="block__texts_info"><?php $a = new Area('DownNote1Category'); $a->display($c);?></div>
                    <div class="block__texts_header"><?php $a = new Area('DownNote1Header'); $a->display($c);?></div>
                    <div class="block__texts_text"><?php $a = new Area('DownNote1Text'); $a->display($c);?></div>
                  </div>
                </div>
           
                <div class="block">
                  

                  <div class="block__texts">
                    <div class="block__texts_info"><?php $a = new Area('DownNote2Category'); $a->display($c);?></div>
                    <div class="block__texts_header"><?php $a = new Area('DownNote2Header'); $a->display($c);?></div>
                    <div class="block__texts_text"><?php $a = new Area('DownNote2Text'); $a->display($c);?></div>
                  </div>

                  <div class="block__wrap">
                    <div><?php $a = new Area('DownNote2Image'); $a->display($c);?></div>
                  </div>
                </div>
              </div>
            </section>

          <section style="margin: 0 auto"  class="sect4 no-border">
            <div class="container">
              <div class="sect1__right order1">
              <span class="sect1__right_header"><?php $a = new Area('ExplainNoteHeader'); $a->display($c);?></span>
              <div class="sect1__right_text"><?php $a = new Area('ExplainNoteText'); $a->display($c);?></div>
            </div>

            <div class="sect1__left order2">
              <?php $a = new Area('ExplaneNoteImage'); $a->display($c);?>
            </div> 
            </div>
          </section>

             <section class="sect7">
               
                <div class="sect7__top">
                    <div class="sect7__top__imgcont">
                         <?php $a = new Area('ActionBackground'); $a->display($c);?>
                    </div>
                 <div class="sect7__wrap">
                   <div class="sect7__wrap_text"><?php $a = new Area('ActionCategory'); $a->display($c);?></div>
                   <div class="sect7__wrap_header"><?php $a = new Area('ActionHeader'); $a->display($c);?></div>
                 </div>
                 </div>

                <div class="sect7__bottom">
                  <div class="sect7__bottom_text"><?php $a = new Area('ActionText'); $a->display($c);?></div>
                  <div class="sect7__bottom_header"><?php $a = new Area('ActionDownload'); $a->display($c);?></div>
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

