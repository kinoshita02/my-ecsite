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
<title>BuyItemComplete</title>
</head>
<body>

	<div id="header">
	</div>
	
	<div id="main">
		<div id="top">
		<p>BuyItemComplete</p>
		</div>
		
		<div>
			<p>購入手続きが完了いたしました。</p>
			<div>
				<a href='<s:url action="MyPageAction"/>'>マイページ</a>
				<span>から購入履歴の確認が可能です。</span>
				<p>Homeへ戻る場合は<a href='<s:url action="GoHomeAction"/>'>こちら</a>
			</div>
		</div>
	</div>
	
	<div id="footer">
	</div>
</body>
</html>