<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改试卷</title>
<link rel="stylesheet" href="../css/demo.css" type="text/css" media="all" />
<script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript" src="../js/pagescroller.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var navLabel = new Array('选择题', '填空题', '判断题', '编程题');
	$('#main').pageScroller({ navigation: navLabel });
	$('.next').click(function(e){
		e.preventDefault();
 		pageScroller.next();
	});
	$('.prev').click(function(e){
		e.preventDefault();
		pageScroller.prev();
	});
});	
</script>
</head>
<body>
<div id="div_box" class="light">
	<a href="#" class="prev"><img src="../images/icon_arrow-up_light.png" alt="" width="28" height="31" /></a>
	<a href="#" class="next"><img src="../images/icon_arrow-down_light.png" alt="" width="28" height="31" /></a>
</div>
<div id="wrapper">
	<div id="main">
		<div id="title">
			<h1>试卷名2017 c++期末考试（A卷）</h1><br>
			<h3>满分：100分  时间：150分钟 日期:2017.4.10</h3>
		</div>
		<div class="type">
			<h1>一：选择题</h1> <br>
			<div class="choiceCss">
				1、选择题题目<br>
				<input name="radio" type="radio" value="A" disabled />A:A选项
				<input name="radio" type="radio" value="B" disabled/>B:B选项<br>
				<input name="radio" type="radio" value="C" disabled/>C:C选项
				<input name="radio" type="radio" value="D" disabled/>D:D选项
				<div class="answerCss">
				答案：答案内容；
				</div><br>
			</div>
			<div class="choiceCss">
				1、选择题题目<br>
				<input name="radio" type="radio" value="A" disabled />A:A选项
				<input name="radio" type="radio" value="B" disabled/>B:B选项<br>
				<input name="radio" type="radio" value="C" disabled/>C:C选项
				<input name="radio" type="radio" value="D" disabled/>D:D选项
				<div class="answerCss">
					答案：答案内容；
				</div><br>
			</div>
			<div class="choiceCss">
				1、选择题题目<br>
				<input name="radio" type="radio" value="A" disabled />A:A选项
				<input name="radio" type="radio" value="B" disabled/>B:B选项<br>
				<input name="radio" type="radio" value="C" disabled/>C:C选项
				<input name="radio" type="radio" value="D" disabled/>D:D选项
					<div class="answerCss">
					答案：答案内容；
				</div><br>						
			</div>			
			<p>f</p><p>f</p><p>f</p><p>f</p><p>f</p><p>f</p><p>f</p><p>f</p>
			<p>e</p><p>e</p><p>e</p><p>e</p><p>e</p><p>e</p><p>e</p><p>e</p>
			<p>e</p><p>e</p><p>e</p><p>e</p><p>e</p><p>e</p><p>e</p><p>e</p>
			<p>f</p><p>f</p><p>f</p><p>f</p><p>f</p><p>f</p><p>f</p><p>f</p>
			<p>e</p><p>e</p><p>e</p><p>e</p><p>e</p><p>e</p><p>e</p><p>e</p>
			<p>e</p><p>e</p><p>e</p><p>e</p><p>e</p><p>e</p><p>e</p><p>e</p>
		</div>
		<div class="type">
			<h1>二：填空题</h1><br>
			<div class="blankfilingCss">
				填空题题目<br>
				答案：答案内容；<br>
			</div>
			<p>e</p><p>e</p><p>e</p><p>e</p><p>e</p><p>e</p><p>e</p><p>e</p>
			<p>r</p><p>r</p><p>r</p><p>r</p><p>r</p><p>r</p><p>r</p><p>r</p>
			<p>e</p><p>e</p><p>e</p><p>e</p><p>e</p><p>e</p><p>e</p><p>e</p>
		</div>
		<div class="type">
			<h1>三：判断题</h1><br>
				<div class="judgeCss">
					判断题题目<br>
					<input name="X" type="radio" value="C" disabled/>Y
					<input name="X" type="radio" value="D" disabled/>N
				<div class="answerCss">
					答案：答案内容；
				</div><br>
				</div>
			<p>e</p><p>e</p><p>e</p><p>e</p><p>e</p><p>e</p><p>e</p><p>e</p>
			<p>e</p><p>e</p><p>e</p><p>e</p><p>e</p><p>e</p><p>e</p><p>e</p>
		</div>
		<div class="type"><h1>四：编程题</h1><br>
		输入一个数组。。。。。。
		</div>
		<input type="submit" value="完成" class="btn-style">
		<input type="submit" value="取消" class="btn-style">
	</div><!-- [END] #main -->
	</div><!-- [END] #wrapper -->
</body>
</html>