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
<title>itemCreate</title>
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
	<p>itemcreate</p>
	</div>
	
	<div>
	<s:if test ="Flg == false">
		<h3>もう一度</h3>
	</s:if>
	<table>

	<s:form>
	
		<tr>
			<td><label>itemNAME</label></td>
			<td>
				<input type="text" name="itemName" value=""/>
			</td>
		</tr>
		<tr>
			<td><label>itemPRICE</label></td>
			<td>
				<input type="text" name="itemPrice" value=""/>
			</td>
		</tr>
		<tr>
			<td><label>itemSTOCK</label></td>
			<td>
			<input type="text" name="itemStock" value=""/>
			</td>
		</tr>
		<input type="button" value="戻る" onclick="submitAction('AdminAction')">
		<input type="button" value="登録確認" onclick="submitAction('ItemCreateConfirmAction')"/>
	</s:form>
	</table>
	</div>
</div>
</body>
</html>