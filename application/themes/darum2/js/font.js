(function () {
    function showLogin() {
        /*использовалась раньше,когда надо было менять шрифт лого*/
        //document.getElementById('logo').className += " visible";
    }

    

    var openSans = new FontFaceObserver('open_sans', {weight:400}),
        openSansBold = new FontFaceObserver('open_sans', {weight:700}),
        openSansExtraBold = new FontFaceObserver('open_sans', {weight:900}),
        openSansLight = new FontFaceObserver('open_sans', {weight:300}),
        openSansSemiBold = new FontFaceObserver('open_sans', {weight:500}),
        firaSans = new FontFaceObserver('fira'),
        bradobrei = new FontFaceObserver('bradobrei'),
        awesome = new FontFaceObserver('FontAwesome'),
        vollkorn = new FontFaceObserver('Vollkorn');
        //vollkornsemibold = new fontfaceobserver('Vollkorn Semibold', {weight: 600});
//        vollkornbold = new fontfaceobserver('vollkorn', {weight: 700});

    Promise.all([openSans.load()]).then(function () {
        document.documentElement.className += " fonts-stage-1";
        //console.log('stage1');
        Promise.all([openSansBold.load(), openSansExtraBold.load(), openSansLight.load(),
                 openSansSemiBold.load(), firaSans.load(), bradobrei.load(), awesome.load()/*, vollkorn.load(), /*vollkornsemibold.load()*/]).then(function() {
             document.documentElement.className += " fonts-stage-2";
             //@todo make unvisible awesome visible
             
             showLogin();
        }, function(){showLogin();});
    }, function(){showLogin();});
})();



