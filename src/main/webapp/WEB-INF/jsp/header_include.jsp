<!DOCTYPE html>
<html lang="ko" class="leaf">
<head> 
    <script type="text/javascript" src="/js/header_include.js"></script>
<style>

</style>
</head>

<body>

		<!-- header_inner top-bar-wrap -->
        <div class="header_inner">
			<!-- logo -->
            <h1 class="logo"><a href="http://localhost:8080/"><img src="img/bg/bg_logo.png" alt="logo"></a></h1>
			<!-- //logo -->

			<!-- button_menu_mobile -->
            <button type="button" class="btn_gnb">GNB</button>
			<!-- //button_menu_mobile -->

			<!-- search_box_header -->
            <div id="searchview" onclick="schView()">
                <fieldset>
                    <legend>search engine</legend>
                    <input type="text" class="txt" value="Product name, area name, @ shop name, initial search" disabled="">
                </fieldset>
            </div>
            
			<!-- //search_box_header -->
			<div class="row">
				<!-- <div class="col-sm-3"> -->
					<!-- aleim -->
			        <button type="button" id="dropdown-toggle" class="btn_alrim new" onclick="gotalklist()"><span>Notice</span></button>
					<!--<button type="button" class="btn_alrim new" onclick="gotalklist()"><span>Notice</span></button>-->
					<!-- //aleim -->
				<!-- </div> -->
					<ul class="notification-menu">
			        	<li>
			            	<img class="avatar" src="https://s3.amazonaws.com/codecademy-content/projects/2/feedster/wr2.svg">
			                <h3>William Roberts II</h3>
			                <p>Clean as a whistle</p>
			            </li>
			            <li>
							<img class="avatar" src="https://s3.amazonaws.com/codecademy-content/projects/2/feedster/fn.svg">
			                <h3>Faheem Najm</h3>
			                <p>All I do is win</p>
			            </li>
			            <li>
			            	<img class="avatar" src="https://s3.amazonaws.com/codecademy-content/projects/2/feedster/wr2.svg">
			                <h3>William Roberts II</h3>
			                <p>Clean as a whistle</p>
			            </li>
			            <li>
							<img class="avatar" src="https://s3.amazonaws.com/codecademy-content/projects/2/feedster/fn.svg">
			                <h3>Faheem Najm</h3>
			                <p>All I do is win</p>
			            </li>
			            <li>
			            	<img class="avatar" src="https://s3.amazonaws.com/codecademy-content/projects/2/feedster/wr2.svg">
			                <h3>William Roberts II</h3>
			                <p>Clean as a whistle</p>
			            </li>
			            <li>
							<img class="avatar" src="https://s3.amazonaws.com/codecademy-content/projects/2/feedster/fn.svg">
			                <h3>Faheem Najm</h3>
			                <p>All I do is win</p>
			            </li>
				</ul>
				
				<div class="chat_list">
					<!-- <div class="col-sm-3"> -->
						<div class="ico_chat">
							<a href="javascript:void(0);"><img src="img/bg/chat.png" width="22px" height="22px" /></a>
						</div>
					<!-- </div> -->
					
					<div class="wrapper">
					    <div class="container-chat">
					        <div class="left">
					            <ul class="people">
					                <li class="person" data-chat="person1">
					                    <img src="https://s13.postimg.org/ih41k9tqr/img1.jpg" alt="" />
					                    <span class="name">Thomas Bangalter</span>
					                    <span class="time">2:09 PM</span>
					                    <span class="preview">I was wondering...</span>
					                </li>
					                <li class="person" data-chat="person2">
					                    <img src="https://s3.postimg.org/yf86x7z1r/img2.jpg" alt="" />
					                    <span class="name">Dog Woofson</span>
					                    <span class="time">1:44 PM</span>
					                    <span class="preview">I've forgotten how it felt before</span>
					                </li>
					                <li class="person" data-chat="person3">
					                    <img src="https://s3.postimg.org/h9q4sm433/img3.jpg" alt="" />
					                    <span class="name">Louis CK</span>
					                    <span class="time">2:09 PM</span>
					                    <span class="preview">But we’re probably gonna need a new carpet.</span>
					                </li>
					                <li class="person" data-chat="person4">
					                    <img src="https://s3.postimg.org/quect8isv/img4.jpg" alt="" />
					                    <span class="name">Bo Jackson</span>
					                    <span class="time">2:09 PM</span>
					                    <span class="preview">It’s not that bad...</span>
					                </li>
					                <li class="person" data-chat="person5">
					                    <img src="https://s16.postimg.org/ete1l89z5/img5.jpg" alt="" />
					                    <span class="name">Michael Jordan</span>
					                    <span class="time">2:09 PM</span>
					                    <span class="preview">Wasup for the third time like is you bling bitch</span>
					                </li>
					                <li class="person" data-chat="person6">
					                    <img src="https://s30.postimg.org/kwi7e42rh/img6.jpg" alt="" />
					                    <span class="name">Drake</span>
					                    <span class="time">2:09 PM</span>
					                    <span class="preview">howdoyoudoaspace</span>
					                </li>
					            </ul>
					        </div>
					    </div>
					</div>
				</div>
				
				<div class="chatbox-holder">
				  <!-- <div class="chatbox">
				    <div class="chatbox-top">
				      <div class="chatbox-avatar">
				        <a target="_blank" href="https://www.facebook.com/mfreak"><img src="https://gravatar.com/avatar/2449e413ade8b0c72d0a15d153febdeb?s=512&d=https://codepen.io/assets/avatars/user-avatar-512x512-6e240cf350d2f1cc07c2bed234c3a3bb5f1b237023c204c782622e80d6b212ba.png" /></a> 
				      </div>
				      <div class="chat-partner-name">
				        <span class="status online"></span>
				        <a target="_blank" href="https://www.facebook.com/mfreak">Mamun Khandaker</a>
				      </div>
				      <div class="chatbox-icons">
				        <a href="javascript:void(0);"><i class="fa fa-minus"></i></a>
				        <a href="javascript:void(0);"><i class="fa fa-close"></i></a>       
				      </div>      
				    </div>
				    
				    <div class="chat-messages">
				       <div class="message-box-holder">
				        <div class="message-box">
				          Hello
				        </div>
				      </div>
				      
				      <div class="message-box-holder">
				        <div class="message-sender">
				           Mamun Khandaker
				         </div>
				        <div class="message-box message-partner">
				          Hi.
				        </div>
				      </div>
				      
				      <div class="message-box-holder">
				        <div class="message-box">
				          How are you doing?
				        </div>
				      </div>
				      
				      <div class="message-box-holder">
				        <div class="message-sender">
				           Mamun Khandaker
				         </div>
				        <div class="message-box message-partner">
				          I'm doing fine. How about you?
				        </div>
				      </div>
				      
				      <div class="message-box-holder">
				        <div class="message-box">
				          I am fine.
				        </div>
				      </div>
				      
				      <div class="message-box-holder">
				        <div class="message-box">
				          Do you know why I knocked you today?
				        </div>
				      </div>
				      
				      <div class="message-box-holder">
				        <div class="message-box">
				          There's something important I would like to share with you. Do you have some time?
				        </div>
				      </div>
				      
				      <div class="message-box-holder">
				        <div class="message-sender">
				           Mamun Khandaker
				         </div>
				        <div class="message-box message-partner">
				          Yeah sure. Let's meet in the Einstein cafe this evening and discuss the matter.
				        </div>
				      </div>
				      
				      <div class="message-box-holder">
				        <div class="message-sender">
				           Mamun Khandaker
				         </div>
				        <div class="message-box message-partner">
				          I thought of coming to your place and discuss about it but I had to finish my projects and I didn't have enough time to go out of the house.
				        </div>
				      </div>      
				    </div>
				    
				    <div class="chat-input-holder">
				      <textarea class="chat-input"></textarea>
				      <input type="submit" value="Send" class="message-send" />
				    </div>
				    <div class="attachment-panel">
				      <a href="#" class="fa fa-thumbs-up"></a>
				      <a href="#" class="fa fa-camera"></a>
				      <a href="#" class="fa fa-video-camera"></a>
				      <a href="#" class="fa fa-image"></a>
				      <a href="#" class="fa fa-paperclip"></a>
				      <a href="#" class="fa fa-link"></a>
				      <a href="#" class="fa fa-trash-o"></a>
				      <a href="#" class="fa fa-search"></a>
				    </div>
				  </div> -->
				</div>
				
				<div class="more_option_list">
					<!-- <div class="col-sm-3"> -->
						<div id="navbox-trigger" style="position:absolute;right:3%;top:15.505050505050px;">
							<a href="javascript:void(0);"><img src="img/bg/big-and-small-dots.png" width="25px" height="25px" /></a>
						</div>
					<!-- </div> -->
					
					<div id="navigation-bar" class="navigation-bar">
					  <!-- <div class="bar">
					    <button id="navbox-trigger" class="navbox-trigger"><i class="fa fa-lg fa-th"></i></button>
					  </div> -->
					  <div class="navbox" style="display:none;">
					    <div class="navbox-tiles">
					    	<a href="#" class="tile"><div class="icon"><i class="fa fa-home"></i></div><span class="title">Home</span></a>
					    	<a href="#" class="tile"><div class="icon"><i class="fa fa-calendar"></i></div><span class="title">Calendar</span></a>
					    	<a href="#" class="tile"><div class="icon"><i class="fa fa-envelope-o"></i></div><span class="title">Email</span></a>
					    	<a href="#" class="tile"><div class="icon"><i class="fa fa-file-image-o"></i></div><span class="title">Photos</span></a>
					      	<a href="#" class="tile"><div class="icon"><i class="fa fa-cloud"></i></div><span class="title">Weather</span></a>
					      	<a href="#" class="tile"><div class="icon"><i class="fa fa-file-movie-o"></i></div><span class="title">Movies</span></a>
						</div>
					  </div>
					</div>
				</div>
				
				<div class="setting_list">
					<!-- <div class="col-sm-3"> -->
						<div id="setting_trigger" style="position:absolute;right:0;top:15.505050505050px;">
							<a href="javascript:void(0);"><img src="img/bg/settings-cogwheel.png" width="24px" height="23px" /></a>
						</div>
					<!-- </div> -->
				</div>
				
				<dropdown class="wrap_setting">
				  <ul class="animate">
				    <li class="animate">My Account<i class="fa fa-user float-right"></i></li>
				    <li class="animate">Profile<i class="fa fa-suitcase float-right"></i></li>
				    <li class="animate">Logout<i class="fa fa-sign-out float-right"></i></li>
				  </ul>
				</dropdown>				
			</div>

			<!-- search_wrap -->
            <div class="searchwrap">
                <button type="button" class="btn_back" onclick="schHide()">search engine</button>
                <div id="searcharea">
                    <fieldset>
                        <legend>search engine</legend>
                        <input type="text" id="main_search_input_text" class="txt" placeholder="Product name, area name, @ shop name, initial search">
                        <button type="button" class="btn_sch" onclick="goSearchPage()">search engine</button>
                    </fieldset>
                </div>
            </div>
			<!-- //search_wrap -->
        </div>
		<!-- //header_inner -->

</body>
</html>