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
<title>MyPage</title>
</head>
<body>
	<div id="header">
	</div>
	
	<div id="main">
		<div id="top">
		<p>MyPage</p>
		</div>
		
		<div>
			<s:if test="mypageList == null">
				<h3>ご購入情報はありません。</h3>
			</s:if>
			
			<s:elseif test="massage == null">
				<h3>ご購入情報は以下になります。</h3>
				<table border="1">
				<tr bgcolor="white">
					<th>商品名</th>
					<th>値段</th>
					<th>購入個数</th>
					<th>支払い方法</th>
					<th>購入日</th>
				</tr>
				<s:iterator value="mypageList">
				<tr>
					<td><s:property value="itemName"/></td>
					<td><s:property value="totalPrice"/><span>円</span></td>
					<td><s:property value="totalCount"/><span>個</span></td>
					<td><s:property value="payment"/></td>
					<td><s:property value="insert_date"/></td>
				</tr>
				</s:iterator>
				</table>
				
				<s:form action="MyPageAction">
					<input type="hidden" name="deleteFlg" value="1">
					<s:submit value="削除" method="dalete"/>
				</s:form>
			</s:elseif>
			
			<s:if test="massage != null">
				<h3><s:property value="massage"/></h3>
			</s:if>
			
			<div id="text-link">
				<p>Homeへ戻る場合は<a href='<s:url action="GoHomeAction"/>'>こちら</a>
				<p>ログアウトする場合は<a href='<s:url action="LogoutAction"/>'>こちら</a>
			</div>
		</div>
	</div>
	
	<div id="footer">
	</div>
</body>
</html>