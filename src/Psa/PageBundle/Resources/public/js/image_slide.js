$(document).ready(function() {    

  // execute the slideShow, set 4 seconds (4000) for each image
  slideShow(4000);

});

function slideShow(speed) {

  // append an 'li' item to the 'ul' list for displaying the caption
  jQuery('ul.slideshow').append('<li id="slideshow-caption" class="caption"><div class="slideshow-caption-container"><p></p></div></li>');

  // set the opacity of all images to 0
  jQuery('ul.slideshow li').css({opacity: 0.0});
  
  // get the first image and display it
  jQuery('ul.slideshow li:first').css({opacity: 1.0}).addClass('show');
  
  // get the caption of the first image from the 'rel' attribute and display it
  jQuery('#slideshow-caption p').html($('ul.slideshow li.show').find('img').attr('alt'));
    
  // display the caption
  jQuery('#slideshow-caption').css({opacity: 0.6, bottom:0});
  
  // call the gallery function to run the slideshow  
  var timer = setInterval('gallery()',speed);
  
  // pause the slideshow on mouse over
  jQuery('ul.slideshow').hover(
    function () {
      clearInterval(timer); 
    },  
    function () {
      timer = setInterval('gallery()',speed);     
    }
  );  
}

function gallery() {

  //if no images have the show class, grab the first image
  var current = (jQuery('ul.slideshow li.show')?  jQuery('ul.slideshow li.show') : jQuery('#ul.slideshow li:first'));

  // trying to avoid speed issue
  if(current.queue('fx').length == 0) {

    // get the next image, if it reached the end of the slideshow, rotate it back to the first image
    var next = ((current.next().length) ? ((current.next().attr('id') == 'slideshow-caption')? jQuery('ul.slideshow li:first') :current.next()) : jQuery('ul.slideshow li:first'));
      
    // get the next image caption
    var desc = next.find('img').attr('alt');  
  
    // set the fade in effect for the next image, show class has higher z-index
    next.css({opacity: 0.0}).addClass('show').animate({opacity: 1.0}, 1000);
    
    // hide the caption first, and then set and display the caption
    jQuery('#slideshow-caption').slideToggle(300, function () { 
      jQuery('#slideshow-caption p').html(desc); 
      jQuery('#slideshow-caption').slideToggle(500); 
    });   
  
    // hide the current image
    current.animate({opacity: 0.0}, 1000).removeClass('show');

  }
}