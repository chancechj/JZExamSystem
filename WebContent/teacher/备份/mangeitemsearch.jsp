<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>管理题库查找</title>

<script src="../js/jquery.min.js"></script>

<script>
$(document).ready(function () {
	$.ajax({  
        url: '/JZExamSystem/login.action',
        type: 'GET',  	//请求类型
		data: {"user_type":"teacher","user_password":"123456","user_id":"大黄"},//上传数据
        dataType: 'xml',//返回类型  
        timeout: 1000,  //设定超时  
        cache: false,   //禁用缓存  
        error: function(xml) {  
            alert("加载XML文档出错!");  
        }//,  
        //success: GetStudentComplete   //设置成功后回调函数  
    }); 
});
</script>

</head>
<body>
 	<div>
		<div>
			<font>输入题号：</font>
			<input type="text" name="examId">	
			<input type="submit" value="查找">
			<a href="mangeitemadd.jsp">增加题目</a>	
		</div>
		<div id="choice">
		<div class="choiceCss">
		选择题题目<br>
		<input name="radio" type="radio" value="A" />A:A选项
		<input name="radio" type="radio" value="B" />B:B选项
		<input name="radio" type="radio" value="C" />C:C选项
		<input name="radio" type="radio" value="D" />D:D选项
		答案：答案内容；<br>
		<a href="**">删除</a><br>
		</div>
	</div>
	<div id="judge">
		<div class="judgeCss">
		判断题题目<br>
		<input name="X" type="radio" value="C" />Y
		<input name="X" type="radio" value="D" />N
		答案：答案内容；<br>
		<a href="**">删除</a><br>
		</div>
	</div>
	<div id="blankfiling">
		<div id="blankfilingCss">		
		填空题题目<br>
		答案：答案内容；<br>
		<a href="**">删除</a><br>
		</div>
	</div>
		
	</div>
</body>
</html>