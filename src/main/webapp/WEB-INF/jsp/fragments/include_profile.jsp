<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
  <%  
     
  DateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
  Date date = new Date();
  String _localDatetime = dateFormat.format(date);
  
 %> 
  
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
   	<link rel="stylesheet" type="text/css" href="../../css/css_page/reset.css" media="all">
    <link rel="stylesheet" type="text/css" href="../../css/css_page/content.css" media="all">
    <link rel="stylesheet" type="text/css" href="../../css/css_page/content_media_screen.css" media="all">
   	<link rel="stylesheet" type="text/css" href="../../css/css_page/reset_profile.css" media="all">
   	<link rel="stylesheet" type="text/css" href="../../css/css_page/main.css" media="all">
    
    <link href="https://fonts.googleapis.com/css?family=Rubik:400,500,700" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <script  src="../../js-lib/jquery-1.10.2.js?<%=_localDatetime%>"></script>
    <script  src="../../js-lib/collJsPlugin.js?<%=_localDatetime%>"></script>
    <script  src="../../js-lib/common.js?<%=_localDatetime%>"></script>
    <script  src="../../js-lib/moment.js?<%=_localDatetime%>"></script>
    
    <script type="text/javascript" src="../../js_admin/jquery.placeholder.min.js?<%=_localDatetime%>"></script>
	<script type="text/javascript" src="../../js-lib/lightslider.js?<%=_localDatetime%>"></script>
    <script type="text/javascript" src="../../js_admin/wehrm.ui.js?<%=_localDatetime%>"></script>