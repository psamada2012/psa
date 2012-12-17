$(function() {
    
    //************** START : FIND PATH *********************
    
    var racine_pathname = getRacinePathname(); //--> /psa/web ou /web
    //alert(racine_pathname);
    //************** END *********************

    //init tinyMCE editors        
	var pattern_dns_url = 'dev.moobz.fr/adresse'; 
    var rep_stockage    = 'adresse'
    var pre_path_url_for_pattern = '/'+ rep_stockage + '/web';   
	
    var pre_path_url  =  '';
    var url = window.location.href;
    var reg_qladresse = new RegExp("qladresse2","g");
    var reg_dladresse = new RegExp("dladresse2","g");  
    var reg_qladresse1 = new RegExp("qladresse3","g");
    var reg_dladresse1 = new RegExp("dladresse3","g"); 
    var reg_adresse = new RegExp( pattern_dns_url ,"g");  
	
    if(reg_dladresse.test(url)){
        pre_path_url  = '/dladresse2/web';
    }else if (reg_qladresse.test(url)){
        pre_path_url  = '/qladresse2/web';
    }else if (reg_qladresse1.test(url)){
        pre_path_url  = '/qladresse3/web';
    }else if (reg_dladresse1.test(url)){
        pre_path_url  = '/dladresse3/web';
    }else if (reg_adresse.test(url)){
        pre_path_url  = pre_path_url_for_pattern;
    }
    $('textarea.tinymce').tinymce({
        // Location of TinyMCE script
        script_url : racine_pathname + '/js/tiny_mce/tiny_mce.js',


        // General options
        theme : "advanced",
        plugins : "style,emotions,inlinepopups,paste,jbimages,fullscreen",

        // Theme options
        theme_advanced_buttons1 : "bold,italic,underline,strikethrough,justifyleft,justifycenter,justifyright,formatselect,bullist,numlist,|,undo,redo,|,styleprops,|,jbimages,code,link,unlink,fullscreen",
        theme_advanced_buttons2 : "",
        theme_advanced_buttons3 : "",
        theme_advanced_toolbar_location : "top",
        theme_advanced_toolbar_align : "left",
        theme_advanced_statusbar_location : "bottom",
        theme_advanced_resizing : false,

        // Example content CSS (should be your site CSS)
        content_css : racine_pathname + '/css/tinyMCE.css',
        relative_urls:false,

        // Drop lists for link/image/media/template dialogs
        template_external_list_url : "lists/template_list.js",
        external_link_list_url : "lists/link_list.js",
        external_image_list_url : "lists/image_list.js",
        media_external_list_url : "lists/media_list.js",
        onchange_callback : "setHasModifyField",

        // Counter manager
        setup: function(ed) {
            var tinyMCEText = "";
            var wordCount = false;
            var paragraphCount = 0;
            var maxLenght = 0;
            if($('#'+ed.id).attr('maxlength') != undefined){
                maxLenght = $('#'+ed.id).attr('maxlength');        
            }
            var remaining = maxLenght;
            
            ed.onKeyUp.add(function(ed, e) {
                paragraphCount = countParagraphs(ed.getContent()); 
                if (!wordCount) wordCount = showWordCount(ed.id);
                
                content = ed.getContent();
                // Strip all tags
                tinyMCEText = ed.getContent().replace(/(<([^>]+)>)/g,"").replace(/\s+/g," ").replace(/\&[^;]+;/g, "#");
                tinyMCEText = $.trim(tinyMCEText);
                if(maxLenght > 0){
                    remaining = maxLenght - tinyMCEText.length;
                    if(remaining < 0){
                        ed.setContent(content.substring(0, content.length));
                    }
                }
                // Update counters
                //$('#' + tinyMCE.activeEditor.id + '_wordcount').html("<span>"+remaining+"</span> caractères restants <br/><span>" + tinyMCEText.split(' ').length + "</span> mot(s)<br/><span>" + tinyMCEText.length + "</span> caractère(s)<br/>"+paragraphCount+" paragraphe(s)");
                $('#' + tinyMCE.activeEditor.id + '_wordcount').html("<span>" + tinyMCEText.split(' ').length + "</span> mot(s)<br/><span>" + tinyMCEText.length + "</span> caractère(s)<br/>"+paragraphCount+" paragraphe(s)");
            });
        }
    });
});

/**
*  Count paragraphes from tinyMCE editors
*/
countParagraphs = function(text){
    var wrapper = $(document.createElement('div'));
    wrapper.html(text);
    return wrapper.find('p').size();
}

/**
*  Show words, characters, paragraphs counter wrapper inside tinyMCE editors
*/
showWordCount = function(activeEdId) {
    $('#'+activeEdId+'_parent.mceEditor').after('<div id="' + activeEdId + '_wordcount" class="tinyMCEWordcount"></div>');
    return true;
}


function getRacinePathname(){
    var pathname = window.location.pathname;
    var keyword_path = "/app_"; //pour app_dev ou app_prod
    var index_path = pathname.indexOf(keyword_path);
    keyword_path = "/admin"; //si pas de app_xxx, c'est route admin

    index_path = index_path>0?index_path:pathname.indexOf(keyword_path);

    return pathname.substr(0, index_path); //--> /psa/web ou /web
}