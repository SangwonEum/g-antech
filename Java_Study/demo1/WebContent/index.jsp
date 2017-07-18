<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	Login page
	<br />
	<form method="POST" action="result.jsp" name="formName">
		<table border="1">
			<tr>
				<td>ID:</td>
				<td><input type="text" name="id" value=""></td>
			</tr>
			<tr>
				<td>password:</td>
				<td><input type="password" name="password" value=""></td>
			</tr>

			<tr>
				<td colspan="4"><input type="submit" value="login"
					Onclick="check()"></td>

			</tr>
		</table>
	</form>

	<button Onclick="check()">Click me</button>

	<script>
		function check() {

			if (document.getElementById("id").value == null) {
				alert("no");
			} else {
				alert("yes");
			}

		}
	</script>
</body>
</html>