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
</head>
<style>
.blur{
        /*background: url(images/1500x500.jpg) no-repeat center center fixed;*/
        /*background-size: 65.5%;*/
        /*background-position: top;*/
        overflow: hidden;
        opacity: .7;
        background-color: #c1c1c1;
        /*filter: blur(16px);*/
        position: absolute;
        height: 110px;
        top: 212px;
        left: 0;
        right: 0;
        bottom: 0;
}
.blur:hover{
    opacity: 0;
</style>
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
					
                    <div class="blur" style=""></div>
					<!-- user name -->
					<h2 class="user-name">NH Website Design Branding Digital Strategy</h2>
					<!-- //user name -->
				</div>
				<!-- action controll -->
				<ul class="tab_cnt cboth">
					<li><a id="usr_pf_posts" href="javascript:" class="on">87 Posts</a></li>
					<li><a id="usr_pf_saves" href="javascript:">152 Saves</a></li>
					<li><a id="usr_pf_about" href="javascript:">About</a></li>
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
		<div tabindex="0" jstcache="3715" class="rJ">
	        <div id="btariaid-148" class="s8">Settings</div>
	        <div class="o3">
	            <div role="tablist" class="tablist qI">
	                <div id="seller_contact" class="tab-list-tab f0 jhBYqb active">Contact and Basic Info</div>
	                <div id="seller_place" class="tab-list-tab f0">Places You've Lived</div>
	                <div id="seller_detail" class="tab-list-tab f0">Details About You</div>
	                <div id="seller_feedback" class="tab-list-tab f0">Feedbacks</div>
	            </div>
	            
	            <div id="labels_contact" class="settings-tab-panel pM">
	                <div jstcache="3719" class="i7 n5S7V" jsan="t-cG-4GftLyvU,7.n5S7V,7.i7,0.tabindex,0.role" tabindex="-1" role="list">
	                    <div class="jU">
	                        <div>Name</div>
	                        <div class="nx">Bundle messages in the inbox</div>
	                    </div>
	                    <div>
	                        <div jstcache="3760" tabindex="" role="listitem" jsinstance="0" class="i5">
	                            <div tabindex="0" role="button" jstcache="3764" jsaction="jsl._" class="Dd"><img srcset="//ssl.gstatic.com/bt/C3341AA7A1A076756462EE2E5CD71C11/2x/ic_purchases_24px_clr_r3_2x.png 2x" alt="Purchases" aria-hidden="true" jstcache="3765" src="//ssl.gstatic.com/bt/C3341AA7A1A076756462EE2E5CD71C11/1x/ic_purchases_24px_clr_r3.png" class="rA" jsan="7.rA,8.src,0.srcset,0.alt,0.aria-hidden">
	                                <div jstcache="3766" class="op rQ uNXFec" jsan="7.op,7.rQ,7.uNXFec,t-uotZNicTYo0,t-rovM6Rd5iuo,t-LVMpBivqdSU">Purchases</div>
	                                <div jstcache="3767" style="display:none"></div><img srcset="//www.gstatic.com/images/icons/material/system/2x/settings_black_24dp.png 2x" alt="Settings" title="Settings" aria-hidden="true" jstcache="3768" src="//www.gstatic.com/images/icons/material/system/1x/settings_black_24dp.png" class="cC" jsan="7.cC,8.src,0.srcset,0.alt,0.title,0.aria-hidden">
	                            </div>
	                            <div data-vis="Fd" tabindex="0" role="button" jstcache="3769" aria-pressed="true" jsaction="jsl._" class="Jz" jsan="0.data-vis,0.tabindex,0.role,22.jsaction,t-eefmBo-cMuA,7.Jz,0.aria-pressed">
	                                <div jstcache="1456" class="yk" jsan="7.yk"><span>On</span>
	                                </div>
	                                <div aria-hidden="true" jstcache="1457" class="xN" jsan="0.aria-hidden,7.xN"><span>Off</span>
	                                </div>
	                            </div>
	                        </div>
	                        <div jstcache="3760" tabindex="" role="listitem" jsinstance="1" class="i5">
	                            <div tabindex="-1" role="button" jstcache="3764" jsaction="jsl._" class="Dd"><img srcset="//ssl.gstatic.com/bt/C3341AA7A1A076756462EE2E5CD71C11/2x/ic_finance_24px_clr_r3_2x.png 2x" alt="Finance" aria-hidden="true" jstcache="3765" src="//ssl.gstatic.com/bt/C3341AA7A1A076756462EE2E5CD71C11/1x/ic_finance_24px_clr_r3.png" class="rA" jsan="7.rA,8.src,0.srcset,0.alt,0.aria-hidden">
	                                <div jstcache="3766" class="op rQ uNXFec" jsan="7.op,7.rQ,7.uNXFec,t-uotZNicTYo0,t-rovM6Rd5iuo,t-7aCxA-XmgI0">Finance</div>
	                                <div jstcache="3767" style="display:none"></div><img srcset="//www.gstatic.com/images/icons/material/system/2x/settings_black_24dp.png 2x" alt="Settings" title="Settings" aria-hidden="true" jstcache="3768" src="//www.gstatic.com/images/icons/material/system/1x/settings_black_24dp.png" class="cC" jsan="7.cC,8.src,0.srcset,0.alt,0.title,0.aria-hidden">
	                            </div>
	                            <div data-vis="Fd" tabindex="-1" role="button" jstcache="3769" aria-pressed="true" jsaction="jsl._" class="Jz" jsan="0.data-vis,0.tabindex,0.role,22.jsaction,t-eefmBo-cMuA,7.Jz,0.aria-pressed">
	                                <div jstcache="1456" class="yk" jsan="7.yk"><span>On</span>
	                                </div>
	                                <div aria-hidden="true" jstcache="1457" class="xN" jsan="0.aria-hidden,7.xN"><span>Off</span>
	                                </div>
	                            </div>
	                        </div>
	                        <div jstcache="3760" tabindex="" role="listitem" jsinstance="2" class="i5">
	                            <div tabindex="-1" role="button" jstcache="3764" jsaction="jsl._" class="Dd"><img srcset="//ssl.gstatic.com/bt/C3341AA7A1A076756462EE2E5CD71C11/2x/ic_social_24px_clr_r3_2x.png 2x" alt="Social" aria-hidden="true" jstcache="3765" src="//ssl.gstatic.com/bt/C3341AA7A1A076756462EE2E5CD71C11/1x/ic_social_24px_clr_r3.png" class="rA" jsan="7.rA,8.src,0.srcset,0.alt,0.aria-hidden">
	                                <div jstcache="3766" class="op rQ uNXFec" jsan="7.op,7.rQ,7.uNXFec,t-uotZNicTYo0,t-rovM6Rd5iuo,t-5mI--FTE4sU">Social</div>
	                                <div jstcache="3767" style="display:none"></div><img srcset="//www.gstatic.com/images/icons/material/system/2x/settings_black_24dp.png 2x" alt="Settings" title="Settings" aria-hidden="true" jstcache="3768" src="//www.gstatic.com/images/icons/material/system/1x/settings_black_24dp.png" class="cC" jsan="7.cC,8.src,0.srcset,0.alt,0.title,0.aria-hidden">
	                            </div>
	                            <div data-vis="Fd" tabindex="-1" role="button" jstcache="3769" aria-pressed="true" jsaction="jsl._" class="Jz" jsan="0.data-vis,0.tabindex,0.role,22.jsaction,t-eefmBo-cMuA,7.Jz,0.aria-pressed">
	                                <div jstcache="1456" class="yk" jsan="7.yk"><span>On</span>
	                                </div>
	                                <div aria-hidden="true" jstcache="1457" class="xN" jsan="0.aria-hidden,7.xN"><span>Off</span>
	                                </div>
	                            </div>
	                        </div>
	                        <div jstcache="3760" tabindex="" role="listitem" jsinstance="3" class="i5">
	                            <div tabindex="-1" role="button" jstcache="3764" jsaction="jsl._" class="Dd"><img srcset="//ssl.gstatic.com/bt/C3341AA7A1A076756462EE2E5CD71C11/2x/ic_offers_24px_clr_r3_2x.png 2x" alt="Promos" aria-hidden="true" jstcache="3765" src="//ssl.gstatic.com/bt/C3341AA7A1A076756462EE2E5CD71C11/1x/ic_offers_24px_clr_r3.png" class="rA" jsan="7.rA,8.src,0.srcset,0.alt,0.aria-hidden">
	                                <div jstcache="3766" class="op rQ uNXFec" jsan="7.op,7.rQ,7.uNXFec,t-uotZNicTYo0,t-rovM6Rd5iuo,t-e_DcWfTxBuc">Promos</div>
	                                <div jstcache="3767" style="display:none"></div><img srcset="//www.gstatic.com/images/icons/material/system/2x/settings_black_24dp.png 2x" alt="Settings" title="Settings" aria-hidden="true" jstcache="3768" src="//www.gstatic.com/images/icons/material/system/1x/settings_black_24dp.png" class="cC" jsan="7.cC,8.src,0.srcset,0.alt,0.title,0.aria-hidden">
	                            </div>
	                            <div data-vis="Fd" tabindex="-1" role="button" jstcache="3769" aria-pressed="true" jsaction="jsl._" class="Jz" jsan="0.data-vis,0.tabindex,0.role,22.jsaction,t-eefmBo-cMuA,7.Jz,0.aria-pressed">
	                                <div jstcache="1456" class="yk" jsan="7.yk"><span>On</span>
	                                </div>
	                                <div aria-hidden="true" jstcache="1457" class="xN" jsan="0.aria-hidden,7.xN"><span>Off</span>
	                                </div>
	                            </div>
	                        </div>
	                        <div jstcache="3760" tabindex="" role="listitem" jsinstance="4" class="i5">
	                            <div tabindex="-1" role="button" jstcache="3764" jsaction="jsl._" class="Dd"><img srcset="//ssl.gstatic.com/bt/C3341AA7A1A076756462EE2E5CD71C11/2x/ic_custom-cluster_24px_g60_r3_2x.png 2x" alt="__Freelance/Elance" aria-hidden="true" jstcache="3765" src="//ssl.gstatic.com/bt/C3341AA7A1A076756462EE2E5CD71C11/1x/ic_custom-cluster_24px_g60_r3.png" class="rA" jsan="7.rA,8.src,0.srcset,0.alt,0.aria-hidden">
	                                <div jstcache="3766" class="op rQ Fy" jsvs="false;" jsan="7.op,7.rQ,7.Fy,t-uotZNicTYo0,t-rovM6Rd5iuo,t-cuRgIaQHnok"><span jstcache="1388" style="display:none"></span>
	                                    <jsl jstcache="1389">__Freelance/Elance</jsl>
	                                </div>
	                                <div jstcache="3767" class="sP" jsan="7.sP,t-U6RzqOSstfk,t-5K85Ng3iQNc,t-RRT-IqUfPXA">Skip the inbox</div><img srcset="//www.gstatic.com/images/icons/material/system/2x/settings_black_24dp.png 2x" alt="Settings" title="Settings" aria-hidden="true" jstcache="3768" src="//www.gstatic.com/images/icons/material/system/1x/settings_black_24dp.png" class="cC" jsan="7.cC,8.src,0.srcset,0.alt,0.title,0.aria-hidden">
	                            </div>
	                            <div data-vis="Hd" tabindex="-1" role="button" jstcache="3769" aria-pressed="false" jsaction="jsl._" class="Jz" jsan="0.data-vis,0.tabindex,0.role,22.jsaction,t-eefmBo-cMuA,7.Jz,0.aria-pressed">
	                                <div aria-hidden="true" jstcache="1456" class="xr" jsan="0.aria-hidden,7.xr"><span>On</span>
	                                </div>
	                                <div jstcache="1457" class="xI" jsan="7.xI"><span>Off</span>
	                                </div>
	                            </div>
	                        </div>
	                        <div jstcache="3760" tabindex="" role="listitem" jsinstance="5" class="i5">
	                            <div tabindex="-1" role="button" jstcache="3764" jsaction="jsl._" class="Dd"><img srcset="//ssl.gstatic.com/bt/C3341AA7A1A076756462EE2E5CD71C11/2x/ic_custom-cluster_24px_g60_r3_2x.png 2x" alt="_Developer/_Dev-Money-Jobs" aria-hidden="true" jstcache="3765" src="//ssl.gstatic.com/bt/C3341AA7A1A076756462EE2E5CD71C11/1x/ic_custom-cluster_24px_g60_r3.png" class="rA" jsan="7.rA,8.src,0.srcset,0.alt,0.aria-hidden">
	                                <div jstcache="3766" class="op rQ Fy" jsvs="false;" jsan="7.op,7.rQ,7.Fy,t-uotZNicTYo0,t-rovM6Rd5iuo,t-cuRgIaQHnok"><span jstcache="1388" style="display:none"></span>
	                                    <jsl jstcache="1389">_Developer/_Dev-Money-Jobs</jsl>
	                                </div>
	                                <div jstcache="3767" class="sP" jsan="7.sP,t-U6RzqOSstfk,t-5K85Ng3iQNc,t-RRT-IqUfPXA">Skip the inbox</div><img srcset="//www.gstatic.com/images/icons/material/system/2x/settings_black_24dp.png 2x" alt="Settings" title="Settings" aria-hidden="true" jstcache="3768" src="//www.gstatic.com/images/icons/material/system/1x/settings_black_24dp.png" class="cC" jsan="7.cC,8.src,0.srcset,0.alt,0.title,0.aria-hidden">
	                            </div>
	                            <div data-vis="Hd" tabindex="-1" role="button" jstcache="3769" aria-pressed="false" jsaction="jsl._" class="Jz" jsan="0.data-vis,0.tabindex,0.role,22.jsaction,t-eefmBo-cMuA,7.Jz,0.aria-pressed">
	                                <div aria-hidden="true" jstcache="1456" class="xr" jsan="0.aria-hidden,7.xr"><span>On</span>
	                                </div>
	                                <div jstcache="1457" class="xI" jsan="7.xI"><span>Off</span>
	                                </div>
	                            </div>
	                        </div>
	                        <div jstcache="3760" tabindex="" role="listitem" jsinstance="6" class="i5">
	                            <div tabindex="-1" role="button" jstcache="3764" jsaction="jsl._" class="Dd"><img srcset="//ssl.gstatic.com/bt/C3341AA7A1A076756462EE2E5CD71C11/2x/ic_custom-cluster_24px_g60_r3_2x.png 2x" alt="_Developer/BlogPost" aria-hidden="true" jstcache="3765" src="//ssl.gstatic.com/bt/C3341AA7A1A076756462EE2E5CD71C11/1x/ic_custom-cluster_24px_g60_r3.png" class="rA" jsan="7.rA,8.src,0.srcset,0.alt,0.aria-hidden">
	                                <div jstcache="3766" class="op rQ Fy" jsvs="false;" jsan="7.op,7.rQ,7.Fy,t-uotZNicTYo0,t-rovM6Rd5iuo,t-cuRgIaQHnok"><span jstcache="1388" style="display:none"></span>
	                                    <jsl jstcache="1389">_Developer/BlogPost</jsl>
	                                </div>
	                                <div jstcache="3767" class="sP" jsan="7.sP,t-U6RzqOSstfk,t-5K85Ng3iQNc,t-RRT-IqUfPXA">Skip the inbox</div><img srcset="//www.gstatic.com/images/icons/material/system/2x/settings_black_24dp.png 2x" alt="Settings" title="Settings" aria-hidden="true" jstcache="3768" src="//www.gstatic.com/images/icons/material/system/1x/settings_black_24dp.png" class="cC" jsan="7.cC,8.src,0.srcset,0.alt,0.title,0.aria-hidden">
	                            </div>
	                            <div data-vis="Hd" tabindex="-1" role="button" jstcache="3769" aria-pressed="false" jsaction="jsl._" class="Jz" jsan="0.data-vis,0.tabindex,0.role,22.jsaction,t-eefmBo-cMuA,7.Jz,0.aria-pressed">
	                                <div aria-hidden="true" jstcache="1456" class="xr" jsan="0.aria-hidden,7.xr"><span>On</span>
	                                </div>
	                                <div jstcache="1457" class="xI" jsan="7.xI"><span>Off</span>
	                                </div>
	                            </div>
	                        </div>
	                        <div jstcache="3760" tabindex="" role="listitem" jsinstance="72" class="i5">
	                            <div tabindex="-1" role="button" jstcache="3764" jsaction="jsl._" class="Dd"><img srcset="//ssl.gstatic.com/bt/C3341AA7A1A076756462EE2E5CD71C11/2x/ic_custom-cluster_24px_g60_r3_2x.png 2x" alt="Work" aria-hidden="true" jstcache="3765" src="//ssl.gstatic.com/bt/C3341AA7A1A076756462EE2E5CD71C11/1x/ic_custom-cluster_24px_g60_r3.png" class="rA" jsan="7.rA,8.src,0.srcset,0.alt,0.aria-hidden">
	                                <div jstcache="3766" class="op rQ uNXFec" jsvs="false;" jsan="7.op,7.rQ,7.uNXFec,t-uotZNicTYo0,t-rovM6Rd5iuo,t-cuRgIaQHnok"><span jstcache="1388" style="display:none"></span>
	                                    <jsl jstcache="1389">Work</jsl>
	                                </div>
	                                <div jstcache="3767" style="display:none"></div><img srcset="//www.gstatic.com/images/icons/material/system/2x/settings_black_24dp.png 2x" alt="Settings" title="Settings" aria-hidden="true" jstcache="3768" src="//www.gstatic.com/images/icons/material/system/1x/settings_black_24dp.png" class="cC" jsan="7.cC,8.src,0.srcset,0.alt,0.title,0.aria-hidden">
	                            </div>
	                            <div data-vis="Gd" tabindex="-1" role="button" jstcache="3769" aria-pressed="false" jsaction="jsl._" class="Jz" jsan="0.data-vis,0.tabindex,0.role,22.jsaction,t-eefmBo-cMuA,7.Jz,0.aria-pressed">
	                                <div aria-hidden="true" jstcache="1456" class="xr" jsan="0.aria-hidden,7.xr"><span>On</span>
	                                </div>
	                                <div jstcache="1457" class="xI" jsan="7.xI"><span>Off</span>
	                                </div>
	                            </div>
	                        </div>
	                        <div jstcache="3760" tabindex="" role="listitem" jsinstance="73" class="i5">
	                            <div tabindex="-1" role="button" jstcache="3764" jsaction="jsl._" class="Dd"><img srcset="//ssl.gstatic.com/bt/C3341AA7A1A076756462EE2E5CD71C11/2x/ic_travel_clr_24dp_r1_2x.png 2x" aria-hidden="true" jstcache="3765" src="//ssl.gstatic.com/bt/C3341AA7A1A076756462EE2E5CD71C11/1x/ic_travel_clr_24dp_r1.png" class="MG" jsan="7.MG,8.src,0.srcset,0.aria-hidden">
	                                <div jstcache="3766" title="Trips" class="op rQ uNXFec" jsan="7.op,7.rQ,7.uNXFec,t-9gUwNaIt2o4,0.title,t-pkYXZvUXoEM">Trips</div>
	                                <div jstcache="3767" style="display:none"></div><img alt="Settings" title="Settings" jstcache="3768" style="display:none" jsan="0.alt,0.title">
	                            </div>
	                            <div tabindex="-1" role="button" jstcache="3769" aria-pressed="false" jsaction="jsl._" class="Jz" jsan="0.tabindex,0.role,22.jsaction,t-eefmBo-cMuA,7.Jz,0.aria-pressed">
	                                <div aria-hidden="true" jstcache="1456" class="xr" jsan="0.aria-hidden,7.xr"><span>On</span>
	                                </div>
	                                <div jstcache="1457" class="xI" jsan="7.xI"><span>Off</span>
	                                </div>
	                            </div>
	                        </div>
	                        <div jstcache="3760" tabindex="" role="listitem" jsinstance="74" class="i5">
	                            <div tabindex="-1" role="button" jstcache="3764" jsaction="jsl._" class="Dd"><img srcset="//www.gstatic.com/images/icons/material/system/2x/bookmark_googblue_24dp.png 2x" alt="Saved" aria-hidden="true" jstcache="3765" src="//www.gstatic.com/images/icons/material/system/1x/bookmark_googblue_24dp.png" class="rA" jsan="7.rA,8.src,0.srcset,0.alt,0.aria-hidden">
	                                <div jstcache="3766" class="op rQ uNXFec" jsan="7.op,7.rQ,7.uNXFec,t-uotZNicTYo0,t-rovM6Rd5iuo,t-Ugq1W2OHf9U">Saved</div>
	                                <div jstcache="3767" style="display:none"></div><img srcset="//www.gstatic.com/images/icons/material/system/2x/settings_black_24dp.png 2x" alt="Settings" title="Settings" aria-hidden="true" jstcache="3768" src="//www.gstatic.com/images/icons/material/system/1x/settings_black_24dp.png" class="cC" jsan="7.cC,8.src,0.srcset,0.alt,0.title,0.aria-hidden">
	                            </div>
	                            <div data-vis="Gd" tabindex="-1" role="button" jstcache="3769" aria-pressed="false" jsaction="jsl._" class="Jz" jsan="0.data-vis,0.tabindex,0.role,22.jsaction,t-eefmBo-cMuA,7.Jz,0.aria-pressed">
	                                <div aria-hidden="true" jstcache="1456" class="xr" jsan="0.aria-hidden,7.xr"><span>On</span>
	                                </div>
	                                <div jstcache="1457" class="xI" jsan="7.xI"><span>Off</span>
	                                </div>
	                            </div>
	                        </div>
	                        <div jstcache="3760" tabindex="" role="listitem" jsinstance="75" class="i5">
	                            <div tabindex="-1" role="button" jstcache="3764" jsaction="jsl._" class="Dd"><img srcset="//ssl.gstatic.com/bt/C3341AA7A1A076756462EE2E5CD71C11/2x/ic_updates_24px_clr_r3_2x.png 2x" alt="Updates" aria-hidden="true" jstcache="3765" src="//ssl.gstatic.com/bt/C3341AA7A1A076756462EE2E5CD71C11/1x/ic_updates_24px_clr_r3.png" class="rA" jsan="7.rA,8.src,0.srcset,0.alt,0.aria-hidden">
	                                <div jstcache="3766" class="op rQ uNXFec" jsan="7.op,7.rQ,7.uNXFec,t-uotZNicTYo0,t-rovM6Rd5iuo,t-ctqG4L9-HYA">Updates</div>
	                                <div jstcache="3767" style="display:none"></div><img srcset="//www.gstatic.com/images/icons/material/system/2x/settings_black_24dp.png 2x" alt="Settings" title="Settings" aria-hidden="true" jstcache="3768" src="//www.gstatic.com/images/icons/material/system/1x/settings_black_24dp.png" class="cC" jsan="7.cC,8.src,0.srcset,0.alt,0.title,0.aria-hidden">
	                            </div>
	                            <div data-vis="Gd" tabindex="-1" role="button" jstcache="3769" aria-pressed="false" jsaction="jsl._" class="Jz" jsan="0.data-vis,0.tabindex,0.role,22.jsaction,t-eefmBo-cMuA,7.Jz,0.aria-pressed">
	                                <div aria-hidden="true" jstcache="1456" class="xr" jsan="0.aria-hidden,7.xr"><span>On</span>
	                                </div>
	                                <div jstcache="1457" class="xI" jsan="7.xI"><span>Off</span>
	                                </div>
	                            </div>
	                        </div>
	                        <div jstcache="3760" tabindex="" role="listitem" jsinstance="76" class="i5">
	                            <div tabindex="-1" role="button" jstcache="3764" jsaction="jsl._" class="Dd"><img srcset="//ssl.gstatic.com/bt/C3341AA7A1A076756462EE2E5CD71C11/2x/ic_forums_24px_clr_r3_2x.png 2x" alt="Forums" aria-hidden="true" jstcache="3765" src="//ssl.gstatic.com/bt/C3341AA7A1A076756462EE2E5CD71C11/1x/ic_forums_24px_clr_r3.png" class="rA" jsan="7.rA,8.src,0.srcset,0.alt,0.aria-hidden">
	                                <div jstcache="3766" class="op rQ uNXFec" jsan="7.op,7.rQ,7.uNXFec,t-uotZNicTYo0,t-rovM6Rd5iuo,t-dn6yGTOSjqU">Forums</div>
	                                <div jstcache="3767" style="display:none"></div><img srcset="//www.gstatic.com/images/icons/material/system/2x/settings_black_24dp.png 2x" alt="Settings" title="Settings" aria-hidden="true" jstcache="3768" src="//www.gstatic.com/images/icons/material/system/1x/settings_black_24dp.png" class="cC" jsan="7.cC,8.src,0.srcset,0.alt,0.title,0.aria-hidden">
	                            </div>
	                            <div data-vis="Gd" tabindex="-1" role="button" jstcache="3769" aria-pressed="false" jsaction="jsl._" class="Jz" jsan="0.data-vis,0.tabindex,0.role,22.jsaction,t-eefmBo-cMuA,7.Jz,0.aria-pressed">
	                                <div aria-hidden="true" jstcache="1456" class="xr" jsan="0.aria-hidden,7.xr"><span>On</span>
	                                </div>
	                                <div jstcache="1457" class="xI" jsan="7.xI"><span>Off</span>
	                                </div>
	                            </div>
	                        </div>
	                        <div jstcache="3760" tabindex="" role="listitem" jsinstance="*77" class="i5">
	                            <div tabindex="-1" role="button" jstcache="3764" jsaction="jsl._" class="Dd"><img srcset="//ssl.gstatic.com/bt/C3341AA7A1A076756462EE2E5CD71C11/2x/ic_low-priority_24px_g60_r3_2x.png 2x" alt="Low Priority" aria-hidden="true" jstcache="3765" src="//ssl.gstatic.com/bt/C3341AA7A1A076756462EE2E5CD71C11/1x/ic_low_priority_24px_g60_r3.png" class="rA" jsan="7.rA,8.src,0.srcset,0.alt,0.aria-hidden">
	                                <div jstcache="3766" class="op rQ uNXFec" jsan="7.op,7.rQ,7.uNXFec,t-uotZNicTYo0,t-rovM6Rd5iuo,t-RZOQrvrAGyc">Low Priority</div>
	                                <div jstcache="3767" style="display:none"></div><img srcset="//www.gstatic.com/images/icons/material/system/2x/settings_black_24dp.png 2x" alt="Settings" title="Settings" aria-hidden="true" jstcache="3768" src="//www.gstatic.com/images/icons/material/system/1x/settings_black_24dp.png" class="cC" jsan="7.cC,8.src,0.srcset,0.alt,0.title,0.aria-hidden">
	                            </div>
	                            <div data-vis="Gd" tabindex="-1" role="button" jstcache="3769" aria-pressed="false" jsaction="jsl._" class="Jz" jsan="0.data-vis,0.tabindex,0.role,22.jsaction,t-eefmBo-cMuA,7.Jz,0.aria-pressed">
	                                <div aria-hidden="true" jstcache="1456" class="xr" jsan="0.aria-hidden,7.xr"><span>On</span>
	                                </div>
	                                <div jstcache="1457" class="xI" jsan="7.xI"><span>Off</span>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div jstcache="3720" class="nl">
	                    <button tabindex="0" jstcache="3778" jsaction="jsl._" class="Jc H dH">DONE</button>
	                </div>
	            </div>
	            
	            <div id="labels_place" class="settings-tab-panel pM">
	                <div jstcache="3719" class="i7 y0" jsan="t-TTkqcavY6c0,7.i7,7.y0">
	                    <jsl jstcache="3724" jsinstance="0">
	                        <jsl jstcache="3725">
	                            <div jstcache="3726">
	                                <div jstcache="3729">
	                                    <div class="zB">
	                                        <input checked="checked" id="btariaid-152" type="checkbox" jstcache="3732" jsaction="jsl._" class="iY" jsan="7.iY,0.checked,0.id,0.type,22.jsaction">
	                                        <label for="btariaid-152" jstcache="3733" class="me" jsan="7.me,0.for">Keyboard shortcuts</label>
	                                    </div>
	                                    <div jstcache="3734" class="iV" jsan="7.iV">Tip: Hit "Shift + ?" to see the keyboard shortcuts</div>
	                                </div>
	                                <div jstcache="3730" style="display:none"></div>
	                            </div>
	                        </jsl>
	                    </jsl>
	                    <jsl jstcache="3724" jsinstance="1">
	                        <jsl jstcache="3725">
	                            <div jstcache="3726">
	                                <div jstcache="3729">
	                                    <div class="zB">
	                                        <input id="btariaid-155" type="checkbox" jstcache="3732" jsaction="jsl._" class="iY" jsan="7.iY,0.id,0.type,22.jsaction">
	                                        <label for="btariaid-155" jstcache="3733" class="me" jsan="7.me,0.for">Redirect Gmail to inbox.google.com</label>
	                                    </div>
	                                    <div jstcache="3734" class="iV" jsan="7.iV">Always take me to Inbox when I visit Gmail in a web browser. You can always get back to Gmail by clicking on the link in the main menu.</div>
	                                </div>
	                                <div jstcache="3730" style="display:none"></div>
	                            </div>
	                        </jsl>
	                    </jsl>
	                    <jsl jstcache="3724" jsinstance="*2">
	                        <jsl jstcache="3725">
	                            <div jstcache="3726">
	                                <div jstcache="3729">
	                                    <div class="zB">
	                                        <input id="btariaid-158" type="checkbox" jstcache="3732" jsaction="jsl._" class="iY" jsan="7.iY,0.id,0.type,22.jsaction">
	                                        <label for="btariaid-158" jstcache="3733" class="me" jsan="7.me,0.for">Make notifications stay on the screen longer</label>
	                                    </div>
	                                    <div jstcache="3734" class="iV" jsan="7.iV">Notifications will stay on screen for 30 seconds</div>
	                                </div>
	                                <div jstcache="3730" style="display:none"></div>
	                            </div>
	                        </jsl>
	                    </jsl>
	                    <button jstcache="3727" jsaction="global.delete_search_history" class="BX H dH" jsan="7.BX,7.H,7.dH,22.jsaction">CLEAR SEARCH HISTORY</button>
	                </div>
	                <div jstcache="3720" class="nl">
	                    <button tabindex="0" jstcache="3778" jsaction="jsl._" class="Jc H dH">DONE</button>
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