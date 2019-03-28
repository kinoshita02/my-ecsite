<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<link href="https://fonts.googleapis.com/css?family=Caveat" rel="stylesheet">
<link href="https://fonts.googleapis.com/earlyaccess/kokoro.css" rel="stylesheet">
<title>itemlistdeletecomplete</title>
</head>
<body>
<div id="header">
</div>

<div id="main">
	<div id="top">
	<p>itemlistdeletecomplete</p>
	</div>
	
	<div>
	<s:if test="massage != ''">
		<s:property value="massage"/>
	</s:if>
	</div>
</div>

<div id="footer">
<p>管理者画面に戻ります。<a href='<s:url action="AdminAction"/>'>こちら</a>
</div>
</body>
</html>