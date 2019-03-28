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
<title>userlist</title>
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
	<p>userlist</p>
	</div>
	
	<div>
		<h3>ユーザー一覧</h3>
		
		<table border="1">
		
		<tr bgcolor="white">
			<th>id</th>
			<th>loginID</th>
			<th>loginPASSWORD</th>
			<th>userNAME</th>
		</tr>
		<s:iterator value="userList">
		<tr>
			<td><s:property value="id"/></td>
			<td><s:property value="loginid"/></td>
			<td><s:property value="loginpass"/></td>
			<td><s:property value="username"/></td>
		</tr>
		</s:iterator>
		</table>
		
		<s:form>
			<input type="button" value="back" onclick="submitAction('AdminAction')">
			<input type="button" value="delete" onclick="submitAction('UserListDeleteConfirmAction')">
		</s:form>
	</div>
</div>

<div id="footer">
</div>
</body>
</html>