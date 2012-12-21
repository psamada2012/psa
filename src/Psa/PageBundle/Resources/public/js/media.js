/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function() {    
    /*$(".yoxview").yoxview(
        {
            backgroundColor: 'Blue',
            playDelay: 5000
        }
    );*/
        
    $(".fotorama").fotorama({
        startImg: 10, // Initial image
        transitionDuration: 400, 
        touchStyle: true, // Enable dragging
        margin: 10, 
        arrowsColor: '#3399cc', // Arrows color
        caption: true // Display captions
    });
});
