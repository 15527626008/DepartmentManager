<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String basePath = request.getScheme()
					+ "://"
					+ request.getServerName()
					+ ":"
					+ request.getServerPort()
					+ request.getContextPath()
					+ "/";
%>
<link rel="stylesheet" type="text/css" href="<%= basePath %>res/bootstrap-3.0.3-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%= basePath %>res/theme.css">
<link rel="stylesheet" type="text/css" href="<%= basePath %>css/commenStyle.css">
<script type="text/javascript" src="<%= basePath %>res/bootstrap-3.0.3-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%= basePath %>res/bootstrap-3.0.3-dist/js/bootstrap-collapse.js"></script>
<script type="text/javascript" src="<%= basePath %>js/jquery.min.js"></script>
