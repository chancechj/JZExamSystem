<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>试卷</title>
   <link rel="stylesheet" href="../css/exam.css"> 
    <script src='../js/jquery.js'></script>
    <script src='../js/skrollr.min.js'></script>
    <script> $(document).ready(function () {		
			<forEach items="${list}" var="obj">
        		var obj_arr="${obj.name}";
				$("#content").append("<div class='card'>${676}</div>");
     		</forEach>
            skrollr.init({ smoothScrolling: true });
        }); //@ sourceURL=pen.js
    </script>
</head>
<body>
 <div id="page">
	<div id="toolbar">
		<div id="title">
			试卷名字2016-2017第二学期 C++期末考试
		</div>
        <div id="title-right">
           	<a href="../indext.jsp" >退出</a>   
        </div>      
    </div>
    <div id="content">
    <div class="contentCss">
	<div class="choice">
		<div class="choiceCss">
			选择题题目<br>
		<input name="radio" type="radio" value="A" />A:A选项
		<input name="radio" type="radio" value="B" />B:B选项<br>
		<input name="radio" type="radio" value="C" />C:C选项
		<input name="radio" type="radio" value="D" />D:D选项
		<div class="answerCss">
			答案：答案内容；
		</div><br>
		</div>
	</div>
	<div class="judge">
		<div class="judgeCss">
			判断题题目<br>
		<input name="X" type="radio" value="C" />Y
		<input name="X" type="radio" value="D" />N
		<div class="answerCss">
			答案：答案内容；
		</div><br>
		</div>
	</div>
	<div class="blankfiling">
		<div id="blankfilingCss">		
			填空题题目<br>
		<div class="answerCss">
			答案：答案内容；
		</div><br>
		</div>
	</div>
	</div>
	</div>
</div>
</body>
</html>