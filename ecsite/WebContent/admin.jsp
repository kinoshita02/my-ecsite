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
<title>管理者画面</title>
</head>
<body>
	
	<div id="header">
	</div>
	
	<div id="main">
		<div id="top">
		<p>admin</p>
		</div>
		
		<div class="item">
		<h4>商品</h4>
		<s:form action="ItemCreateAction">
			<s:submit value="商品登録"/>
		</s:form>
		
		<s:form action="ItemListAction">
			<s:submit value="商品一覧"/>
		</s:form>
		</div>
		
		<div class="user">
		<h4>ユーザー</h4>
		<s:form action="UserCreateAction">
			<s:submit value="ユーザー登録"/>
		</s:form>
		
		<s:form action="UserListAction">
			<s:submit value="ユーザー一覧"/>
		</s:form>
		</div>
	</div>
	
	<div id="footer">
	<p>Homeへ戻る場合は<a href='<s:url action="GoHomeAction"/>'>こちら</a>
	</div>
</body>
</html>