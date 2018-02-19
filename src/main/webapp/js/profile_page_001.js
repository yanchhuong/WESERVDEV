var profile_page_001 = {};


$(document).ready(function(){
	
	//google map
	var map;
	  function initialize() {
	    var mapOptions = {
	      zoom: 9,
	      center: new google.maps.LatLng(11.9098, 104.3010),
	      mapTypeId: google.maps.MapTypeId.ROADMAP
	    };
	    map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);
	  }
	  google.maps.event.addDomListener(window, 'load', initialize);

	  
	  profile_page_001.loadData();
	  
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
    	
    	$("#labels_detail").hide();
    	$("#labels_place").hide();
    	$("#labels_contact").show();
    	$("#labels_feedback").hide();
    });

    $(document).delegate("#seller_place", "click", function(){
    	$("#seller_contact").removeClass('active');
    	$("#seller_detail").removeClass('active');
    	$("#seller_feedback").removeClass('active');
    	$(this).addClass('active');
    	
    	$("#labels_contact").hide();
    	$("#labels_place").show();
    	$("#labels_feedback").hide();
    	$("#labels_detail").hide();
    });
    
    $(document).delegate("#seller_detail", "click", function(){
    	$("#seller_contact").removeClass('active');
    	$("#seller_place").removeClass('active');
    	$("#seller_feedback").removeClass('active');
    	$(this).addClass('active');
    	
    	$("#labels_contact").hide();
    	$("#labels_place").hide();
    	$("#labels_feedback").hide();
    	$("#labels_detail").show();
    });

    $(document).delegate("#seller_feedback", "click", function(){
    	$("#seller_contact").removeClass('active');
    	$("#seller_place").removeClass('active');
    	$("#seller_detail").removeClass('active');
    	$(this).addClass('active');
    	
    	$("#labels_contact").hide();
    	$("#labels_place").hide();
    	$("#labels_detail").hide();
    	$("#labels_feedback").show();
    });
    

    $('#contact-car').hide();
    $('#contact-bus').hide();
    $('#contact-bike').hide();
    $('#contact-phone').hide();
    $('#contact-mail').hide();

    $('#contact-carClick').removeClass("active");
    $('#contact-busClick').removeClass("active");
    $('#contact-bikeClick').removeClass("active");
    $('#contact-phoneClick').removeClass("active");
    $('#contact-mailClick').removeClass("active");

    $('#contact-map').show();
    $("#contact-mapClick").addClass("active");

	// contact page toogles
	$("#contact-mapClick").click(function () {
	    $('#contact-car').hide();
	    $('#contact-bus').hide();
	    $('#contact-bike').hide();
	    $('#contact-phone').hide();
	    $('#contact-mail').hide();
	
	    $('#contact-carClick').removeClass("active");
	    $('#contact-busClick').removeClass("active");
	    $('#contact-bikeClick').removeClass("active");
	    $('#contact-phoneClick').removeClass("active");
	    $('#contact-mailClick').removeClass("active");
	
	    $('#contact-map').show();
	    $("#contact-mapClick").addClass("active");
	});
	
	$("#contact-carClick").click(function () {
	    $('#contact-map').hide();
	    $('#contact-bus').hide();
	    $('#contact-bike').hide();
	    $('#contact-phone').hide();
	    $('#contact-mail').hide();
	
	    $('#contact-mapClick').removeClass("active");
	    $('#contact-busClick').removeClass("active");
	    $('#contact-bikeClick').removeClass("active");
	    $('#contact-phoneClick').removeClass("active");
	    $('#contact-mailClick').removeClass("active");
	
	    $('#contact-car').show();
	    $("#contact-carClick").addClass("active");
	});
	
	$("#contact-busClick").click(function () {
	    $('#contact-map').hide();
	    $('#contact-car').hide();
	    $('#contact-bike').hide();
	    $('#contact-phone').hide();
	    $('#contact-mail').hide();
	
	    $('#contact-mapClick').removeClass("active");
	    $('#contact-carClick').removeClass("active");
	    $('#contact-bikeClick').removeClass("active");
	    $('#contact-phoneClick').removeClass("active");
	    $('#contact-mailClick').removeClass("active");
	
	    $('#contact-bus').show();
	    $("#contact-busClick").addClass("active");
	});
	
	$("#contact-bikeClick").click(function () {
	    $('#contact-map').hide();
	    $('#contact-car').hide();
	    $('#contact-bus').hide();
	    $('#contact-phone').hide();
	    $('#contact-mail').hide();
	
	    $('#contact-mapClick').removeClass("active");
	    $('#contact-carClick').removeClass("active");
	    $('#contact-busClick').removeClass("active");
	    $('#contact-phoneClick').removeClass("active");
	    $('#contact-mailClick').removeClass("active");
	
	    $('#contact-bike').show();
	    $("#contact-bikeClick").addClass("active");
	});
	
	$("#contact-phoneClick").click(function () {
	    $('#contact-map').hide();
	    $('#contact-car').hide();
	    $('#contact-bus').hide();
	    $('#contact-bike').hide();
	    $('#contact-mail').hide();
	
	    $('#contact-mapClick').removeClass("active");
	    $('#contact-carClick').removeClass("active");
	    $('#contact-busClick').removeClass("active");
	    $('#contact-bikeClick').removeClass("active");
	    $('#contact-mailClick').removeClass("active");
	
	    $('#contact-phone').show();
	    $("#contact-phoneClick").addClass("active");
	});
	
	
	$("#contact-mailClick").click(function () {
	    $('#contact-map').hide();
	    $('#contact-car').hide();
	    $('#contact-bus').hide();
	    $('#contact-bike').hide();
	    $('#contact-phone').hide();
	
	    $('#contact-mapClick').removeClass("active");
	    $('#contact-carClick').removeClass("active");
	    $('#contact-busClick').removeClass("active");
	    $('#contact-bikeClick').removeClass("active");
	    $('#contact-phoneClick').removeClass("active");
	
	    $('#contact-mail').show();
	    $("#contact-mailClick").addClass("active");
	});
	
//	$(document).delegate("#phone > li", "click", function(){
//		$(this).hide();
//		if(!$("#clphno").hasClass('on')){
//			$(this).next("#clphno").show();
//		}
//		$("input").focus();
//		$(".btnPhone").show();
//		$(this).next("#clphno").addClass('on');
//	});
	var cntClick = 0;
	$(document).delegate(".phone-image", "click", function(){
		if(cntClick < 1 || !$("#phone span").hasClass('phoneno')){
			cntClick++;
			$("#phone span").addClass("phoneno");
		}else{
			cntClick = 0;
			$("#phone span").removeClass("phoneno");
		}
		$(".phono").slideToggle();
	});

	$(document).delegate("#btnaddph", "click", function(){
		var morphno = $("#mophno").val();
		if($("#phone span").length < 4 && $("#mophno").val().substring(0,1) == '0'){
			if(morphno != '' && !isNaN(morphno) && morphno.length >= 9 && $("#phone span").length < 4){
				var str = $('<span class="phoneno">'+wehrm.string.formatPhoneNumber(morphno, "")+'<a href="#none" id="deleteph"></a></span>');
				$("#phone").append(str);
				$("#mophno").val("");
				profile_page_001.updatePhonno();
				toastr["success"]("Your number " + morphno + " updated successfully.");
			}else{
				toastr["error"]("Number incorrectly.");
			}
		}else{
			toastr["error"]("You are input more than 4 numbers, you can delete some of them", "Error");
		}
	});

	$(document).delegate("#btndoneph", "click", function(){
		$(".phono").slideToggle();
		$("#phone span").removeClass("phoneno");
	});
	
	$(".phono input").on("keypress",function (event) {
		$(this).val($(this).val().replace(/[^0-9\.]/g,''));
	    	if ((event.which != 46 || $(this).val().indexOf('.') != -1) && (event.which < 48 || event.which > 57)) {
	    		event.preventDefault();
	        }
	});
	
	$(document).delegate("#deleteph", "click", function(){
		$(this).parent().remove();
		profile_page_001.updatePhonno();
//		$("#wait").css("display", "none");
	});
	
	$(document).delegate(".edit-email", "click", function(){
		$(this).hide();
		$(this).prev().find('li').hide();
		$(this).prev().find('span').show();
		
		var width = ($(this).prev().find('li').text().length * 8 ) - 8;
		$(this).prev().find('span').children().css('width',width);
//		alert(testwidth);
		$("input").focus();
	});
	
	$(document).delegate("#btnsaveemail", "click", function(){
		$(this).parent().hide();
		$(this).parent().prev().show();
		$('.Dd').find('.edit-email').show();
		
		$(this).parent().prev().text($(this).prev().val());
		
		if($(this).prev().val() != ''){
			profile_page_001.updateEmail(this);
			toastr["success"]("Your Email Update success.");
		}else{
			toastr["error"]("input email incorrectly.");
		}
		
	});
	
	$(document).delegate(".edit-BD", "click", function(){
		$(this).hide();
		$("#bDate, #bMonth, #bYear, #btnsavebd").show();
	});
	
	$(document).delegate("#btnsavebd", "click", function(){
		$(".edit-BD").show();
		$("#bDate, #bMonth, #bYear, #btnsavebd").hide();
		var newBD = '';
		
		var BDate  = $("#bDate").find("option:selected").text();
		var BMonth = $("#bMonth").find("option:selected").text();
		var BYear  = $("#bYear").find("option:selected").text();
		newBD = BDate+BMonth+BYear;
		$("#userBD").text(wehrm.string.formatDateNormal(newBD,"-"));
		
		profile_page_001.updateBirthdate(newBD);
	});
	
	$(document).delegate(".edit-gender", "click", function(){
		$(this).hide();
		$(".gender").find('li:eq(1)').show();
	});
	
	$(document).delegate("#btnsaveGD", "click", function(){
		$(".gender").find('li:eq(1)').hide();
		$('.edit-gender').show();
		var newGD = $("#selectGD").find("option:selected").text();
		var updateGD = $("#selectGD").find("option:selected").attr('data-gender');
		$("#gender").text(newGD);
		
		profile_page_001.updateGender(updateGD);
	});

//	$(document).delegate("#fb", "click", function(){
//		$(this).hide();
//		$(this).next().show();
//		$("input").focus();
//	});
	
//	$(document).delegate("#btnsavefb", "click", function(){
//		$(this).parent().hide();
//		$(this).parent().prev().show();
//	});
//
//	$(document).delegate(".website-image", "click", function(){
//		$(".moreweb").slideToggle();
//	});
//	
//	$(document).delegate("#btnselectweb", "click", function(){
//		var strweb = $('<li id="fb" class="weblink">'+$("#moreweb").val()+'<span></span></li>')
//		$("#websitelsit").append(strweb);
//		$("#moreweb").val("")
//	});

//    return $(document).on('click', function(e){
//        var $target;
//        $target = $(e.target);
//        if (!$target.closest('.clphEdit').length && !$target.closest('#phone > li').length) {
//            return $('#navigation-bar').removeClass('navbox-open');
//        }
//    });
	
    /*$("#pt-cate").mouseover(function(){
        $("#sub-cate-wrapper").show();
        $("#sub-pt").show();
        $("#sub-cate-wrapper").hover(function(){
            $("#pt-cate").css("color","#fff").css("background","url(images/bg_hover.png)");
            $("#pt-ico").css("background","url(images/sprites.png) -38px -162px no-repeat");
        });
    });*/
});


profile_page_001.loadData = function(){
	_loadingStart();
	var csrfHeader = $("meta[name='_csrf_header']").attr("content");
	var csrfToken  = $("meta[name='_csrf']").attr("content");
	var input = $("#usercd").val();

    $.ajax({
		  type	: 'POST',
		  url	:'/userdetails/getuserdetails',
		  async	: true,
		  cache	: false,
		  data	: JSON.stringify(input),
          dataType	  : 'json',
	      contentType : 'application/json',
		  beforeSend  : function(xhr) {
			  xhr.setRequestHeader(csrfHeader, csrfToken);
		  },
		  success : function(data){
			  var strPhone = '';
			  var strEmail = '';
			  var strDay   = '';
			  var strMonth = '';
			  var strYear  = '';
			  var strShowBD = '';
			  var gender   = '';
			  
			  $("#phone").html('');
			  $(".email").html('');
			  $(".birthday").html('');
			  
			  $.each(data.OUT_REC, function(i,v){
				  var phone = v.cphone;
				  var myregexp2 = new RegExp(","); 
				  dateArray = phone.split(myregexp2);
				  for(var i=0;i<dateArray.length;i++){
					  strPhone += '<span>'+wehrm.string.formatPhoneNumber(dateArray[i])+'<a href="#none" id="deleteph"></a></span>';
				  }
				  
				  strEmail += 	'<li id="email">'+v.email+'</li>';
				  strEmail +=  	'<span style="display:none;">';
				  strEmail +=		'<input type="text" value="'+v.email+'" onkeypress="chkKey(event, this)" onfocus="this.setSelectionRange(1000,1001)" />';
				  strEmail +=		'<span class="btn_style1_b" id="btnsaveemail"><a href="#none">save</a></span>';
				  strEmail +=	'</span>';
				  
				  strShowBD += '<li><label id="userBD">'+wehrm.string.formatDateNormal(v.birthdate)+'</label></li>';
				  
				  if(v.sex == 'M'){
					  $("#gender").text("Male");
				  }else if(v.sex == 'F'){
					  $("#gender").text("Female");
				  }else if(v.sex == 'A'){
					  $("#gender").text("All");
				  }
			  });
			  
			  strDay += '<li id="bDate"><span>D:  </span><select>';
				  for(var j=1;j<=31;j++){
					  if(j<=9){
						  strDay += '<option>0'+j+'</option>';
					  }else{
						  strDay += '<option>'+j+'</option>';
					  }
				  }
			  strDay += '</select></li>';
			  
			  strMonth += '<li id="bMonth"><span>M:  </span><select>';
				  for(var j=1;j<=12;j++){
					  if(j<=9){
						  strMonth += '<option>0'+j+'</option>';
					  }else{
						  strMonth += '<option>'+j+'</option>';
					  }
				  }
			  strMonth += '</select></li>';
				  
			  strYear += '<li id="bYear"><span>Y:  </span><select>';
				  for(var j=1990;j<=2018;j++){
					  strYear += '<option>'+j+'</option>';
				  }
			  strYear += '</select></li>';
			  
			  console.log(strDay);
			  $("#phone").append(strPhone);
			  $(".email").append(strEmail);
			  $(".birthday").append(strShowBD);
			  $(".birthday").append(strDay);
			  $(".birthday").append(strMonth);
			  $(".birthday").append(strYear);
			  $(".birthday").append('<span class="btn_style1_b" id="btnsavebd"><a href="javascript:">save</a></span>');
			  _loadingStop();  
		  }
	  });
};

profile_page_001.updatePhonno = function(){
	_loadingStart();
	var input = {};
	var csrfHeader = $("meta[name='_csrf_header']").attr("content");
	var csrfToken  = $("meta[name='_csrf']").attr("content");
	var getPhone = '';
	var strPhone = '';
	
	$("#phone span").each(function(i, v){
		getPhone = ","+$(v).text().replace("-","").replace("-","");
		strPhone += getPhone;
	});
	strPhone = strPhone.substring(1,(strPhone.length));
	
	input["usercd"] = $("#usercd").val();
	input["cphone"] = strPhone;
	
	$.ajax({
		type	: 'POST',
		url	    :'/userdetails/updateuserphonno',
		async	: false,
		cache	: false,
		data	: JSON.stringify(input),
	    dataType	  : 'json',
	    contentType : 'application/json',
		beforeSend  : function(xhr) {
			xhr.setRequestHeader(csrfHeader, csrfToken);
		},
		success : function(data){
			console.log("phone: "+data.SMS);
			_loadingStop();
		}
	});
};



profile_page_001.updateEmail = function($this){
	_loadingStart();
	var input = {};
	var csrfHeader = $("meta[name='_csrf_header']").attr("content");
	var csrfToken  = $("meta[name='_csrf']").attr("content");
	
	
	input["usercd"] = $("#usercd").val();
	input["email"]  = $($this).prev().val();
	
	$.ajax({
		type	: 'POST',
		url	    :'/userdetails/updateuseremail',
		async	: true,
		cache	: false,
		data	: JSON.stringify(input),
	    dataType	  : 'json',
	    contentType : 'application/json',
		beforeSend  : function(xhr) {
			xhr.setRequestHeader(csrfHeader, csrfToken);
		},
		success : function(data){
			console.log(data.MESSAGE);
			_loadingStop();
		}
	});
};


profile_page_001.updateBirthdate = function(newdate){
	_loadingStart();
	var input = {};
	var csrfHeader = $("meta[name='_csrf_header']").attr("content");
	var csrfToken  = $("meta[name='_csrf']").attr("content");
	
	
	input["usercd"]     = $("#usercd").val();
	input["birthdate"]  = newdate;
	
	console.log("update BD: "+JSON.stringify(input));
	$.ajax({
		type	: 'POST',
		url	    :'/userdetails/updateuserbirthdate',
		async	: false,
		cache	: false,
		data	: JSON.stringify(input),
	    dataType	  : 'json',
	    contentType : 'application/json',
		beforeSend  : function(xhr) {
			xhr.setRequestHeader(csrfHeader, csrfToken);
		},
		success : function(data){
			console.log(data.MESSAGE);
			_loadingStop();
		}
	});
};


profile_page_001.updateGender = function(newdate){
	_loadingStart();
	var input = {};
	var csrfHeader = $("meta[name='_csrf_header']").attr("content");
	var csrfToken  = $("meta[name='_csrf']").attr("content");
	
	
	input["usercd"] = $("#usercd").val();
	input["sex"]    = newdate;
	
	console.log("update BD: "+JSON.stringify(input));
	$.ajax({
		type	: 'POST',
		url		:'/userdetails/updateusergender',
		async	: false,
		cache	: false,
		data	: JSON.stringify(input),
	    dataType	  : 'json',
	    contentType : 'application/json',
		beforeSend  : function(xhr) {
			xhr.setRequestHeader(csrfHeader, csrfToken);
		},
		success : function(data){
			console.log(data.MESSAGE);
			_loadingStop();
		}
	});
};

function _loadingStart(){
	$("#wait").css("display", "block");
}

function _loadingStop(){
//	$("#wait").css("display", "block");
	$("#wait").fadeOut(15);
}

