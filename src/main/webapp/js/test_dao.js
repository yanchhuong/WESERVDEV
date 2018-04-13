var _this;
$(document).ready(function(){
	 // on load 
	 //ListAll();
	   Session();
       $("#btfacebooklog").click( "click", function() {
		   
    	   window.fbAsyncInit = function() {
    		    FB.init({
    		      appId      : 'your-app-id',
    		      xfbml      : true,
    		      version    : 'v2.7'
    		    });
    		    FB.AppEvents.logPageView();
    		  };

    		  (function(d, s, id){
    		     var js, fjs = d.getElementsByTagName(s)[0];
    		     if (d.getElementById(id)) {return;}
    		     js = d.createElement(s); js.id = id;
    		     js.src = "//connect.facebook.net/en_US/sdk.js";
    		     fjs.parentNode.insertBefore(js, fjs);
    		   }(document, 'script', 'facebook-jssdk'));
		   
	   });
       
       $("#txtfile").on('change', function(){
    	   uploadFormData();
       });
	  
});
function uploadFormData(){
	  var csrfHeader = $("meta[name='_csrf_header']").attr("content");
	  var csrfToken  = $("meta[name='_csrf']").attr("content");
	   var formData = new FormData();
	    formData.append('file', $('input[type=file]')[0].files[0]);
	  
	    $.ajax({
	        url         :'google_cloud/uploadimg_test',
		    data		: formData,
		    cache   	: true,
		    type		: 'POST',
		    dataType	: 'text',
		    processData	: false,
		    contentType	: false,
		    beforeSend: function(xhr) {
		      xhr.setRequestHeader(csrfHeader, csrfToken);
		    },
		    success: function(data){
		            data = JSON.parse(data);
		            console.log(data);
		    }
	    });
};
function Session(id){
	var input={};
	$.ajax({
    	type   : 'GET',
	    url    : "/test/list_user_session",
	    cache  : true
	})
    .done(function(dat) {
    	console.log(dat);
	})
}


