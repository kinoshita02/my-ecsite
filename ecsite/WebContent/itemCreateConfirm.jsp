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
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<title>itemcreateconfirm</title>

<script type="text/javascript">
	function submitAction(url){
		$('form').attr('action',url);
		$('form').submit();
	}
</script>
</head>
<body>

<div id="header">
</div>

<div id="main">
	<div id ="top">
	<p>itemcreateconfirm</p>
	</div>
	
	<div>
	<table>
	<s:form>
	
		<tr>
			<td><label>NAME</label></td>
			<td><s:property value="itemName"/></td>
		</tr>
		<tr>
			<td><label>PRICE</label></td>
			<td><s:property value="itemPrice"/><label>円</label></td>
		</tr>
		<tr>
			<td><label>STOCK</label></td>
			<td><s:property value="itemStock"/><label>個</label></td>
		</tr>
			<p>こちらの情報で登録しますか？</p>
		<tr>
			<td><input type="button" value="登録" onclick="submitAction('ItemCreateCompleteAction')"/></td>
			<td><input type="button" value="修正" onclick="submitAction('ItemCreateAction')"/></td>
		</tr>
	</s:form>
	</table>
	</div>
</div>
</body>
</html>