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
<title>UserCreate</title>
</head>
<body>
	<div id="header">
		<div id="pr"></div>
	</div>
	
	<div id="main">
		<div id="top">
		<p>UserCreate</p>
		</div>
		
		<div>
			<s:if test="errorMassage != ''">
				<s:property value="errorMassage" escape="false"/>
			</s:if>
			<table>
				<s:form action="UserCreateConfirmAction">
				
				<tr>
					<td><label>ログインID:</label></td>
					<td>
						<input type="text" name="loginUserId" value=""/>
					</td>
				</tr>
				<tr>
					<td><label>ログインPASS:</label></td>
					<td>
						<input type="text" name="loginPassword" value=""/>
					</td>
				</tr>
				<tr>
					<td><label>ユーザー名:</label></td>
					<td>
						<input type="text" name="userName" value=""/>
					</td>
				</tr>
				<s:submit value="登録"/>
				</s:form>
			</table>
			
			<div>
				<span>前画面に戻る場合は</span>
				<a href='<s:url action="HomeAction"/>'>こちら</a>
			</div>
		</div>
	</div>
	
	<div id="footer">
		<div id="pr"></div>
	</div>
</body>
</html>