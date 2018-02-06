<%@page import="com.code.model.UserSessionBean"%>
<%@page import="com.code.session.SessionManager"%>
<%@page import="com.code.session.UserSession"%>
<%
  String usercd ="";
	UserSessionBean sess = SessionManager.getSession(request, response);
	if(sess == null){
		
	}else{
		 usercd = sess.getUsercd();
	}
//	String usercd = sess.getUsercd();
%>

<!doctype html>
<html lang="ko">
<head>	
	<meta charset="UTF-8">
	<meta name="_csrf" content="${_csrf.token}"/>
	<meta name="_csrf_header" content="${_csrf.headerName}"/>
    
    
	<%@include file="fragments/include_profile.jsp"%>
    <script type="text/javascript" src="/js/profile_page_001.js"></script>
    <script type="text/javascript" src="/js/toastr-profile.js"></script>
    <style>
		
    </style>
</head>


<body id="product">
<input type="hidden" id="usercd" value="<%=usercd%>" />

<!-- wrap -->
<div class="wrap" style="padding-top:0;">

	<!-- header -->
   	<div class="header_wrap"><!--<div class="header_wrap search">-->
		<jsp:include page="header_include.jsp"/>
    </div>
	<!-- // header -->

	<!--site slide-->
	<div id="site-cate-slide">
    	<!-- user profile -->
		<div class="usr_pf_wrap">
				<div class="usr_pf"  style="background-image:url(https://thekrazycouponlady.com/wp-content/uploads/2016/07/johnson-and-johnson-750x502.jpg);">
					<!-- change cover -->
					<a href="#none" class="bnt-ch-cover">Update Cover Photo</a>
					<!-- //change cover -->
					
					<!-- user pf -->
					<span class="usr_pic">
						<img src="https://organicthemes.com/demo/profile/files/2012/12/profile_img.png">
						<span class="btn-change-pic"><img src="../../img/users/camera-ico.png"></span>
					</span>
					<!-- //user pf -->
					
                    
					<!-- user name -->
					<h2 class="user-name">NH Website Design Branding Digital Strategy</h2>
					<!-- //user name -->
					<div class="blur"></div>
				</div>
				<!-- action controll -->
				<ul class="tab_cnt cboth">
					<li><a id="usr_pf_posts" href="javascript:" class="on">87 Posts</a></li>
					<li><a id="usr_pf_saves" href="javascript:">152 Saves</a></li>
					<li><a id="usr_pf_about" href="#aboutus-wrapper">About</a></li>
				</ul>
				<!-- //action controll -->
			</div>
		<!-- //user profile -->
    </div>
	<!--end of site slide-->

    <div style="clear: both"></div>    
    <!--main content wrapper-->
	<div id="main-content-wrapper">
		<div id="title-wrap"><div id="content-title"> Latest Ads </div></div>
		<div id="product-main-wrap">
		    <div id="product-row">
		        <div class="pro-dis">
		            <div id="pro-thumb-wrap">
		                <span class="pro-num">1</span>
		                <a href="#" class="pro-img"><img id="wrap" width="100%" height="210px"  src="https://www.customink.com/mms/images/catalog/0845e2199d4e8e2ac9184ccdadb586dc/colors/4600/views/alt/front_large_extended.png"></a>
		            </div><!--end of product thumbnail-->
		            <div id="pro-desc-wrap">
		                <a href="#" class="pro-title">Nike Sport Hoodies [Unixex] all colors (Grey, White, Black)</a>
		                <h1 id="pro-price">$20</h1>
		            </div><!--end of product description-->
		            <div style="clear:both"></div>
		            <div id="pro-action-wrap">
		                <div id="pro-act-left">
		                    <ul>
		                        <li><a href="#" class="pro-location"></a></li>
		                        <li><a href="#" class="pro-date"></a></li>
		                        <li><a href="#" class="pro-share"></a></li>
		                    </ul>
		                </div><!--end of product action left-->
		                <div id="pro-act-right">
		                    <ul>
		                        <li><span class="pro-view-c">133</span><i class="pro-view-c-ico"></i></li>
		                        <li><span class="pro-like-c">23</span><i class="pro-like-c-ico"></i></li>
		                    </ul>
		                </div><!--end of product action right-->
		            </div><!--end of product action wrap-->
		        </div>
		        <div class="pro-dis">
		            <div id="pro-thumb-wrap">
		                <span class="pro-num">2</span>
		                <a href="#" class="pro-img"><img id="wrap" width="100%" height="210px" src="https://sits-pod50.demandware.net/dw/image/v2/AAID_PRD/on/demandware.static/-/Sites-pier1_master/default/dwf8e5e31a/images/2923979/2923979_1.jpg?sw=1600&sh=1600&impolicy=Bypass"></a>
		            </div><!--end of product thumbnail-->
		            <div id="pro-desc-wrap">
		                <a href="#" class="pro-title">Ultimate wooden kitchen chair </a>
		                <h1 id="pro-price">$150</h1>
		            </div><!--end of product description-->
		            <div style="clear:both"></div>
		            <div id="pro-action-wrap">
		                <div id="pro-act-left">
		                    <ul>
		                        <li><a href="#" class="pro-location"></a></li>
		                        <li><a href="#" class="pro-date"></a></li>
		                        <li><a href="#" class="pro-share"></a></li>
		                    </ul>
		                </div><!--end of product action left-->
		                <div id="pro-act-right">
		                    <ul>
		                        <li><span class="pro-view-c">133</span><i class="pro-view-c-ico"></i></li>
		                        <li><span class="pro-like-c">23</span><i class="pro-like-c-ico"></i></li>
		                    </ul>
		                </div><!--end of product action right-->
		            </div><!--end of product action wrap-->
		        </div>
		        <div class="pro-dis">
		            <div id="pro-thumb-wrap">
		                <span class="pro-num">3</span>
		                <a href="#" class="pro-img"><img id="wrap" width="100%" height="210px"  src="https://images-na.ssl-images-amazon.com/images/I/61cbAQatNlL._UL1500_.jpg"></a>
		            </div><!--end of product thumbnail-->
		            <div id="pro-desc-wrap">
		                <a href="#" class="pro-title">Adidas Yeezyboost 350 [Season 3] by Kanye West x Adidas</a>
		                <h1 id="pro-price">$590</h1>
		            </div><!--end of product description-->
		            <div style="clear:both"></div>
		            <div id="pro-action-wrap">
		                <div id="pro-act-left">
		                    <ul>
		                        <li><a href="#" class="pro-location"></a></li>
		                        <li><a href="#" class="pro-date"></a></li>
		                        <li><a href="#" class="pro-share"></a></li>
		                    </ul>
		                </div><!--end of product action left-->
		                <div id="pro-act-right">
		                    <ul>
		                        <li><span class="pro-view-c">133</span><i class="pro-view-c-ico"></i></li>
		                        <li><span class="pro-like-c">23</span><i class="pro-like-c-ico"></i></li>
		                    </ul>
		                </div><!--end of product action right-->
		            </div><!--end of product action wrap-->
		        </div>
		        <div class="pro-dis">
		            <div id="pro-thumb-wrap">
		                <span class="pro-num">4</span>
		                <a href="#" class="pro-img"><img id="wrap" width="100%" height="210px"  src="https://m.media-amazon.com/images/G/01/6pm/landing/2017/shoes/october/outdootfootwear._CB1512153897_.jpg"></a>
		            </div><!--end of product thumbnail-->
		            <div id="pro-desc-wrap">
		                <a href="#" class="pro-title">Vans x FOG[10 in Stocks] for Hypebeast</a>
		                <h1 id="pro-price">$180</h1>
		            </div><!--end of product description-->
		            <div style="clear:both"></div>
		            <div id="pro-action-wrap">
		                <div id="pro-act-left">
		                    <ul>
		                        <li><a href="#" class="pro-location"></a></li>
		                        <li><a href="#" class="pro-date"></a></li>
		                        <li><a href="#" class="pro-share"></a></li>
		                    </ul>
		                </div><!--end of product action left-->
		                <div id="pro-act-right">
		                    <ul>
		                        <li><span class="pro-view-c">133</span><i class="pro-view-c-ico"></i></li>
		                        <li><span class="pro-like-c">23</span><i class="pro-like-c-ico"></i></li>
		                    </ul>
		                </div><!--end of product action right-->
		            </div><!--end of product action wrap-->
		        </div>
		    </div><!--end of product-row-->
		    <div id="product-row">
		        <div class="pro-dis">
		            <div id="pro-thumb-wrap">
		                <span class="pro-num">5</span>
		                <a href="#" class="pro-img"><img id="wrap" width="100%" height="210px"  src="https://www.imore.com/sites/imore.com/files/styles/xlarge_wm_blw/public/field/image/2016/04/macbook-12-inch-rose-gold-space-gray-angle.jpg?itok=aiXxmbef"></a>
		            </div><!--end of product thumbnail-->
		            <div id="pro-desc-wrap">
		                <a href="#" class="pro-title">2XUltra Tide: Use less, more effective</a>
		                <h1 id="pro-price">$5</h1>
		            </div><!--end of product description-->
		            <div style="clear:both"></div>
		            <div id="pro-action-wrap">
		                <div id="pro-act-left">
		                    <ul>
		                        <li><a href="#" class="pro-location"></a></li>
		                        <li><a href="#" class="pro-date"></a></li>
		                        <li><a href="#" class="pro-share"></a></li>
		                    </ul>
		                </div><!--end of product action left-->
		                <div id="pro-act-right">
		                    <ul>
		                        <li><span class="pro-view-c">133</span><i class="pro-view-c-ico"></i></li>
		                        <li><span class="pro-like-c">23</span><i class="pro-like-c-ico"></i></li>
		                    </ul>
		                </div><!--end of product action right-->
		            </div><!--end of product action wrap-->
		        </div>
		        <div class="pro-dis">
		            <div id="pro-thumb-wrap">
		                <span class="pro-num">6</span>
		                <a href="#" class="pro-img"><img id="wrap" width="100%" height="210px"  src="http://www.joshuabretag.com/wp-content/uploads/2014/04/Built-To-Sell-Joshua-Bretag.jpg"></a>
		            </div><!--end of product thumbnail-->
		            <div id="pro-desc-wrap">
		                <a href="#" class="pro-title">2010 Land Rover Range Rover Envoque</a>
		                <h1 id="pro-price">$280,000</h1>
		            </div><!--end of product description-->
		            <div style="clear:both"></div>
		            <div id="pro-action-wrap">
		                <div id="pro-act-left">
		                    <ul>
		                        <li><a href="#" class="pro-location"></a></li>
		                        <li><a href="#" class="pro-date"></a></li>
		                        <li><a href="#" class="pro-share"></a></li>
		                    </ul>
		                </div><!--end of product action left-->
		                <div id="pro-act-right">
		                    <ul>
		                        <li><span class="pro-view-c">133</span><i class="pro-view-c-ico"></i></li>
		                        <li><span class="pro-like-c">23</span><i class="pro-like-c-ico"></i></li>
		                    </ul>
		                </div><!--end of product action right-->
		            </div><!--end of product action wrap-->
		        </div>
		        <div class="pro-dis">
		            <div id="pro-thumb-wrap">
		                <span class="pro-num">7</span>
		                <a href="#" class="pro-img"><img id="wrap" width="100%" height="210px"  src="https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5947/5947110_sd.jpg"></a>
		            </div><!--end of product thumbnail-->
		            <div id="pro-desc-wrap">
		                <a href="#" class="pro-title">The Holy Bible</a>
		                <h1 id="pro-price">$35</h1>
		            </div><!--end of product description-->
		            <div style="clear:both"></div>
		            <div id="pro-action-wrap">
		                <div id="pro-act-left">
		                    <ul>
		                        <li><a href="#" class="pro-location"></a></li>
		                        <li><a href="#" class="pro-date"></a></li>
		                        <li><a href="#" class="pro-share"></a></li>
		                    </ul>
		                </div><!--end of product action left-->
		                <div id="pro-act-right">
		                    <ul>
		                        <li><span class="pro-view-c">133</span><i class="pro-view-c-ico"></i></li>
		                        <li><span class="pro-like-c">23</span><i class="pro-like-c-ico"></i></li>
		                    </ul>
		                </div><!--end of product action right-->
		            </div><!--end of product action wrap-->
		        </div>
		        <div class="pro-dis">
		            <div id="pro-thumb-wrap">
		                <span class="pro-num">8</span>
		                <a href="#" class="pro-img"><img id="wrap" width="100%" height="210px"  src="http://tclelectronics.com.au/wp-content/uploads/48E4900FS_large-2.jpg"></a>
		            </div><!--end of product thumbnail-->
		            <div id="pro-desc-wrap">
		                <a href="#" class="pro-title">27" iMac Retina Display Mid 2015</a>
		                <h1 id="pro-price">$1,275</h1>
		            </div><!--end of product description-->
		            <div style="clear:both"></div>
		            <div id="pro-action-wrap">
		                <div id="pro-act-left">
		                    <ul>
		                        <li><a href="#" class="pro-location"></a></li>
		                        <li><a href="#" class="pro-date"></a></li>
		                        <li><a href="#" class="pro-share"></a></li>
		                    </ul>
		                </div><!--end of product action left-->
		                <div id="pro-act-right">
		                    <ul>
		                        <li><span class="pro-view-c">133</span><i class="pro-view-c-ico"></i></li>
		                        <li><span class="pro-like-c">23</span><i class="pro-like-c-ico"></i></li>
		                    </ul>
		                </div><!--end of product action right-->
		            </div><!--end of product action wrap-->
		        </div>
		    </div><!--end of product-row-->
		</div><!--end of product main wrap-->

    </div>
    <!--end of main content wrapper-->

    <div style="clear: both"></div>    
    <!--save product wrapper-->
	<div id="save-product-wrapper">
		<div id="title-wrap"><div id="content-title" style="width:120px;"> SAVE PRODUCTS </div></div>
		<div id="product-main-wrap">
		    <div id="product-row">
		        <div class="pro-dis">
		            <div id="pro-thumb-wrap">
		                <span class="pro-num">1</span>
		                <a href="#" class="pro-img"><img id="wrap" width="100%" height="210px"  src="https://www.customink.com/mms/images/catalog/0845e2199d4e8e2ac9184ccdadb586dc/colors/4600/views/alt/front_large_extended.png"></a>
		            </div><!--end of product thumbnail-->
		            <div id="pro-desc-wrap">
		                <a href="#" class="pro-title">Nike Sport Hoodies [Unixex] all colors (Grey, White, Black)</a>
		                <h1 id="pro-price">$20</h1>
		            </div><!--end of product description-->
		            <div style="clear:both"></div>
		            <div id="pro-action-wrap">
		                <div id="pro-act-left">
		                    <ul>
		                        <li><a href="#" class="pro-location"></a></li>
		                        <li><a href="#" class="pro-date"></a></li>
		                        <li><a href="#" class="pro-share"></a></li>
		                    </ul>
		                </div><!--end of product action left-->
		                <div id="pro-act-right">
		                    <ul>
		                        <li><span class="pro-view-c">133</span><i class="pro-view-c-ico"></i></li>
		                        <li><span class="pro-like-c">23</span><i class="pro-like-c-ico"></i></li>
		                    </ul>
		                </div><!--end of product action right-->
		            </div><!--end of product action wrap-->
		        </div>
		        <div class="pro-dis">
		            <div id="pro-thumb-wrap">
		                <span class="pro-num">2</span>
		                <a href="#" class="pro-img"><img id="wrap" width="100%" height="210px" src="https://sits-pod50.demandware.net/dw/image/v2/AAID_PRD/on/demandware.static/-/Sites-pier1_master/default/dwf8e5e31a/images/2923979/2923979_1.jpg?sw=1600&sh=1600&impolicy=Bypass"></a>
		            </div><!--end of product thumbnail-->
		            <div id="pro-desc-wrap">
		                <a href="#" class="pro-title">Ultimate wooden kitchen chair </a>
		                <h1 id="pro-price">$150</h1>
		            </div><!--end of product description-->
		            <div style="clear:both"></div>
		            <div id="pro-action-wrap">
		                <div id="pro-act-left">
		                    <ul>
		                        <li><a href="#" class="pro-location"></a></li>
		                        <li><a href="#" class="pro-date"></a></li>
		                        <li><a href="#" class="pro-share"></a></li>
		                    </ul>
		                </div><!--end of product action left-->
		                <div id="pro-act-right">
		                    <ul>
		                        <li><span class="pro-view-c">133</span><i class="pro-view-c-ico"></i></li>
		                        <li><span class="pro-like-c">23</span><i class="pro-like-c-ico"></i></li>
		                    </ul>
		                </div><!--end of product action right-->
		            </div><!--end of product action wrap-->
		        </div>
		        <div class="pro-dis">
		            <div id="pro-thumb-wrap">
		                <span class="pro-num">3</span>
		                <a href="#" class="pro-img"><img id="wrap" width="100%" height="210px"  src="https://images-na.ssl-images-amazon.com/images/I/61cbAQatNlL._UL1500_.jpg"></a>
		            </div><!--end of product thumbnail-->
		            <div id="pro-desc-wrap">
		                <a href="#" class="pro-title">Adidas Yeezyboost 350 [Season 3] by Kanye West x Adidas</a>
		                <h1 id="pro-price">$590</h1>
		            </div><!--end of product description-->
		            <div style="clear:both"></div>
		            <div id="pro-action-wrap">
		                <div id="pro-act-left">
		                    <ul>
		                        <li><a href="#" class="pro-location"></a></li>
		                        <li><a href="#" class="pro-date"></a></li>
		                        <li><a href="#" class="pro-share"></a></li>
		                    </ul>
		                </div><!--end of product action left-->
		                <div id="pro-act-right">
		                    <ul>
		                        <li><span class="pro-view-c">133</span><i class="pro-view-c-ico"></i></li>
		                        <li><span class="pro-like-c">23</span><i class="pro-like-c-ico"></i></li>
		                    </ul>
		                </div><!--end of product action right-->
		            </div><!--end of product action wrap-->
		        </div>
		        <div class="pro-dis">
		            <div id="pro-thumb-wrap">
		                <span class="pro-num">4</span>
		                <a href="#" class="pro-img"><img id="wrap" width="100%" height="210px"  src="https://m.media-amazon.com/images/G/01/6pm/landing/2017/shoes/october/outdootfootwear._CB1512153897_.jpg"></a>
		            </div><!--end of product thumbnail-->
		            <div id="pro-desc-wrap">
		                <a href="#" class="pro-title">Vans x FOG[10 in Stocks] for Hypebeast</a>
		                <h1 id="pro-price">$180</h1>
		            </div><!--end of product description-->
		            <div style="clear:both"></div>
		            <div id="pro-action-wrap">
		                <div id="pro-act-left">
		                    <ul>
		                        <li><a href="#" class="pro-location"></a></li>
		                        <li><a href="#" class="pro-date"></a></li>
		                        <li><a href="#" class="pro-share"></a></li>
		                    </ul>
		                </div><!--end of product action left-->
		                <div id="pro-act-right">
		                    <ul>
		                        <li><span class="pro-view-c">133</span><i class="pro-view-c-ico"></i></li>
		                        <li><span class="pro-like-c">23</span><i class="pro-like-c-ico"></i></li>
		                    </ul>
		                </div><!--end of product action right-->
		            </div><!--end of product action wrap-->
		        </div>
		    </div><!--end of product-row-->
		    <div id="product-row">
		        <div class="pro-dis">
		            <div id="pro-thumb-wrap">
		                <span class="pro-num">5</span>
		                <a href="#" class="pro-img"><img id="wrap" width="100%" height="210px"  src="https://www.imore.com/sites/imore.com/files/styles/xlarge_wm_blw/public/field/image/2016/04/macbook-12-inch-rose-gold-space-gray-angle.jpg?itok=aiXxmbef"></a>
		            </div><!--end of product thumbnail-->
		            <div id="pro-desc-wrap">
		                <a href="#" class="pro-title">2XUltra Tide: Use less, more effective</a>
		                <h1 id="pro-price">$5</h1>
		            </div><!--end of product description-->
		            <div style="clear:both"></div>
		            <div id="pro-action-wrap">
		                <div id="pro-act-left">
		                    <ul>
		                        <li><a href="#" class="pro-location"></a></li>
		                        <li><a href="#" class="pro-date"></a></li>
		                        <li><a href="#" class="pro-share"></a></li>
		                    </ul>
		                </div><!--end of product action left-->
		                <div id="pro-act-right">
		                    <ul>
		                        <li><span class="pro-view-c">133</span><i class="pro-view-c-ico"></i></li>
		                        <li><span class="pro-like-c">23</span><i class="pro-like-c-ico"></i></li>
		                    </ul>
		                </div><!--end of product action right-->
		            </div><!--end of product action wrap-->
		        </div>
		        <div class="pro-dis">
		            <div id="pro-thumb-wrap">
		                <span class="pro-num">6</span>
		                <a href="#" class="pro-img"><img id="wrap" width="100%" height="210px"  src="http://www.joshuabretag.com/wp-content/uploads/2014/04/Built-To-Sell-Joshua-Bretag.jpg"></a>
		            </div><!--end of product thumbnail-->
		            <div id="pro-desc-wrap">
		                <a href="#" class="pro-title">2010 Land Rover Range Rover Envoque</a>
		                <h1 id="pro-price">$280,000</h1>
		            </div><!--end of product description-->
		            <div style="clear:both"></div>
		            <div id="pro-action-wrap">
		                <div id="pro-act-left">
		                    <ul>
		                        <li><a href="#" class="pro-location"></a></li>
		                        <li><a href="#" class="pro-date"></a></li>
		                        <li><a href="#" class="pro-share"></a></li>
		                    </ul>
		                </div><!--end of product action left-->
		                <div id="pro-act-right">
		                    <ul>
		                        <li><span class="pro-view-c">133</span><i class="pro-view-c-ico"></i></li>
		                        <li><span class="pro-like-c">23</span><i class="pro-like-c-ico"></i></li>
		                    </ul>
		                </div><!--end of product action right-->
		            </div><!--end of product action wrap-->
		        </div>
		        <div class="pro-dis">
		            <div id="pro-thumb-wrap">
		                <span class="pro-num">7</span>
		                <a href="#" class="pro-img"><img id="wrap" width="100%" height="210px"  src="https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5947/5947110_sd.jpg"></a>
		            </div><!--end of product thumbnail-->
		            <div id="pro-desc-wrap">
		                <a href="#" class="pro-title">The Holy Bible</a>
		                <h1 id="pro-price">$35</h1>
		            </div><!--end of product description-->
		            <div style="clear:both"></div>
		            <div id="pro-action-wrap">
		                <div id="pro-act-left">
		                    <ul>
		                        <li><a href="#" class="pro-location"></a></li>
		                        <li><a href="#" class="pro-date"></a></li>
		                        <li><a href="#" class="pro-share"></a></li>
		                    </ul>
		                </div><!--end of product action left-->
		                <div id="pro-act-right">
		                    <ul>
		                        <li><span class="pro-view-c">133</span><i class="pro-view-c-ico"></i></li>
		                        <li><span class="pro-like-c">23</span><i class="pro-like-c-ico"></i></li>
		                    </ul>
		                </div><!--end of product action right-->
		            </div><!--end of product action wrap-->
		        </div>
		        <div class="pro-dis">
		            <div id="pro-thumb-wrap">
		                <span class="pro-num">8</span>
		                <a href="#" class="pro-img"><img id="wrap" width="100%" height="210px"  src="http://tclelectronics.com.au/wp-content/uploads/48E4900FS_large-2.jpg"></a>
		            </div><!--end of product thumbnail-->
		            <div id="pro-desc-wrap">
		                <a href="#" class="pro-title">27" iMac Retina Display Mid 2015</a>
		                <h1 id="pro-price">$1,275</h1>
		            </div><!--end of product description-->
		            <div style="clear:both"></div>
		            <div id="pro-action-wrap">
		                <div id="pro-act-left">
		                    <ul>
		                        <li><a href="#" class="pro-location"></a></li>
		                        <li><a href="#" class="pro-date"></a></li>
		                        <li><a href="#" class="pro-share"></a></li>
		                    </ul>
		                </div><!--end of product action left-->
		                <div id="pro-act-right">
		                    <ul>
		                        <li><span class="pro-view-c">133</span><i class="pro-view-c-ico"></i></li>
		                        <li><span class="pro-like-c">23</span><i class="pro-like-c-ico"></i></li>
		                    </ul>
		                </div><!--end of product action right-->
		            </div><!--end of product action wrap-->
		        </div>
		    </div><!--end of product-row-->
		</div><!--end of product main wrap-->

    </div>
    <!--save product wrapper-->

	<div style="clear: both"></div>    
    <!--aboutus wrapper-->
	<div id="aboutus-wrapper">
		<div id="title-wrap"><div id="content-title" style="width:50px;left:0;"> ABOUT </div></div>
		<div tabindex="0" class="rJ">
	        <div id="btariaid-148" class="s8">My shop's detail</div>
	        <div class="o3">
	            <div role="tablist" class="tablist qI">
	                <div id="seller_contact" class="tab-list-tab f0 jhBYqb active">Contact and Basic Info</div>
	                <div id="seller_place" class="tab-list-tab f0">Places You've Lived</div>
	                <div id="seller_detail" class="tab-list-tab f0">Details About You</div>
	                <div id="seller_feedback" class="tab-list-tab f0">Feedbacks</div>
	            </div>
	            
	            <div id="labels_contact" class="settings-tab-panel pM">
	                <div class="i7 n5S7V" tabindex="-1">
	                    <div class="jU">
	                        <div>CONTACT INFORMATION</div>
	                    </div>
	                    <div>
	                        <div tabindex="" class="i5">
	                            <div tabindex="0" class="Dd">
									<div class="op rQ uNXFec">
								        <p>Mobile Phones</p>
										<div class="phone" id="phone">
									        <!-- <span>(+855) 96-327-6991<a href="#none" id="deleteph"></a></span>
									        <span>(+855) 70-327-691<a href="#none" id="deleteph"></a></span> -->
										</div>
									</div>
								    <div class="phone-image"><img src="../../img/ico/plus.png" width="15px" height="15px"></div>
								</div>
								<div class="tech_cont mgb5 phono">
									<input type="text" style="width:300px;height: 23px;" value="" placeholder="more phone number" id="mophno" required>
									<span class="btn_style1_b" id="btnaddph"><a href="#none">add</a></span>
									<span class="btn_style1_b" id="btndoneph"><a href="#none">done</a></span>
								</div>
	                        </div>
	                        <div tabindex="" role="listitem" class="i5">
	                            <div tabindex="-1" role="button" class="Dd">
	                                <div class="op rQ uNXFec">Email</div>
	                                <ul class="email">
	                                	<!-- <li id="email">nana@gmail.com</li>
	                                	<span style="display:none;">
	                                		<input type="text" value="nana@gmail.com" onkeypress="chkKey(event, this)" onfocus="this.setSelectionRange(1000,1001)" />
	                                		<span class="btn_style1_b" id="btnsaveemail"><a href="#none">save</a></span>
	                                	</span> -->
	                                </ul>
									<div class="edit-email"><img src="../../img/ico/pencil.png" width="15px" height="15px"></div>
	                            </div>
	                        </div>
	                        <div tabindex="" role="listitem" class="i5">
	                            <div tabindex="-1" role="button" class="Dd">
	                                <div class="op rQ uNXFec">Facebook</div>
	                                <ul class="facebook">
	                                	<li id="fb">http://facebook.com/smileshop.nana</li>
	                                	<span style="display:none;">
	                                		<input type="text" value="http://facebook.com/smileshop.nana" onkeypress="chkKey(event, this)" onfocus="this.setSelectionRange(1000,1001)" />
	                                		<span class="btn_style1_b" id="btnsavefb"><a href="#none">save</a></span>
	                                	</span>
	                                </ul>
	                                <div class="edit-fb"><img src="../../img/ico/pencil.png" width="15px" height="15px"></div>
	                            </div>
	                        </div>
	                        
        	                <div class="jU"><div>WEBSITES AND SOCIAL LINKS</div></div>
	                        <div tabindex="" role="listitem" class="i5">
	                            <div tabindex="-1" role="button" class="Dd">
	                                <div class="op rQ uNXFec">Websites</div>
	                                <ul id="website" class="website" style="display:inline-grid">
	                                	<!-- <li id="fb" class="weblink"><a href="https://www.khmer24.com/en/" target="_blank">www.khmer24.com<span></span></a></li> -->
	                                	<li id="fb" class="weblink">www.khmer24.com<span></span></li>
	                                	<li id="fb" class="weblink">www.khmer24.com<span></span></li>
	                                </ul>
	                                <div class="website-image"><img src="../../img/ico/plus.png" width="15px" height="15px"></div>
	                            </div>
	                            <div class="tech_cont mgb5 moreweb">
									<input type="text" style="width:300px;height: 23px;" value="" placeholder="more phone number" id="moreweb">
									<span class="btn_style1_b" id="btnselectweb"><a href="#none">select</a></span>
									<span class="btn_style1_b" id="btnsaveweb"><a href="#none">save</a></span>
								</div>
	                        </div>
	                        
	                        <div class="jU"><div>BASIC INFORMATION</div></div>
	                        <div tabindex="" role="listitem" class="i5">
	                            <div tabindex="-1" role="button" class="Dd">
	                                <div class="op rQ Fy" style="margin-right: -210px;overflow:visible;flex:1;">
	                                    <div>Birth Date</div>
	                                </div>
	                                <div style="overflow:visible;flex:1;">
		                                <ul class="birthday">
		                                
		                                </ul>
	                                </div>
	                                <div class="edit-BD"><img src="../../img/ico/pencil.png" width="15px" height="15px"></div>
	                            </div>
	                        </div>
	                        <div  tabindex="" role="listitem" class="i5">
	                            <div tabindex="-1" role="button" class="Dd">
	                                <div  class="op rQ uNXFec" style="margin-right: -210px;overflow:visible;flex:1;">
	                                    <div>Gender</div>
	                                </div>
	                                <div style="overflow:visible;flex:1;">
		                                <ul class="gender">
		                                	<li id="gender">Male</li>
		                                	<li style="display:none;">
		                                		<select id="selectGD">
		                                			<option data-gender='M'>Male</option>
		                                			<option data-gender='F'>Femal</option>
		                                			<option data-gender='A'>All</option>
		                                		</select>
		                                		<span>
		                                			<span class="btn_style1_b" id="btnsaveGD"><a href="#none">save</a></span>
		                                		</span>
		                                	</li>
		                                </ul>
	                                </div>
	                                <div class="edit-gender"><img src="../../img/ico/pencil.png" width="15px" height="15px"></div>
	                            </div>
	                        </div>
	                        <div id="wait" style="display:none;width:69px;height:89px;position:absolute;top:50%;left:50%;padding:2px;">
		                    	<img src="../../img/gift/ajax-loader.gif" width="30" height="30" />
	                        </div>
	                    </div>
	                </div>
	            </div>
	            
	            <div id="labels_place" class="settings-tab-panel pM">
					<div class="slide" id="slide5" data-slide="5" data-stellar-background-ratio="0.5">
						<div class="container clearfix">
							<div class="content grid_2 contactype active" id="contact-mapClick">
								<div class="icon-map"></div>
								<p>Map</p>
							</div>
							<div class="content grid_2 contactype" id="contact-carClick">
								<div class="icon-car"></div>
								<p>Car</p>
							</div>
							<div class="content grid_2 contactype" id="contact-busClick">
								<div class="icon-bus"></div>
								<p>Bus</p>
							</div>
					
							<div class="content grid_2 contactype" id="contact-bikeClick">
								<div class="icon-bike-2"></div>
								<p>Bicycle</p>
							</div>
							<div class="content grid_2 contactype" id="contact-phoneClick">
								<div class="icon-phone"></div>
								<p>Telephone</p>
							</div>
							<div class="content grid_2 contactype omega" id="contact-mailClick">
								<div class="icon-mail"></div>
								<p>E-Mail</p>
							</div>
					
							<div class="content grid_12 contactmap" id="contact-map">
								<div class="grid_4">
									<h2>CONTACT</h2>
									<p class="information"><span class="icon-location"> ADRESS: </span>Maecenas faucibus mollis interdum.</p>
									<p class="information"><span class="icon-phone-2"> TELEPHONE: </span> 0 (123) 456 789</p>
									<a class="btn" href="https://goo.gl/maps/8GlbZ" target="_blank" style="margin-top:13px;">Get Direction</a>
									<div class="clear"></div>
								</div>
								<div class="grid_8 omega">
									<div id="map_canvas"></div>
								</div>
							</div>
					
							<div class="content grid_12 contactmap dn" id="contact-car">
								<div class="grid_4">
									<h2>CAR</h2>
									<p class="information"><span class="icon-location"> ADRESS: </span>Maecenas faucibus mollis interdum.</p>
									<br><br>
									<div class="btn"><span class="icon-checkmark"></span> Car Park</div>
								</div>
								<div class="grid_8 omega">
									<div class="grid_6 omega"><strong>Lorem ipsum</strong> Nulla vitae elit libero, a pharetra augue. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.
					
					
									<a class="btn" href="https://goo.gl/maps/8GlbZ" target="_blank">Get Direction</a>
					
									</div>
								</div>
							</div>
					
							<div class="content grid_12 contactmap dn" id="contact-bus">
								<div class="grid_4">
									<h2>BUS</h2>
									<p class="information"><span class="icon-location"> ADRESS: </span>Maecenas faucibus mollis interdum.</p>
									<br><br>
									<div class="btn"><span class="icon-checkmark"></span> OTOPARK MEVCUT</div>
								</div>
								<div class="grid_8 omega">
									<div class="grid_6 omega" id="scroll2">
										Sed posuere consectetur est at lobortis. Donec ullamcorper nulla non metus auctor fringilla. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna.
					
					Maecenas sed diam eget risus varius blandit sit amet non magna. Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed posuere consectetur est at lobortis. Etiam porta sem malesuada magna mollis euismod. Sed posuere consectetur est at lobortis.
					
					Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec ullamcorper nulla non metus auctor fringilla. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Curabitur blandit tempus porttitor. Sed posuere consectetur est at lobortis.
									</div>
								</div>
							</div>
					
							<div class="content grid_12 contactmap dn" id="contact-bike">
								<div class="grid_4">
									<h2>BIKE</h2>
									<p class="information"><span class="icon-location"> ADRESS: </span>Maecenas faucibus mollis interdum.</p>
									<br><br>
									<div class="btn"><span class="icon-checkmark"></span> TRAVEL ALONG ALONE</div>
								</div>
								<div class="grid_8 omega">
									<div class="grid_6 omega">
										<span class="icon-calendar"> Maecenas faucibus mollis interdum.
									</div>
								</div>
							</div>
					
					
							<div class="content grid_12 contactmap dn" id="contact-phone">
								<div class="grid_4">
									<h2>TELEPHONE</h2>
									<p class="information"><span class="icon-location"> ADRESS: </span>Maecenas faucibus mollis interdum.</p>
								</div>
								<div class="grid_8 omega">
									<div class="grid_6 omega">0 (123) 456 789</div>
								</div>
							</div>
					
					
							<div class="content grid_12 contactmap dn" id="contact-mail">
								<div class="grid_4">
									<h2>E-MAIL</h2>
									<p class="information"><span class="icon-location"> ADRESS: </span>Maecenas faucibus mollis interdum.</p>
								</div>
								<div class="grid_8 omega">
									<div class="grid_6 omega"><a href="mailto:mail@loremipsum.com?Subject=Hello" class="btn">mail@loremipsum.com</a></div>
								</div>
							</div>
					
							<div class="clear"></div>
					
						</div>
					</div>	            
      
	            </div>

	            <div id="labels_detail" class="settings-tab-panel pM">
	                <div class="i7 y0">
						<div>
	                        <div class="zB">
								<input checked="checked" id="btariaid-152" type="checkbox" class="iY">
								<label for="btariaid-152"class="me">Keyboard shortcuts</label>
							</div>
	                        <div class="iV">Tip: Hit "Shift + ?" to see the keyboard shortcuts</div>
						</div>
	                    <div jstcache="3724" jsinstance="1">
	                        <div jstcache="3725">
	                            <div jstcache="3726">
	                                <div jstcache="3729">
	                                    <div class="zB">
	                                        <input id="btariaid-155" type="checkbox" jstcache="3732"class="iY" jsan="7.iY,0.id,0.type,22.jsaction">
	                                        <label for="btariaid-155" jstcache="3733" class="me" jsan="7.me,0.for">Redirect Gmail to inbox.google.com</label>
	                                    </div>
	                                    <div jstcache="3734" class="iV" jsan="7.iV">Always take me to Inbox when I visit Gmail in a web browser. You can always get back to Gmail by clicking on the link in the main menu.</div>
	                                </div>
	                                <div jstcache="3730" style="display:none"></div>
	                            </div>
	                        </div>
	                    </div>
	                    <div jstcache="3724" jsinstance="*2">
	                        <div jstcache="3725">
	                            <div jstcache="3726">
	                                <div jstcache="3729">
	                                    <div class="zB">
	                                        <input id="btariaid-158" type="checkbox" jstcache="3732"class="iY" jsan="7.iY,0.id,0.type,22.jsaction">
	                                        <label for="btariaid-158" jstcache="3733" class="me" jsan="7.me,0.for">Make notifications stay on the screen longer</label>
	                                    </div>
	                                    <div jstcache="3734" class="iV" jsan="7.iV">Notifications will stay on screen for 30 seconds</div>
	                                </div>
	                                <div jstcache="3730" style="display:none"></div>
	                            </div>
	                        </div>
	                    </div>
	                    <button jstcache="3727" jsaction="global.delete_search_history" class="BX H dH" jsan="7.BX,7.H,7.dH,22.jsaction">CLEAR SEARCH HISTORY</button>
	                </div>
	                <div jstcache="3720" class="nl">
	                    <button tabindex="0" jstcache="3778"class="Jc H dH">DONE</button>
	                </div>
	            </div>

	            <div id="labels_feedback" class="settings-tab-panel pM">
					<div class="wrap_feedback">
					  <div class="feedback">
					    <h1>Feedback Form</h1>
					    <form action="">
					      <div class="rowfeedback">
					        <input type="text" id="text" class="rowfeedback_input" required>
					        <label for="text" class="labelfeedback">enter you name</label>
					      </div>
					      <div class="rowfeedback">
					        <input type="email" id="emailfeedback" class="rowfeedback_input" required>
					        <label for="email" class="labelfeedback">your email address</label>
					      </div>
					      <div class="rowfeedback">
					        <textarea name="message" id="message" class="rowfeedback_input" cols="30" rows="5" required></textarea>
					        <label for="message" class="labelfeedback">message</label>
					      </div>
					      <div class="rowfeedback">
					        <div class="buttonfeedback">
					          <button type="submit">Submit</button>
					        </div>
					      </div>
					    </form>
					  </div>
					</div>
	            </div>
	            	        
	        </div>
		</div>
		<!--end of aboutus content -->
	
	</div>

	
    <div style="clear: both"></div>
	<!-- footer -->
	<footer style="position:absolute;margin-top:40px;">
		<div class="footerwrap">
			<div class="botmenu">
				<a href="javascrip:">Information</a>
				<a href="javascrip:">Terms and Conditions</a>
				<a href="javascrip:">Privacy Policy</a>
				<a href="javascrip:">Terms of Service</a>
			</div>
			<address>
				<p>
					<strong>Address </strong> No.197, Khan Russey Keo, Phnom Penh Cambodia,<br>
					<span><strong>TEL / FAX</strong> 02-598-8240 / 02-598-8241 </span>
				</p>
			</address>
		</div>
		<div class="txtmsg">
			Please Do Not Hesitate to Contact US.<br>
			Copyright Ã¢ÂÂ Online Shopping. All rights reserved
		</div>
	</footer>
	<!-- //footer -->

</div>
<!-- //wrap -->

</body>
</html>