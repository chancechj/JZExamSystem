<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>管理题库</title>
<link rel="stylesheet" href="../css/mangeitem.css">
<script src="../js/jquery-3.2.0.min.js"></script>
<script>
$(document).ready(function(){
  $("#select").change(function(){
	  var id=document.getElementById("select").value;
	  /* alert(id); */
	  $("#choice").hide();
	  $("#judge").hide();
	  $("#blankfiling").hide();
	   $("#program").hide();
	  $("#"+id).show();	  
	  });	
});
</script>
</head>
<body>
<div id="container">
	<div id="main">
	<div id="title">
		<font face="楷体" size="60">老师增加题目</font>
	</div><br>
		选择要增加题目的题型：
		<select id="select" name="select" >
			<option value="choice">选择题</option>
			<option value="judge">判断题</option>
			<option value="blankfiling">填空题</option>
			<option value="program">编程题</option>
		</select><br>
		<!-- 选择题的块 -->
		<div id="choice">
			选择题题目:<br>
			&nbsp;&nbsp;<textarea rows="9" cols="70" style="max-width: 500px;"></textarea><br>
			答案：<br>
			A:<input  type="text" style="overflow-x:visible;width:500px;height:25px;" value="A:" /><br>
			B:<input  type="text" style="overflow-x:visible;width:500px;height:25px;" value="B:" /><br>
			C:<input  type="text" style="overflow-x:visible;width:500px;height:25px;" value="C:" /><br>
			D:<input  type="text" style="overflow-x:visible;width:500px;height:25px;" value="D:" /><br>
		</div>
		<!-- 判断题的块 -->
		<div id="judge" style="display:none;">
			判断题题目:<br>
			<textarea rows="9" cols="70" style="max-width: 500px;"></textarea><br>
			<input name="X" type="radio" value="C" />Y
			<input name="X" type="radio" value="D" />N
		</div>
		<!-- 填空题的块 -->
		<div id="blankfiling" style="display:none;">
			填空题目内容：<br>
			<textarea rows="9" cols="70" style="max-width: 500px;"></textarea><br>
			答案：<br>
			<textarea rows="6" cols="70" style="max-width: 500px;"></textarea>		
		</div>
		<!-- 编程题的块 -->
		<div id="program" style="display:none;">
			编程题目内容：<br>
			<textarea rows="9" cols="70" style="max-width: 500px;"></textarea><br>
			答案：<br>
			<textarea rows="6" cols="70" style="max-width: 500px;"></textarea>
		</div>
	
		<div id="submit">
			<input type="submit" class="btn-style" value="提交" width="3px">&nbsp;&nbsp;
			<input type="reset" class="btn-style" value="重置">	
		</div>
	</div>
</div>
</body>
</html>