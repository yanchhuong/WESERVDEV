//jQuery time
 var current_fs, next_fs, previous_fs; //fieldsets
 var left, opacity, scale; //fieldset properties which we will animate
 var animating; //flag to prevent quick multiclick glitches
 var post_control_001={};
 var ctgr_name = "";
 var catgid;
 $(document).ready(function(){
	 post_control_001.listMenu();
	 
	// SELECT MENU BUTTON
//	  $('.menu-item-btn').click(function() {
//	    var buttonId = "#" + jQuery(this).attr("id");
//	    var lastChar = buttonId.charAt(buttonId.length-1);
//	    var contentId = '#content-' + lastChar;
//	    // If on mobile 
//	    if ($(window).width() <= 600) {
//	      if ($(contentId).hasClass('show-content')) {
//	        $(contentId).removeClass('show-content');
//	        $(buttonId).removeClass('selected');
//	      }else {
//	        $(contentId).addClass('show-content');
//	        $(buttonId).addClass('selected');
//	      }
//	    }
//	    // If on desktop
//	    else {
//	      $('.menu-item-btn').removeClass('selected');
//	      $(buttonId).addClass('selected');
//	      $('.menu-item-content').removeClass('show-content');
//	      $(contentId).addClass('show-content');
//	    }
//	  });
	 
	 
	 $(document).on("click", ".menu-item-btn", function(){
		 $('.selected').removeClass('selected');
		 $('.show-content').removeClass('show-content');
		 $(this).addClass('selected');
		 $(this).next().addClass('show-content');
	 });
	 
	 $(document).on("click", ".next", function(){
 		if(animating) return false;
 			animating = true;
 				ctgr_name = $(this).parent().parent().parent().prev().text();
 			    ctgr_name += " » "+$(this).text().trim();
 			
 			if($(this).parent().is('li')){
 				$("#ctgr_nm").val(ctgr_name);
 				catgid = $(this).attr("data-id");
				current_fs = $('#form0');
 				next_fs    = $('#form1');
 			}else{
	 			current_fs = $(this).parent();
	        	next_fs    = $(this).parent().next();
 			}
 			//activate next step on progressbar using the index of next_fs
 			$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");

 			//show the next fieldset
 			next_fs.show();
 			//hide the current fieldset with style
 			current_fs.animate({opacity: 0}, {
	 			step: function(now, mx) {
		 			//as the opacity of current_fs reduces to 0  stored in "now"
		 			//1. scale current_fs down to 80%
		 			scale = 1 - (1-  now) * 0.2;
		 			//2. bring next_fs from the right(50%)
		 			left = (now * 50)+"%";
		 			//3. increase opacity of next_fs to 1 as it moves in
		 			opacity = 1 - now;
		 			current_fs.css({
						'transform': 'scale('+scale+')',
						'position': 'absolute'
		 			});
		 			next_fs.css({'left': left, 'opacity': opacity});
	 			}, 
	 			duration: 800, 
	 			complete: function(){
	 			current_fs.hide();
	 			animating = false;
	 		}, 
	 		//this comes from the custom easing plugin
	 		easing: 'easeInOutBack'
 			});
	 });

	 $(".previous").click(function(){
		 if(animating) return false;
		 animating = true;
		 current_fs = $(this).parent();
		 previous_fs = $(this).parent().prev();

 		 //deactivate current step on progressbar
		 $("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");

 		 //show the previous fieldset
		 previous_fs.show(); 
		 //hide the current fieldset with style
		 current_fs.animate({opacity: 0}, {
			 step: function(now, mx) {
 			 //as the opacity of current_fs reduces to 0  stored in "now"
				 //1. scale previous_fs from 80% to 100%
				 scale = 0.8 + (1 - now) * 0.2;
				 //2. take current_fs to the right(50%)  from 0%
 				 left = ((1 - now) * 50)+"%";
 				 //3. increase opacity of previous_fs to 1 as it moves in
 				 opacity = 1 - now;
 				 current_fs.css({'left': left});
 				 previous_fs.css({'transform': 'scale('+scale+')', 'opacity': opacity});
			 },
 			 duration: 800, 
 			 complete: function(){
 				 current_fs.hide();
 				 animating = false;
 			 },
 				//this comes from the custom easing plugin
 				easing: 'easeInOutBack'
 			});
 		});
 
 		$(".submit").click(function(){
 			return false;
 		})
 		
 		$("#saveAll").click(function(){
 			if($("#save_contact").is(":checked")){
 				alert('save all data');
 				alert(catgid);
 			}else{
 				alert('save only previouse');
 			}
 		});
 		
 		

});

post_control_001.listMenu=function(){
	$.ajax({
    	type   : 'GET',
	    url    : "/category/list",
	    cache  : true
	})
    .done(function(dat) {

    	var tbody = $("#key-parties-menu");
    	var html = "";
    	var parentId = '';
    	var k = 1;

    	$.each(dat.OUT_REC, function(i,v){
    		if(v.lvl == "1"){
    			parentId = v.catgid;
    			html += '<li data-id="'+v.catgid+'" class="menu-item">';
    			html += '<a href="#" class="menu-item-btn" id="btn-1"><span>'+v.nm_eng+'</span></a>';
    			html += '<div class="menu-item-content">';
	    			html += '<h3 class="title">'+v.nm_eng+'</h3>';
	    			html += '<div class="contact-card">';
	    			html += '<ul>';
		    			$.each(dat.OUT_REC, function(i,v){
		    				if((parentId == v.parentid) && (v.lvl == "2")){
		        				html += '<li><a href="#" class="next" data-id='+v.catgid+'>'+v.nm_eng+'</a></li>';
		        			}
		    			});
	    			html += '</ul>';
	    			html += '</div>';
    			html += '</div';
    			html += '</li>';
    		}
    	});

    	tbody.html(html);
//    	html= "";
//    	$.each(dat.OUT_REC, function(i,v){
//    		if(v.lvl == "1"){
//    		   html += "<li data-id="+v.catgid+" class='current-menu-item'><a href='' class='next'>"+v.nm_eng+"</a></li>";
//    		}    		
//    		
//    	});
//    	
//    	$("#MENU").append(html);

//    	var item = "";
//    	$("#MENU li").each(function(){
//			item = "";
//			var mainLi = $(this).data("id");
//			$.each(dat.OUT_REC, function(i,v){
//				if(v.lvl == "2"){
//    				if(mainLi == v.parentid){
//    	    			console.log("test" +mainLi+" and "+v.parentid);
//    	    			item += "<li data-id="+v.catgid+" class='next'><a href='#' class='next'>"+v.nm_eng+"</a></li>";    	    			
//    	    		}
//    	    	}    			
//	        });
//			$(this).append("<ul>"+item+"</ul>");
//		});
	})
};

post_control_001.SaveProductPost=function(){
	 
	
	$.ajax({
		url: '',
		cache: true,
		processData: false,
		contentType: false,
		dataType: 'text',
		contentType: 'application/json',
		type: 'POST',
		beforeSend: function(xhr) {
            xhr.setRequestHeader(csrfHeader, csrfToken);
        },
        data: JSON.stringify(input),
        success: function(result){
        	
        }
	})
};







