
var main_page = {};
var parentId = '';
var show;
var countClick = 0;
var clickChat = 0;
var appendChat = '';

$(document).ready(function(){
	$(".sub_cat").hide();
	main_page.loadCategory();
	main_page.listProduct();
	
	
//    $(document).delegate("#dropdown-toggle", "click", function(){
//    	countClick++;
//    	$(".wrapper").hide();
//    	$('.notification-menu').slideToggle();
//    	$(".wrap_setting").hide();
//    	$('#navigation-bar').removeClass('navbox-open');
//    	if(countClick > 1){
//    		countClick = 0;
//    		$(".btn_alrim").css({"background": "url(../../img/bg/musical-bell-outline.png)  no-repeat 50% 14px", "background-size": "19px 23px"});
//    	}else{
//    		$(".btn_alrim").css({"background": "url(img/bg/musical-bell-outline-change.png) no-repeat 50% 14px", "background-size": "19px 23px"});
//    	}
//    });
//    
//    $(document).delegate(".notification-menu", "mouseleave", function(){
//    	countClick = 0;
//    	$('.notification-menu').hide();
//    	$(".btn_alrim").css({"background": "url(../../img/bg/musical-bell-outline.png)  no-repeat 50% 14px", "background-size": "19px 23px"});
//    });
//
//    $('.chat[data-chat=person1]').addClass('active-chat');
//    $('.person[data-chat=person1]').addClass('active');
////    $(".wrapper").hide();
//    
//    $('.left .person').mousedown(function(){
//        if ($(this).hasClass('.active')) {
//            return false;
//        } else {
//            var findChat = $(this).attr('data-chat');
//            var personName = $(this).find('.name').text();
//            $('.right .top .name').html(personName);
//            $('.chat').removeClass('active-chat');
//            $('.left .person').removeClass('active');
//            $(this).addClass('active');
//            $('.chat[data-chat = '+findChat+']').addClass('active-chat');
//        }
//    });
//    
//    $(document).delegate(".ico_chat", "click", function(){
//    	countClick++;
//    	if(countClick > 1){
//    		countClick = 0;
//    		$(".ico_chat").find("img").attr("src","img/bg/chat.png");
//    	}else{
//    		$(".ico_chat").find("img").attr("src","img/bg/chat-red.png");
//    	}
//    	$('.notification-menu').hide();
//    	$(".wrapper").slideToggle();
//    	$(".wrap_setting").hide();
//    	$('#navigation-bar').removeClass('navbox-open');
//    	$(".btn_alrim").css({"background": "url(../../img/bg/musical-bell-outline.png)  no-repeat 50% 14px", "background-size": "19px 23px"});
//    });
//    
//    $(document).delegate("ul.people li", "click", function(){
//    	countClick = 0;
//    	$(".ico_chat").find("img").attr("src","img/bg/chat.png");
//    	$(".wrapper").hide();
//    	$(".chat_list").next().append(appendChat);    	
//    });
//    $(document).delegate(".fa-minus", "click", function(){ $(this).parents('.chatbox').toggleClass('chatbox-min'); });
//    $(document).delegate(".fa-close", "click", function(){ $(this).parents('.chatbox').remove(); });
//    
//    $(document).delegate('#navbox-trigger', "click", function(){
//    	$(".wrapper").hide();
//    	$('.notification-menu').hide();
//    	$(".wrap_setting").hide();
//    	$('#navigation-bar').toggleClass('navbox-open');
//    });
//    
//    $(document).delegate('#setting_trigger', "click", function(){
//    	$(".wrapper").hide();
//    	$('.notification-menu').hide();
//    	$('#navigation-bar').removeClass('navbox-open');
//    	$(".wrap_setting").slideToggle();
//    });
    
	$(document).delegate("#sidebar_catagory_list a", "click", function(){
		parentId   = $(this).attr("catg-id");
		$(".hdbox h3").text($(this).text());
		
		main_page.listProduct(parentId);
		main_page.categoryChild(parentId);
	});
	
	
	
//	$(document).delegate(".goodslist li", "click", function(){
	$(".goodslist li").live("click", function(){
		var prcd = $(this).find("#prcd").val();
		var parentid = $(this).find("#parentid").val();
		window.location.href = document.location.origin+'/preview?prcd='+prcd+"&parentid="+parentid;
//		window.location.href = document.location.origin+'/preview?prcd='+prcd+"&parentid="+parentid;
	});
	
});

main_page.loadCategory = function(){
	$.ajax({
		type   : 'GET',
	    url    : "/category/list",
	    cache  : true
	})
	.done(function(dat){
    	var html = "";
    	
    	$.each(dat.OUT_REC, function(i,v){
    		var j = i + 1;
    		if(v.lvl == "1"){
    			html += '<a href="#none" class="ctg_0'+j+'" catg-id="'+v.catgid+'" style="background-image:url('+document.location.origin+"/upload_file/files/"+v.randname+');background-size:20px;background-position:10px;">'+v.nm_eng+'</a>';
    		}
    	});
    	$("#sidebar_catagory_list").html(html);
	})
};


main_page.categoryChild = function(parentId){
	var csrfHeader = $("meta[name='_csrf_header']").attr("content");
	var csrfToken = $("meta[name='_csrf']").attr("content");

	var input = {};
	input["catgid"] = parentId;

	$.ajax({
    	type   : 'POST',
	    url    : "/products/list_product",
	    data   : JSON.stringify(input),
	    cache: true,
        dataType: 'json',
    	contentType: 'application/json',
        async: false,
        beforeSend: function(xhr) {
            xhr.setRequestHeader(csrfHeader, csrfToken);
        },
	})
	.done(function(dat){
    	var html = '';
    	var ul   = $('<ul></ul>');
    	$(".ctglist").empty();
    	if(dat.SUB_OUTREC.length> 0){
    		$.each(dat.SUB_OUTREC, function(i,v){
    			if(dat.SUB_OUTREC.length < 2 ){
    				$(".sub_cat").hide();
    			}else{
    				$(".sub_cat").show()
    				html += '<li><a href="#none"><em>'+v.nm_eng+'</em><span>'+v.cnt+' Items</span></a></li>';
    			}
    		});
    	}else{
    		$(".sub_cat").hide();
    	}
    	
    	$(".ctglist").empty();
    	$(ul).append(html);
    	$(".ctglist").append(ul);
    	$(".ctglist").append('<button class="btn_more"><span class="btn_text">Show More</span><span class="btn_collape"></span></button>');
    	main_page.showMoreCatg();
	})
};


main_page.showMoreCatg = function(){
	var minHeight =	$(".ctglist").children('ul').height();
	var maxHeight;
	
	if(minHeight < 164){
		$(".ctglist").find("button").hide();
	}else{
		$(".ctglist").find("button").show();
		minHeight = 164;//static
		//maxHeight = 250;//dynamic
		maxHeight = $(".ctglist").children('ul').height();
	}
	$(".ctglist").children('ul').css({'height':minHeight,'overflow':'hidden'});
	$('body').delegate('.btn_more','click',function(){
		$(this).prev('ul').animate({height:maxHeight+"px"},300);
		$(this).addClass('read_few');
		$(this).find('.btn_text').text("Show Less");
	});
	$('body').delegate('.read_few','click',function(){
		$(this).prev('ul').animate({height:minHeight},300).stop();
		$(this).removeClass('read_few');
		$(this).find('.btn_text').text("Show More");
	});
};


main_page.listProduct = function(parentId){
	var csrfHeader = $("meta[name='_csrf_header']").attr("content");
	var csrfToken = $("meta[name='_csrf']").attr("content");

	var input = {};
	input["catgid"] = parentId;
	$.ajax({
    	type   : 'POST',
	    url    : "/products/list_product",
	    data   : JSON.stringify(input),
	    cache: true,
        dataType: 'json',
    	contentType: 'application/json',
        async: false,
        beforeSend: function(xhr) {
            xhr.setRequestHeader(csrfHeader, csrfToken);
        },
	})
    .done(function(dat) {
    	
    	$(".pagination").pagination({
    	    dataSource: dat.OUT_REC,
    	    totalNumber: 8,
    	    pageSize: 8,

    	    ajax: {
    	        beforeSend: function() {
    	        	$(".pagination").prev().find(".goodslist").html('Loading data from database...');
    	        }
    	    },
    	    callback: function(data, pagination) {

    	    	var html = '';
    	    	$(".pagination").prev().find(".goodslist").empty();
    	    	$.each(data, function(i,v){
    	    		html += '<li>';
    		        html += 	'<a href="#none" class="thumb">';
    			    html += 		'<img src="'+document.location.origin+"/upload_file/files/"+v.randname+'" alt="first_product" class="thumb loaded">';
    			    html += 		'<p class="txtinfo">';
    				html += 		'<em>'+v.title+'</em>';
    				html += 		'<strong class="flt"><span>$'+v.price+'</span></strong>';
    				html += 		'<strong class="frl"><span>10% OFF</span></strong>';
    			    html += 		'</p>';
    		    	html += 	'</a>';
    		    	html +=		'<input type="hidden" id="prcd" value="'+v.prcd+'" />';
    		    	html +=		'<input type="hidden" id="parentid" value="'+v.parentid+'" />';
    		    	html += 	'<div class="items_foot">';
    			    html += 	'<div class="flt">';
    				html += 		'<ul class="items_foot_opt">';
    				html += 		'<li class="ico_local"><a href="#none"></a></li>';
    				html += 		'<li class="ico_save"><a href="#none"></a></li>';
    				html += 		'<li class="ico_fb"><a href="#none"></a></li>';
    				html += 		'</ul>';
    			    html += 	'</div>';
    			    html += 	'<div class="frl">';
    				html += 		'<ul class="items_foot_view">';
    				html += 		'<li class="ico_local"><a href="#none">'+v.viewcnt+'</a></li>';
    				html += 		'<li class="ico_atlist"><a href="#none">'+v.likecnt+'</a></li>';
    				html += 		'</ul>';
    				html += 	'</div>';
    				html += 	'</div>';		
    				html += '</li>';
    				
    	    	});

    	    	$(".pagination").prev().find(".goodslist").append(html);
    	    }
    	})
    	
    	
    })
};

appendChat += '<div class="chatbox">																																	';
appendChat += '    <div class="chatbox-top">																															';
appendChat += '      <div class="chatbox-avatar">																															';
appendChat += '        <a target="_blank" href="https://www.facebook.com/mfreak"><img src="https://gravatar.com/avatar/2449e413ade8b0c72d0a15d153febdeb?s=512&d=https://codepen.io/assets/avatars/user-avatar-512x512-6e240cf350d2f1cc07c2bed234c3a3bb5f1b237023c204c782622e80d6b212ba.png" /></a> 	';
appendChat += '      </div>																																		';
appendChat += '      <div class="chat-partner-name">																														';
appendChat += '        <span class="status online"></span>																														';
appendChat += '        <a target="_blank" href="https://www.facebook.com/mfreak">Mamun Khandaker</a>																								';
appendChat += '      </div>																																		';
appendChat += '      <div class="chatbox-icons">																															';
appendChat += '        <a href="javascript:void(0);"><i class="fa fa-minus"></i></a>																										';
appendChat += '        <a href="javascript:void(0);"><i class="fa fa-close"></i></a>       																										';
appendChat += '      </div>      																																	';
appendChat += '    </div>																																		';
appendChat += '    																																			';
appendChat += '    <div class="chat-messages">																															';
appendChat += '       <div class="message-box-holder">																														';
appendChat += '        <div class="message-box">																															';
appendChat += '          Hello																																	';
appendChat += '        </div>																																	';
appendChat += '      </div>																																		';
appendChat += '      																																		';
appendChat += '      <div class="message-box-holder">																														';
appendChat += '        <div class="message-sender">																															';
appendChat += '           Mamun Khandaker																																';
appendChat += '         </div>																																	';
appendChat += '        <div class="message-box message-partner">																													';
appendChat += '          Hi.																																	';
appendChat += '        </div>																																	';
appendChat += '      </div>																																		';
appendChat += '      																																		';
appendChat += '      <div class="message-box-holder">																														';
appendChat += '        <div class="message-box">																															';
appendChat += '          How are you doing?																																';
appendChat += '        </div>																																	';
appendChat += '      </div>																																		';
appendChat += '      																																		';
appendChat += '      <div class="message-box-holder">																														';
appendChat += '        <div class="message-sender">																															';
appendChat += '           Mamun Khandaker																																';
appendChat += '         </div>																																	';
appendChat += '        <div class="message-box message-partner">																													';
appendChat += '          Im doing fine. How about you?																														';
appendChat += '        </div>																																	';
appendChat += '      </div>																																		';
appendChat += '      																																		';
appendChat += '      <div class="message-box-holder">																														';
appendChat += '        <div class="message-box">																															';
appendChat += '          I am fine.																																	';
appendChat += '        </div>																																	';
appendChat += '      </div>																																		';
appendChat += '      																																		';
appendChat += '      <div class="message-box-holder">																														';
appendChat += '        <div class="message-box">																															';
appendChat += '          Do you know why I knocked you today?																													';
appendChat += '        </div>																																	';
appendChat += '      </div>																																		';
appendChat += '      																																		';
appendChat += '      <div class="message-box-holder">																														';
appendChat += '        <div class="message-box">																															';
appendChat += '          Theres something important I would like to share with you. Do you have some time?																								';
appendChat += '        </div>																																	';
appendChat += '      </div>																																		';
appendChat += '      																																		';
appendChat += '      <div class="message-box-holder">																														';
appendChat += '        <div class="message-sender">																															';
appendChat += '           Mamun Khandaker																																';
appendChat += '         </div>																																	';
appendChat += '        <div class="message-box message-partner">																													';
appendChat += '          Yeah sure. Lets meet in the Einstein cafe this evening and discuss the matter.																								';
appendChat += '        </div>																																	';
appendChat += '      </div>																																		';
appendChat += '      																																		';
appendChat += '      <div class="message-box-holder">																														';
appendChat += '        <div class="message-sender">																															';
appendChat += '           Mamun Khandaker																																';
appendChat += '         </div>																																	';
appendChat += '        <div class="message-box message-partner">																													';
appendChat += '          I thought of coming to your place and discuss about it but I had to finish my projects and I didnt have enough time to go out of the house.																';
appendChat += '        </div>																																	';
appendChat += '      </div>      																																	';
appendChat += '    </div>																																		';
appendChat += '    																																			';
appendChat += '    <div class="chat-input-holder">																															';
appendChat += '      <textarea class="chat-input"></textarea>																													';
appendChat += '      <input type="submit" value="Send" class="message-send" />																											';
appendChat += '    </div>																																		';
appendChat += '    <div class="attachment-panel">																															';
appendChat += '      <a href="#" class="fa fa-thumbs-up"></a>																													';
appendChat += '      <a href="#" class="fa fa-camera"></a>																														';
appendChat += '      <a href="#" class="fa fa-video-camera"></a>																													';
appendChat += '      <a href="#" class="fa fa-image"></a>																														';
appendChat += '      <a href="#" class="fa fa-paperclip"></a>																													';
appendChat += '      <a href="#" class="fa fa-link"></a>																														';
appendChat += '      <a href="#" class="fa fa-trash-o"></a>																														';
appendChat += '      <a href="#" class="fa fa-search"></a>																														';
appendChat += '    </div>																																		';
appendChat += '</div>																																		';
