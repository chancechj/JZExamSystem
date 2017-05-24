<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>管理题库</title>
<!-- <link rel="stylesheet" href="css/teacher.css"> -->
<link rel="stylesheet" href="../css/mangeitem.css">
</head>
<body>
<form action="ItemAdd">
	<div id="container">
	<div id="title">
		<font face="楷体" size="40">老师增加题目</font>
	</div><br>
	<div id="main">
		<table>
			<tr>
				<td>题目类型：</td>
				<td>
					<select name="type" class="select" >
					<option value="choice">选择题</option>	
					<option value="judge">判断题</option>
					<option value="blankfiling">填空题</option>
					<option value="program">编程题</option>		
					</select>
				</td>
			</tr>
					<tr>
					<td>题目内容：</td>
					<td><textarea rows="9" cols="70" style="max-width: 500px;" name="content"></textarea></td>
					</tr>
					<tr>
					<td>答案：</td>
					<td><textarea rows="6" cols="70" style="max-width: 500px;" name="answer"></textarea></td>
					</tr>
					<tr>
						<td align="center" colspan="2">
						<input type="submit" value="提交" width="3px">&nbsp;&nbsp;
						<input type="reset" value="重置">	
						</td>
					</tr>
		 </table>
		</div>				
	</div>
</form>
</body>
</html>