<script type="text/javascript" src="<?php echo $view->getThemePath() ?>/js/vendor/fontfaceobserver.js" ></script>
<script type="text/javascript" src="<?php echo $view->getThemePath() ?>/js/font.js"></script>


<!--<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="<?php echo $view->getThemePath()?>/js/vendor/jquery-1.11.2.min.js"><\/script>')</script>-->

<script src="<?php echo $view->getThemePath()?>/js/vendor/jquery-1.11.2.min.js"></script>
<script src="<?php echo $view->getThemePath()?>/js/vendor/jqueryui/jquery-ui.min.js"></script>

<script src="<?php echo $view->getThemePath()?>/js/main.js"></script>
<script type="text/javascript">
    function addFav() {
      var title = document.title,
          url = document.location,
          UA = navigator.userAgent.toLowerCase(),
          isFF = UA.indexOf('firefox') != -1,
          isMac = UA.indexOf('mac') != -1,
          isWebkit = UA.indexOf('webkit') != -1,
          isIE = UA.indexOf('.net') != -1;
     
          if ((isIE || isFF) && window.external) { // IE, Firefox
            window.external.AddFavorite(url, title);
            return false;
          }
         
          if (isMac || isWebkit) { // Webkit (Chrome, Opera), Mac
            document.getElementById('AddFavViaSheens').innerHTML = '<p>Нажмите "' + (isMac ? 'Command/Cmd' : 'Ctrl') + ' + D" для добавления страницы в закладки</p>';
            $( "#AddFavViaSheens" ).dialog({
                title: "Добавление в избранное",
                draggable: false,
                modal: true,
                buttons: [
                    {
                      text: "Ok",
                      icon: "ui-icon-heart",
                      click: function() {
                      $( this ).dialog( "close" );
                    }
                }
              ]
            });
            return false;
          }
    }
</script>
<script type="text/javascript">
    $(window).on('load', function(){
        $('#downloadmobile').on('click', function(){
             $( function() {
                $( "#dialog" ).dialog({
                    title: "Дарум",
                });
              } ); 
        });
        $('.addFav').on('click', addFav);
    });
</script>
