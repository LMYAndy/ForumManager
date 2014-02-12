<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"	uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"	uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt"	uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<% 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/"; 
%> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>BBS</title>
<script type="text/javascript" src="<%=basePath %>framework/js/jquery/jquery-1.7.1.min.js" ></script>

<script type="text/javascript" src="<%=basePath %>framework/js/jquery-ui/jquery.ui.core.js" ></script>

<script type="text/javascript" src="<%=basePath %>framework/js/jquery-ui/jquery.ui.widget.js" ></script>

<script type="text/javascript" src="<%=basePath %>framework/js/jquery-plugin/jquery.form.js" ></script>

<script type="text/javascript" src="<%=basePath%>framework/js/easyui/jquery.easyui.min.js"></script>

<script type="text/javascript" src="<%=basePath %>framework/js/easyui/easyui-lang-zh_CN.js"></script>

<script type="text/javascript" src="<%=basePath %>framework/js/common.js"></script>

<script type="text/javascript" src="<%=basePath %>framework/js/jquery-json/jquery.json-2.4.min.js"></script>

<script type="text/javascript" src="<%=basePath %>framework/js/jquery-upload/ajaxupload.js"></script>


