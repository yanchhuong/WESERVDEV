<%@page import="com.code.session.SessionManager"%>
<%@page import="com.code.model.UserSessionBean"%>
<%@page import="com.code.session.UserSession"%>
<%

/* UserSessionBean sess = SessionManager.getSession(request, response);
SessionManager.logout(request, response);
String usercd = sess.getUsercd(); */

%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta name="_csrf_header" content="${_csrf.headerName}"/>
   	<meta name="_csrf" content="${_csrf.token}"/>
    <!-- default header name is X-CSRF-TOKEN -->
    <meta charset="utf-8">
    <title>Home page</title>

	 <!-- BEGIN Pre-requisites -->
	  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js">
	  </script>
	  <script src="https://apis.google.com/js/client:platform.js?onload=start" async defer>
	  </script>
	  <!-- END Pre-requisites -->
    <%@include file="fragments/include_admin.jsp"%>
    
    
    
<script src="/js/test_dao.js"></script>       
   <style type="text/css">
        ul, li {
            list-style: none;
        }

        #wrapper {
            width: 900px;
            margin: 20px auto;
        }

        .data-container {
            margin-top: 20px;
        }

        .data-container ul {
            padding: 0;
            margin: 0;
        }

        .data-container li {
            margin-bottom: 5px;
            padding: 5px 10px;
            background: #eee;
            color: #666;
        }
    </style>
</head>
<body>

<%-- <input type="hidden" value="<%=usercd%>"/> --%>
<div class="example">
    <div class="container">
        <div class="jumbotron">
            <nav role="navigation">
                <div class="alert alert-info">
                    <center><h3> WELCOME TO AJAX HOME</h3></center>
                </div>
                <div class="alert alert-info btn-block">
                    Server Time ${time}
                </div>
                <div class="alert alert-info btn-block">
                    Message: ${sessionScope.username}
                </div>
                
                <form id='putFile'>
                     <input type="button" value="Hello Ajax" id="ajaxtest">
                     <input type="button" value="Add" id="btAdd">
                     <input type="button" value="delete" id="tbdelete">
                     <input type="text" id="keysearch"/>
                     <input name="myFile" type="file" id="txtfile">
                     <br>
                </form>
                
                <form enctype="text/plain" method="POST" name="putFile" id="putFile">
		           <div>
		            Bucket: <input type="text" name="bucket" id="bucket"/>
		            File Name: <input type="text" name="fileName" id="fileName"/>
		            <br /> File Contents: <br />
		            <textarea name="content" id="content" rows="3" cols="60"></textarea>
		            <br />
		            <input type="submit" onclick='uploadFile(this)' value="Upload Content" />
                   </div>
               </form>
            </nav>
        </div>

    </div>
    <button id="signinButton">Sign in with Google</button>
    
    <div id="wrapper">
	    <section>
	        <div class="data-container"></div>
	        <div id="pagination-demo1"></div>
	        <div class="data-container"></div>
	        <div id="pagination-demo2"></div>
	    </section>
	</div>
</div>




<script>
var auth2;
start();
function start() {
	 console.log("start");
     gapi.load('auth2', function() {
       auth2 = gapi.auth2.init({
         client_id: '520435578367-lpcvpipldnciot8k75akbvll3tipf82g.apps.googleusercontent.com',
         // Scopes to request in addition to 'profile' and 'email'
         //scope: 'additional_scope'
       });
     });
 }
function signInCallback(authResult) {
  if (authResult['code']) {
	  
	  cosole.log(authResult);

    // Hide the sign-in button now that the user is authorized, for example:
    $('#signinButton').attr('style', 'display: none');

    // Send the code to the server
    $.ajax({
      type: 'POST',
      url: 'http://localhost:8080',
      // Always include an `X-Requested-With` header in every AJAX request,
      // to protect against CSRF attacks.
      headers: {
        'X-Requested-With': 'XMLHttpRequest'
      },
      contentType: 'application/octet-stream; charset=utf-8',
      success: function(result) {
        // Handle or verify the server response.
      },
      processData: false,
      data: authResult['code']
    });
  } else {
    // There was an error.
  }
}
 $('#signinButton').click(function() {
    // signInCallback defined in step 6.
    auth2.grantOfflineAccess().then(signInCallback);
  });
  

</script>

</body>
</html>
