$(function() {
  $(".close").click(function(){
    $(".banner").hide();});
  setInterval(function(){
    $('.banner').slideUp();
  }, 8000);
});