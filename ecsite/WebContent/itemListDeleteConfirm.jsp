<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Script-Type" content="text/css"/>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="./css/style.css">
<link href="https://fonts.googleapis.com/css?family=Caveat" rel="stylesheet">
<link href="https://fonts.googleapis.com/earlyaccess/kokoro.css" rel="stylesheet">
<title>itemlistdeleteconfirm</title>

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
	<p>itemlistdeleteconfirm</p>
	</div>
	
	<div>
	<h3>すべての商品を削除します。よろしいですか？</h3>
	</div>
	
	<s:form>
	<table>
	<tr>
		<td><input type="button" value="OK" onclick="submitAction('ItemListDeleteCompleteAction')"/></td>
		<td><input type="button" value="CANCEL" onclick="submitAction('ItemListAction')"/></td>
	</tr>
	</table>
	</s:form>
	
</div>

<div id="footer">
</div>
</body>
</html>