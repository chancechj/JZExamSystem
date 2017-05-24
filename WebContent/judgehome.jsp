<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>C++模拟判题</title>
<script type="text/javascript" src="jslib/getresult.js"></script>
</head>
<body>
	<center>
		<script language="Javascript" type="text/javascript"
			src="edit_area/edit_area_full.js"></script>
<!-- 		<script language="Javascript" type="text/javascript">
			editAreaLoader
					.init({
						id : "source",
						start_highlight : true,
						allow_resize : "both",
						allow_toggle : true,
						word_wrap : true,
						language : "en",
						syntax : "cpp",
						font_size : "12",
						syntax_selection_allow : "basic,c,cpp,java,pas,perl,php,python,ruby",
						toolbar : "search, go_to_line, fullscreen, |, undo, redo, |, select_font,syntax_selection,|, change_smooth_selection, highlight, reset_highlight, word_wrap, |, help"
					});
		</script> -->
		<script src="include/checksource.js"></script>

		Problem <span class=blue><b>1001</b></span> 
		<input id="id" type='hidden' value='1001' name="id" ><br>
		 <span id="language_span">Language: <select
			name="language" id="language" onChange="reloadtemplate(this);">
				<option value=0 selected>C</option>
				<option value=1>C++</option>
				<option value=2>Pascal</option>
				<option value=3>Java</option>
				<option value=6>Python</option>
		</select> 

		</span>

		<textarea style="width: 80%" cols=180 rows=20 id="source" name="source"></textarea>
		<br> 输入:
		<textarea style="width: 30%" cols=40 rows=5
			id="inputhttp://127.0.0.1/JudgeOnline_text" name="input_text">1
</textarea>
		输出:
		<textarea style="width: 30%" cols=10 rows=5 id="out" name="out">SHOULD BE:
    2</textarea>
		 <br> <input type="button" value="提交"
			onclick="checksource(document.getElementById('source').value)&toPost()"> &nbsp;&nbsp; <span id="result"></span>
	</center>
</body>
</html>