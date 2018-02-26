<!DOCTYPE html>
<html lang="en" >

<head>
  	 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 	<!-- default header name is X-CSRF-TOKEN -->
 	<meta name="_csrf" content="${_csrf.token}"/>
 	<meta name="_csrf_header" content="${_csrf.headerName}"/>
  	<title>Direct Messaging</title>
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
    <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700,300' rel='stylesheet' type='text/css'>

	<script src="https://use.typekit.net/hoy3lrg.js"></script>
	<script>try{Typekit.load({ async: true });}catch(e){}</script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
  	<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.2/css/font-awesome.min.css'>
  	
    <link rel="stylesheet" type="text/css" href="../css/realtimechat.css" media="all"> 
    <script src="/js-lib/jquery-2.1.0.min.js"></script>
    <script src="/js-lib/sockjs-0.3.4.js"></script>
    <script src="/js-lib/stomp.js"></script>
  
</head>

<body>

	<div id="frame">
		<div id="sidepanel">
			<div id="profile">
				<div class="wrap">
					<img id="profile-img" src="http://emilcarlsson.se/assets/mikeross.png" class="online" alt="" />
					<p>Mike Ross</p>
					<i class="fa fa-chevron-down expand-button" aria-hidden="true"></i>
					<div id="status-options">
						<ul>
							<li id="status-online" class="active"><span class="status-circle"></span> <p>Online</p></li>
							<li id="status-away"><span class="status-circle"></span> <p>Away</p></li>
							<li id="status-busy"><span class="status-circle"></span> <p>Busy</p></li>
							<li id="status-offline"><span class="status-circle"></span> <p>Offline</p></li>
						</ul>
					</div>
					<div id="expanded">
						<label for="twitter"><i class="fa fa-facebook fa-fw" aria-hidden="true"></i></label>
						<input name="twitter" type="text" value="mikeross" />
						<label for="twitter"><i class="fa fa-twitter fa-fw" aria-hidden="true"></i></label>
						<input name="twitter" type="text" value="ross81" />
						<label for="twitter"><i class="fa fa-instagram fa-fw" aria-hidden="true"></i></label>
						<input name="twitter" type="text" value="mike.ross" />
					</div>
				</div>
			</div>
			<div id="search">
				<label for=""><i class="fa fa-search" aria-hidden="true"></i></label>
				<input type="text" placeholder="Search contacts..." />
			</div>
			<div id="contacts">
				<ul>
					<li class="contact">
						<div class="wrap">
							<span class="contact-status online"></span>
							<img src="http://emilcarlsson.se/assets/louislitt.png" alt="" />
							<div class="meta">
								<div class="name" style="float:left;">Louis Litt</div>
								<div style="float:right;">9:30 PM<i style="margin-left: 8px;" class="fa fa-envelope" aria-hidden="true"></i></div>
								<p class="preview" style="margin-top: 20px;">You just got LITT up, Mike.</p>
							</div>
						</div>
					</li>
					<li class="contact active">
						<div class="wrap">
							<span class="contact-status busy"></span>
							<img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
							<div class="meta">
								<div class="name" style="float:left;">Harvey Specter</div>
								<div style="float:right;">7:30 PM</div>
								<p class="preview" style="margin-top: 20px;">You just got LITT up, Mike.</p>
							</div>
						</div>
					</li>
					<li class="contact">
						<div class="wrap">
							<span class="contact-status away"></span>
							<img src="http://emilcarlsson.se/assets/rachelzane.png" alt="" />
							<div class="meta">
								<div class="name" style="float:left;">Rachel Zane</div>
								<div style="float:right;">2:45 PM<i style="margin-left: 8px;" class="fa fa-envelope" aria-hidden="true"></i></div>
								<p class="preview" style="margin-top: 20px;">You just got LITT up, Mike.</p>
							</div>
						</div>
					</li>
					<li class="contact">
						<div class="wrap">
							<span class="contact-status online"></span>
							<img src="http://emilcarlsson.se/assets/donnapaulsen.png" alt="" />
							<div class="meta">
								<div class="name" style="float:left;">Donna Paulsen</div>
								<div style="float:right;">12:30 PM</div>
								<p class="preview" style="margin-top: 20px;">You just got LITT up, Mike.</p>
							</div>
						</div>
					</li>
					<li class="contact">
						<div class="wrap">
							<span class="contact-status busy"></span>
							<img src="http://emilcarlsson.se/assets/jessicapearson.png" alt="" />
							<div class="meta">
								<div class="name" style="float:left;">Jessica Pearson</div>
								<div style="float:right;">2:30 PM</div>
								<p class="preview" style="margin-top: 20px;">You just got LITT up, Mike.</p>
							</div>
						</div>
					</li>
					<li class="contact">
						<div class="wrap">
							<span class="contact-status"></span>
							<img src="http://emilcarlsson.se/assets/haroldgunderson.png" alt="" />
							<div class="meta">
								<div class="name" style="float:left;">Harold Gunderson</div>
								<div style="float:right;">12:30 PM</div>
								<p class="preview" style="margin-top: 20px;">You just got LITT up, Mike.</p>
							</div>
						</div>
					</li>
					<li class="contact">
						<div class="wrap">
							<span class="contact-status"></span>
							<img src="http://emilcarlsson.se/assets/danielhardman.png" alt="" />
							<div class="meta">
								<div class="name" style="float:left;">Daniel Hardman</div>
								<div style="float:right;">12:30 PM</div>
								<p class="preview" style="margin-top: 20px;">You just got LITT up, Mike.</p>
							</div>
						</div>
					</li>
					<li class="contact">
						<div class="wrap">
							<span class="contact-status busy"></span>
							<img src="http://emilcarlsson.se/assets/katrinabennett.png" alt="" />
							<div class="meta">
								<div class="name" style="float:left;">Katrina Bennett</div>
								<div style="float:right;">12:30 PM</div>
								<p class="preview" style="margin-top: 20px;">You just got LITT up, Mike.</p>
							</div>
						</div>
					</li>
					<li class="contact">
						<div class="wrap">
							<span class="contact-status"></span>
							<img src="http://emilcarlsson.se/assets/charlesforstman.png" alt="" />
							<div class="meta">
								<div class="name" style="float:left;">Charles Forstman</div>
								<div style="float:right;">12:30 PM</div>
								<p class="preview" style="margin-top: 20px;">You just got LITT up, Mike.</p>
							</div>
						</div>
					</li>
					<li class="contact">
						<div class="wrap">
							<span class="contact-status"></span>
							<img src="http://emilcarlsson.se/assets/jonathansidwell.png" alt="" />
							<div class="meta">
								<div class="name" style="float:left;">Jonathan Sidwell</div>
								<div style="float:right;">12:30 PM</div>
								<p class="preview" style="margin-top: 20px;">You just got LITT up, Mike.</p>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<div id="bottom-bar">
				<button id="addcontact"><i class="fa fa-user-plus fa-fw" aria-hidden="true"></i> <span>Add contact</span></button>
				<button id="settings"><i class="fa fa-cog fa-fw" aria-hidden="true"></i> <span>Settings</span></button>
			</div>
		</div>
		<div class="content">
			<div class="contact-profile" id="reciever" data-id="AAA">
				<img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
				<p>Harvey Specter</p>
				<div class="social-media">
					<i class="fa fa-facebook" aria-hidden="true"></i>
					<i class="fa fa-twitter" aria-hidden="true"></i>
					 <i class="fa fa-instagram" aria-hidden="true"></i>
				</div>
			</div>
			<div class="messages">
				<ul>
					<li class="sent">
						<img src="http://emilcarlsson.se/assets/mikeross.png" alt="" />
						<p>How the hell am I supposed to get a jury to believe you when I am not even sure that I do?!</p>
					</li>
					<li class="replies">
						<img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
						<p>When you're backed against the wall, break the god damn thing down.</p>
					</li>
					<li class="replies">
						<img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
						<p>Excuses don't win championships.</p>
					</li>
					<li class="sent">
						<img src="http://emilcarlsson.se/assets/mikeross.png" alt="" />
						<p>Oh yeah, did Michael Jordan tell you that?</p>
					</li>
					<li class="replies">
						<img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
						<p>No, I told him that.</p>
					</li>
					<li class="replies">
						<img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
						<p>What are your choices when someone puts a gun to your head?</p>
					</li>
					<li class="sent">
						<img src="http://emilcarlsson.se/assets/mikeross.png" alt="" />
						<p>What are you talking about? You do what they say or they shoot you.</p>
					</li>
					<li class="replies">
						<img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
						<p>Wrong. You take the gun, or you pull out a bigger one. Or, you call their bluff. Or, you do any one of a hundred and forty six other things.</p>
					</li>
				</ul>
			</div>
			<div class="message-input">
				<div class="wrap">
				<input type="text" placeholder="Write your message..." id="txtCHAT" />
				<i class="fa fa-paperclip attachment" aria-hidden="true"></i>
				<button class="submit send"><i class="fa fa-paper-plane" aria-hidden="true"></i></button>
				</div>
			</div>
		</div>
	</div>
 <!-- <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
 -->
<script  src="/js/realtimechat.js"></script>




</body>

</html>
