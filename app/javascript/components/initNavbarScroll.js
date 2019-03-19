const initNavbarScroll = () => {
  $(function () {
    var lastScrollTop = 0;
    var $navbar = $('.lower-navbar');
    var $navbarSpace = $('.navbar-space');
    var navbarHeight = $navbar.outerHeight();
    var movement = 0;
    var lastDirection = 0;

    $(window).scroll(function(event){
      var st = $(this).scrollTop();
      movement += st - lastScrollTop;

      if (st > lastScrollTop) { // scroll down
        if (lastDirection != 1) {
          movement = 0;
        }
        var margin = Math.abs(movement);
        if (margin > navbarHeight) {
          margin = navbarHeight;
        }
        margin = -margin;
        $navbar.css('margin-top', margin+"px");
        $navbarSpace.css('display', 'none');

        lastDirection = 1;
      } else { // scroll up
        if (lastDirection != -1) {
          movement = 0;
        }
        var margin = Math.abs(movement);
        if (margin > navbarHeight) {
          margin = navbarHeight;
        }
        margin = margin-navbarHeight;
        $navbar.css('margin-top', margin+"px");
        $navbarSpace.css('display', 'block');

        lastDirection = -1;
      }

      lastScrollTop = st;
      // console.log(margin);
    });
  });
}

export { initNavbarScroll };
