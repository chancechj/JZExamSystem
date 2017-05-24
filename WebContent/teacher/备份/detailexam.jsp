<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>确认试卷</title>
</head>
<body>
	<div id="examName"> 试卷名字</div>
	<div id="choice">
		<div class="choiceCss">
		选择题题目<br>
		<input name="radio" type="radio" value="A" />A:A选项
		<input name="radio" type="radio" value="B" />B:B选项
		<input name="radio" type="radio" value="C" />C:C选项
		<input name="radio" type="radio" value="D" />D:D选项
		答案：答案内容；<br>
		</div>
	</div>
	<div id="judge">
		<div class="judgeCss">
		判断题题目<br>
		<input name="X" type="radio" value="C" />Y
		<input name="X" type="radio" value="D" />N
		答案：答案内容；<br>
		</div>
	</div>
	<div id="blankfiling">
		<div id="blankfilingCss">		
		填空题题目<br>
		答案：答案内容；<br>
		</div>
	</div>
	<div class="buttom">
		<a href="**" >完成</a>	
		<a href="**">取消</a>	
		
	</div>
     
</body>
</html>