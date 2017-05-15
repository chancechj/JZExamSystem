<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<form action="/JZExamSystem/RandomExam.action" method="post">
	<input id="id" type="text" placeholder="账号" class="common input" name = "user_id" onfocus="xfjianpan(this.id)" value="">
    <input id="password" type="password" placeholder="密码" class="common input psw-height" name = "user_password" onfocus="xfjianpan(this.id)">
    <input class="common login-btn" type="submit" value="Login"/>
    <input type="hidden" name="itemStr" value="1->2->3" />
</form>

<form action="/JZExamSystem/getItemsByIds.action" method="post">
    <input class="common login-btn" type="submit" value="Login"/>
    <input type="hidden" name="itemStr" value="1->2->3" />
    </form>
</body>
</html>