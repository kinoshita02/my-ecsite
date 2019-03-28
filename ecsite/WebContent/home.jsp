<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>

<link rel="stylesheet" type="text/css" href="./css/style.css">
<link href="https://fonts.googleapis.com/css?family=Caveat" rel="stylesheet">
<link href="https://fonts.googleapis.com/earlyaccess/kokoro.css" rel="stylesheet">
<title>Home</title>
</head>
<body>
	<div id="header">
		<div id="pr">
		</div>
	</div>
	
	<div id="main">
		<div id="top">
		<p>Home</p>
		</div>
		
		<div id="text-center">
			<s:form action="HomeAction">
				<s:submit value="商品購入"/>
			</s:form>
			
		</div>
		
		<s:if test="#session.id != null">
			<p>ログアウトする場合は
			<a href='<s:url action="LogoutAction"/>'>こちら</a>
			</p>
		</s:if>
	</div>
	
	<div id="footer">
	</div>

</body>
</html>