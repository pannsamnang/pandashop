$(function() {
  $( document ).ready(function() {
    $('.collapsible').collapsible();
    $(".button-collapse").sideNav();
    $('.main-slider').flexslider({
      animation: "slide",
      controlsContainer: $(".custom-controls-container"),
      customDirectionNav: $(".custom-navigation a")
    });

    $('#product_slider').flexslider({
      animation: "slide",
      controlNav: "thumbnails"
    });
    $('.dropdown-button').dropdown();

    $('[data-imagezoom]').imageZoom({
      cursorcolor:'255,255,255', //カーソル背景色
      opacity:0.5, //カーソル透明度
      cursor:'crosshair', //カーソルタイプ
      zindex:2147483647, //カーソルレイヤー
      zoomviewsize:[500,500], //ズームビューサイズ
      zoomviewposition:'right', //ズームビューの位置指定[left or right]
      zoomviewmargin:10, //ズームビューと画像のマージン
      zoomviewborder:'1px solid #000', //ズームビューのボーダースタイル
      magnification:3 //拡大率
    });
  });
});
