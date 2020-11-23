<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Register</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body>
	<!-- 引入jquery -->
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>

	<!-- java script -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
	<form action="${pageContext.request.contextPath }/register" method="post">
		用户名：<input type="text" name="username"/><br/>
		密码：<input type="text" name="password"/> <br/>
		性别：<input type="radio" name="gender" value="1"/>男
			<input type="radio" name="gender" value="0"/>女<br/>
		手机号：<input type="text" name="phone"/><br/>
		邮箱：<input type="text" name="email"/><br/>
		<input type="submit" value="提交"/>
	</form>
</body>
</html>