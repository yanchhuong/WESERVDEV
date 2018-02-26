//Global 

var stompClient = null;
var socket = null;
var whoami = null;
$(document).ready(function(e){
	//Onload
	
	LoadData();

	$('.chat[data-chat=person2]').addClass('active-chat');
	$('.person[data-chat=person2]').addClass('active');

	$('.left .person').mousedown(function(){
	    if ($(this).hasClass('.active')) {
	        return false;
	    } else {
	        var findChat = $(this).attr('data-chat');
	        var personName = $(this).find('.name').text();
	        $('.right .top .name').html(personName);
	        $('.chat').removeClass('active-chat');
	        $('.left .person').removeClass('active');
	        $(this).addClass('active');
	        $('.chat[data-chat = '+findChat+']').addClass('active-chat');
	    }
	});
	
	
	$(".send").on("click",function(){
		var receiver = $("#reciever").attr("data-id");
	//	var container = $(".active-chat");
	//	var html= '<div class="bubble me">'+$("#txtCHAT").val()+'</div>';
	//	container.append(html);
		sendMessageTo(receiver,$("#txtCHAT").val());
		$("#txtCHAT").val("");
		newMessage();
	});
	$("#txtCHAT").on("keypress",function(event){
		var receiver = $("#reciever").attr("data-id");
		if (event.which == 13) {
		//	var container = $(".active-chat");
		//	var html= '<div class="bubble me">'+$("#txtCHAT").val()+'</div>';
		//	container.append(html);
			sendMessageTo(receiver,$("#txtCHAT").val());
			$("#txtCHAT").val("");
			newMessage();
         }
	});
	
	//initialchat
	 connect();
	 
	 //new chat box
	 $(".messages").animate({ scrollTop: $(document).height() }, "fast");

	 $("#profile-img").click(function() {
	 	$("#status-options").toggleClass("active");
	 });

	 $(".expand-button").click(function() {
	   	$("#profile").toggleClass("expanded");
	 	$("#contacts").toggleClass("expanded");
	 });

	 $("#status-options ul li").click(function() {
	 	$("#profile-img").removeClass();
	 	$("#status-online").removeClass("active");
	 	$("#status-away").removeClass("active");
	 	$("#status-busy").removeClass("active");
	 	$("#status-offline").removeClass("active");
	 	$(this).addClass("active");
	 	
	 	if($("#status-online").hasClass("active")) {
	 		$("#profile-img").addClass("online");
	 	} else if ($("#status-away").hasClass("active")) {
	 		$("#profile-img").addClass("away");
	 	} else if ($("#status-busy").hasClass("active")) {
	 		$("#profile-img").addClass("busy");
	 	} else if ($("#status-offline").hasClass("active")) {
	 		$("#profile-img").addClass("offline");
	 	} else {
	 		$("#profile-img").removeClass();
	 	};
	 	
	 	$("#status-options").removeClass("active");
	 });

	 $(document).delegate("#contacts ul li", "click", function(){
	 	if(!$(this).hasClass('active')){
	 		$(".contact").removeClass('active');
	 		$(this).addClass('active');
	 		
	 		$(this).children().find('i').fadeOut(1000);
	 		var imgSrc = $(this).children().find("img").attr("src");
	 		var personName = $(this).children().find(".name").text();
	 		$(".contact-profile").find("img").attr("src",imgSrc);
	 		$(".contact-profile").find("p").text(personName);
	 		$(".contact-profile").attr("data-id",$(this).attr('id'));
	 	}
	 });

	 function newMessage() {
	 	message = $(".message-input input").val();
	 	if($.trim(message) == '') {
	 		return false;
	 	}
	 	$('<li class="replies"><img src="http://emilcarlsson.se/assets/mikeross.png" alt="" /><p>' + message + '</p></li>').appendTo($('.messages ul'));
	 	$('.message-input input').val(null);
	 	$('.contact.active .preview').html('<span>You: </span>' + message);
	 	$(".messages").animate({ scrollTop: $(document).height() }, "fast");
	 };

//	 $('.submit').click(function() {
//	   newMessage();
//	 });

//	 $(window).on('keydown', function(e) {
//	   if (e.which == 13) {
//	     newMessage();
//	     return false;
//	   }
//	 });
	 
	 
	 
	 
});
function LoadData(){
	var csrfHeader = $("meta[name='_csrf_header']").attr("content");
	var csrfToken  = $("meta[name='_csrf']").attr("content");
	var input = {};
	    
	$.ajax({
    	type   : 'POST',
	    url    : "/message/get_userchat_list",
	    data   : JSON.stringify(input),
	    cache: false,
        dataType: 'json',
    	contentType: 'application/json',
        async: false,
        beforeSend: function(xhr) {
            xhr.setRequestHeader(csrfHeader, csrfToken);
        },
	})
    .done(function(dat) {
    	var contact = $("#contacts ul").html("");
    	var html= "";
    	$.each(dat.OUT_REC,function(i,v){
        	  html    += '<li class="contact" id="'+v.chatId+'">'
        	  html    +='<div class="wrap">'
        	  html    +='<span class="contact-status online"></span>'
		      if(v.randname!=null){
	        	  html    +='<img src="'+document.location.origin+"/upload_file/files/"+ v.randname+'" alt="">'

		      }else{
		          html    +=' <img src="http://emilcarlsson.se/assets/katrinabennett.png" alt="" />'
		      }
        	  html    +='<div class="meta">'
        	  html    +='<div class="name" style="float:left;">'+v.fullname+'</div>'
        	  html    +='<div style="float:right;">9:30 PM<i style="margin-left: 8px; display: none;" class="fa fa-envelope" aria-hidden="true"></i></div>'
        	  html    +='<p class="preview" style="margin-top: 20px;">You just got LITT up, Mike.</p>'
        	  html    +='</div>'
        	  html    +='</div>'
        	  html    +='</li>';
    	})
    	contact.append(html);
    })
};
function connect() {
        socket = new SockJS('/chat');
        stompClient = Stomp.over(socket);
        stompClient.connect('', '', function(frame) {
          whoami = frame.headers['user-name'];
          console.log('whoami: ' + whoami);
          console.log('Connected: ' + frame);
          stompClient.subscribe('/user/queue/messages', function(message) {
        	  console.log('message BODY: ' + JSON.parse(message.body));
              showMessage(JSON.parse(message.body));
          });
          stompClient.subscribe('/topic/active', function(activeMembers) {
            showActive(activeMembers);  
            console.log('TEST:'+ activeMembers);
          });
     });
}
      
function showActive(activeMembers) {
        renderActive(activeMembers.body);
        stompClient.send('/app/activeUsers', {}, '');
}
function renderActive(activeMembers) {
	    $("#userList").html("");
    	console.log('SHow :' +activeMembers);
        var previouslySelected = $('.user-selected').text();
        var usersWithPendingMessages = new Object();
       
        $.each($('.pending-messages'), function(index, value) {
             usersWithPendingMessages[value.id.substring(5)] = true; // strip the user-
             alert(value.id.substring(5));
        });
        var members = $.parseJSON(activeMembers);
        console.log("meme");
        console.log(members);
        var userDiv = $('<div>', {id: 'users'});
        $.each(members, function(index, value) {
            if (value === whoami) {
              return true;
            }
            var myId='user-' + value;
            var html="";
            html+='<li class="person" data-chat="'+value+'" id="'+myId+'">';
            html+='   <img src="https://s13.postimg.org/ih41k9tqr/img1.jpg" alt="" />';
            html+='       <span class="name">'+value+'</span>';
            html+='       <span class="time">2:09 PM</span>';
            html+='       <span class="preview">I was wondering...</span>';
            html+='   </li>';
            $("#userList").append(html);
        
          });
 }
      
function disconnect() {
        stompClient.disconnect();
        console.log("Disconnected");
}
 function sendMessageTo(user,message) {
        var chatInput = '#input-chat-' + user;
        var message   = $("#txtCHAT").val();
        console.log("chatInput TESETTESET"+chatInput);
        if (!message.length) {
           return;
        }
   	
        stompClient.send("/app/chat",{"content-type": "application/json;charset=UTF-16"}, JSON.stringify({
          'recipient': user,
          'message' : message
        }));
        $(chatInput).val('');
        $(chatInput).focus();        
}

//function getChatWindow(userName) {
//        var existingChats = $('.chat active-chat');
//        var elementId   = 'chat-' + userName;
//        var containerId = elementId + '-container';
//        var selector = '#' + containerId;
//        var inputId  = 'input-' + elementId;
//        //if (!$(selector).length) {
//          var chatContainer = $('<div>', {id: containerId, class: 'chat-container'});
//          chatContainer.attr("data-chat",userName);
//          var chatWindow = $('<div>', {id: elementId, class: 'bubble'});
//          var chatInput = $('<input>', {id: inputId, type: 'text',
//            placeholder: 'Enter a message.  Something deep and meaningful.'});
//          var chatSubmit = $('<a>', {id: 'submit-' + elementId, class: 'write-link send'})
//        
//
//          if (existingChats.length) {
//              chatContainer.hide();
//          }
//        return $(selector);
//}

function showMessage(message) {
        var chatWindowTarget = (message.recipient === whoami) ? message.sender : message.recipient;
        
//        var userDisplay = message.sender === whoami ? 'bubble me' : 'bubble you';
        var userDisplay = message.sender === whoami ? 'sent' : 'replies';
//        var container = $(".active-chat");
        var container = $(".messages ul");
        var html = '<li class="'+userDisplay+'">';
			html += '<img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="">';
			html += '<p>'+message.message+'</p>';
			html += '</li>';
//		var html = '<li class="'+userDisplay+'">'+message.message+'</li>';
		container.append(html);
		$(".messages").animate({ scrollTop: $(document).height() }, "fast");
        
        if (message.sender !== whoami) {
          var sendingUser = $('#user-' + message.sender);
          if (!sendingUser.hasClass('user-selected') && !sendingUser.hasClass('pending-messages')) {
             sendingUser.append(newMessageIcon());
             sendingUser.addClass('pending-messages');
          }
        }
}
function newMessageIcon() {
        var newMessage = $('<span>', {class: 'newmessage'});
        newMessage.html('&#x2709;');
        return newMessage;
}
	


