<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<!-- ���� ��� -->
<c:import url="/import/head" />
<!-- chat -->
<script src="<c:url value="/js/simple-chat.js"/>"></script>

<!-- ajax(s) -->
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<!-- ajax(e) -->

</head>
<body class="left-menu">

	<!-- menu -->
	<c:import url="/import/menu" />

	<div>
		<h1 align="center">
			<B><U>Security Login</U></B>
		</h1>
		<form role="form" method="post" autocomplete="off" action="/blank2/login">
		<p>
		<label for="USERID">�ƾƵ�</label>
		<input type="text" id="USERID" name="USERID"/>
		</p>
		<p>
		<lable for="USERPASS">�н�����</lable>
		<input type="password" id="USERPASS" name="USERPASS"/>
		</p>
		<p><button type="submit"> �α��� </button></p>
		</form>
	</div>

	<!-- end wrapper -->



	<script>		
		window.onload = function() {

		}
	</script>
	
</body>
</html>