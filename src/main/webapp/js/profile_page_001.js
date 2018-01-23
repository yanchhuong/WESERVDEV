$(document).ready(function(){
    var settingsTab  = '.tablist > .tab-list-tab';
    var settingsPane = '.settings-tab-panel';

    /*$("#sub-cate-wrapper").hide();
    $("#sub-pt").hide();*/
    $("#lang-wrap").hide();
   
    
    $("#lang-switch").click(function(){
       $("#lang-wrap").toggle();
    });
    
    $(document).delegate("#usr_pf_posts", "click", function(){
    	if(!$(this).hasClass('on')){
    		$("#usr_pf_saves").removeClass('on');
    		$("#usr_pf_about").removeClass('on');
    		$(this).addClass('on');
    		$("#aboutus-wrapper").hide();
    		$("#save-product-wrapper").hide();
    		$("#main-content-wrapper").show();
    	}
    });

    $(document).delegate("#usr_pf_saves", "click", function(){
    	if(!$(this).hasClass('on')){
    		$("#usr_pf_posts").removeClass('on');
    		$("#usr_pf_about").removeClass('on');
    		$(this).addClass('on');
    		$("#aboutus-wrapper").hide();
    		$("#main-content-wrapper").hide();
    		$("#save-product-wrapper").show();
    	}
    });
    
    $(document).delegate("#usr_pf_about", "click", function(){
    	if(!$(this).hasClass('on')){
    		$("#usr_pf_saves").removeClass('on');
    		$("#usr_pf_posts").removeClass('on');
    		$(this).addClass('on');
    		
    		$("#main-content-wrapper").hide();
    		$("#save-product-wrapper").hide();
    		$("#aboutus-wrapper").show();
    	}
    });
    
    $(document).delegate("#seller_contact", "click", function(){
    	$("#seller_place").removeClass('active');
    	$("#seller_detail").removeClass('active');
    	$("#seller_feedback").removeClass('active');
    	$(this).addClass('active');
    	
    	$("#labels_place").hide();
    	$("#labels_contact").show();
    });

    $(document).delegate("#seller_place", "click", function(){
    	$("#seller_contact").removeClass('active');
    	$("#seller_detail").removeClass('active');
    	$("#seller_feedback").removeClass('active');
    	$(this).addClass('active');
    	
    	$("#labels_contact").hide();
    	$("#labels_place").show();
    });
    
    $(document).delegate("#seller_detail", "click", function(){
    	$("#seller_contact").removeClass('active');
    	$("#seller_place").removeClass('active');
    	$("#seller_feedback").removeClass('active');
    	$(this).addClass('active');
    });

    $(document).delegate("#seller_feedback", "click", function(){
    	$("#seller_contact").removeClass('active');
    	$("#seller_place").removeClass('active');
    	$("#seller_detail").removeClass('active');
    	$(this).addClass('active');
    });

    
    /*$("#pt-cate").mouseover(function(){
        $("#sub-cate-wrapper").show();
        $("#sub-pt").show();
        $("#sub-cate-wrapper").hover(function(){
            $("#pt-cate").css("color","#fff").css("background","url(images/bg_hover.png)");
            $("#pt-ico").css("background","url(images/sprites.png) -38px -162px no-repeat");
        });
    });*/
});

