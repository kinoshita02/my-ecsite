<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="imagetoolder" content="no"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>

<link rel="stylesheet" type="text/css" href="./css/style.css">
<link href="https://fonts.googleapis.com/css?family=Caveat" rel="stylesheet">
<link href="https://fonts.googleapis.com/earlyaccess/kokoro.css" rel="stylesheet">
<title>UserCreateConfirm</title>
</head>
<body>
	<div id="header">
	</div>
	
	<div id="main">
		<div id="top">
		<p>UserCreateConfirm</p>
		</div>
		
		<div>
			<h3>登録する内容は以下でよろしいですか。</h3>
			<table>
				<s:form action="UserCreateCompleteAction">
				
				<tr>
					<td><label>ログインID:</label></td>
					<td>
						<s:property value="loginUserId" escape="false"/>
					</td>
				</tr>
				<tr>
					<td><label>ログインPASS:</label></td>
					<td>
						<s:property value="loginPassword" escape="false"/>
					</td>
				</tr>
				<tr>
					<td><label>ユーザー名:</label></td>
					<td>
						<s:property value="userName" escape="false"/>
					</td>
				</tr>
				<tr>
					<td>
						<s:submit value="完了"/>
					</td>
				</tr>
				</s:form>
			</table>
		</div>
	</div>
	<div id="footer">
	</div>

</body>
</html>