// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$( window ).resize(function() {
$window = $(window);
if( $window .width() > 800){

 $('section[data-type="background"]').each(function(){
 var $bgobj = $(this); // assigning the object

  $(window).scroll(function() {

    // Scroll the background at var speed
    // the yPos is a negative value because we're scrolling it UP!
    var yPos = -( ($window.scrollTop() - $bgobj.offset().top) / $bgobj.data('speed'));

    // Put together our final background position
    var coords = '50% '+ yPos + 'px';

    // Move the background
    $bgobj.css({ backgroundPosition: coords });

 }); // window scroll Ends

 });
}
});



$(document).ready(function(){
$window = $(window);
if( $window.width() > 800){
// Cache the Window object

 $('section[data-type="background"]').each(function(){
 var $bgobj = $(this); // assigning the object

  $(window).scroll(function() {

    // Scroll the background at var speed
    // the yPos is a negative value because we're scrolling it UP!
    var yPos = -( ($window.scrollTop() - $bgobj.offset().top) / $bgobj.data('speed'));

    // Put together our final background position
    var coords = '50% '+ yPos + 'px';

    // Move the background
    $bgobj.css({ backgroundPosition: coords });

 }); // window scroll Ends

 });
}
});