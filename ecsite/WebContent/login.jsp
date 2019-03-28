<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="imagetoolber" content="no"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>

<link rel="stylesheet" type="text/css" href="./css/style.css">
<link href="https://fonts.googleapis.com/css?family=Caveat" rel="stylesheet">
<link href="https://fonts.googleapis.com/earlyaccess/kokoro.css" rel="stylesheet">
<title>Login</title>
</head>
<body>
<div id="header">
	<div id="pr"></div>
</div>

<div id="main">
	<div id="top">
	<p>Login</p>
	</div>
	
	<div>
		<h3>商品を購入する際にはログインをお願いします。</h3>
		
		<s:if test="errorMassage != null">
			<s:property value="errorMassage"/>
		</s:if>
		<s:form action="LoginAction">
			<s:textfield name="loginUserId" placeholder="IDを入力してください。"/>
			<s:password name="loginPassword" placeholder="こちらにはPASSWORDを"/>
			<s:submit value="ログイン"/>
		</s:form>
		<br>
		<div id="text-link">
			<p>新規ユーザー登録は
				<a href='<s:url action="UserCreateAction"/>'>こちら</a>
			</p>
			<p>Homeへ戻る場合は
				<a href='<s:url action="GoHomeAction"/>'>こちら</a>
			</p>
		</div>
	</div>
</div>

<div id="footer">
</div>

</body>
</html>