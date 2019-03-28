<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="./css/style.css">
<link href="https://fonts.googleapis.com/css?family=Caveat" rel="stylesheet">
<link href="https://fonts.googleapis.com/earlyaccess/kokoro.css" rel="stylesheet">
<title>ItemList</title>
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
	<div id="top">
	<p>ItemList<p>
	</div>
	
	<div>
		<h3>商品一覧</h3>
		
		<table border="1">
		<tr bgcolor="white">
			<th>商品ID</th>
			<th>商品名</th>
			<th>値段</th>
			<th>在庫数</th>
		</tr>
		
		<s:iterator value="dtoList">
		<tr>
			<td><s:property value="itemid"/></td>
			<td><s:property value="itemname"/></td>
			<td><s:property value="price"/></td>
			<td><s:property value="stock"/></td>
		</tr>
		</s:iterator>
		</table>
		
		<s:form>
			<input type="button" value="back" onclick="submitAction('AdminAction')">
			<input type="button" value="delete" onclick="submitAction('ItemListDeleteConfirmAction')">
		</s:form>
	</div>
</div>

<div id="footer">
</div>
</body>
</html>