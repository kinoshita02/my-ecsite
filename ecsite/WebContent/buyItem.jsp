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
<title>BuyItem</title>
</head>
<body>

<div id="header">
	<div id="pr"></div>
</div>

<div id="main">
	<div id="top">
	<p>BuyItem</p>
	</div>
	
	<div>
		<s:form action="BuyItemAction">
		
		
		<table>
		
			<tr>
				<td><span>商品名</span></td>
				<td><s:property value="session.buyItem_name"/><br></td>
			</tr>
			<tr>
				<td><span>値段</span></td>
				<td><s:property value="session.buyItem_price"/>
					<span>円</span>
				</td>
			</tr>
			<tr>
				<td><span>購入個数</span></td>
				<td>
					<select name="count">
						<option value="0" selected="selected">0</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td><span>支払い方法</span></td>
				<td>
					<input type="radio" name="pay" value="1" checked="checked">現金払い
					<input type="radio" name="pay" value="2">クレジットカード
				</td>
			</tr>
			<tr>
				<td><s:submit value="購入"/></td>
			</tr>
		</table>
		
		</s:form>
		
		<div>
			<p>前画面に戻る場合は<a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
			<p>マイページは<a href='<s:url action="MyPageAction"/>'>こちら</a></p>
			<s:if test="master != null">
			<p><a href='<s:url action="AdminAction"/>'>管理</a></p>
			</s:if>
		</div>
	</div>
</div>

<div id="footer">
</div>

</body>
</html>