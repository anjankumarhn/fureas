$(function(){
  var mglass = $('#magnifying_glass');
  mglass.click(function(){
   $('.search-box-communities').toggleClass('expanded-communities');
 });

  var mglass1 = $('#magnifying_glass_second');
  mglass1.click(function(){
   $('.search-box-events').toggleClass('expanded-events');
 });
});
$('.carousel').carousel();