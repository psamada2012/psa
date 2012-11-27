$(document).ready(function() {    

/*
	$("#menuItems > li").click(function(){
		updateSelectedMenu($(this));
		return false;
	});
*/

});


function updateSelectedMenu(activeMenu){

	// remove current active
	var current = $("#menuItems li.active");
  if(current){
	$(current).removeClass('active');
  }
  $(activeMenu).addClass('active')

}