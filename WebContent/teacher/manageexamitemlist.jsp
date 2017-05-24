<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>题目清单</title>
<link rel="stylesheet" href="../css/exam.css"> 
<link href="../css/floatingwindow.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery-1.10.2.min.js"></script>
<script src='../js/jquery.js'></script>
<script src='../js/skrollr.min.js'></script>
<script> 
$(document).ready(function () {	
	/*
	<forEach items="${list}" var="obj">
		var obj_arr="${obj.name}";
		$("#content").append("<div class='card'>${676}</div>");
	</forEach>
	skrollr.init({ smoothScrolling: true });
	*/
	//$.each('${items}', function(index,value){
	
	var json = eval(${items});
	
	var blankfilinghtml = "";
	var choicehtml = "";
	var judgehtml = "";
	
	var blankfiling=1;
	var choice=1;
	var judge=1;
	$.each(json, function(index,value){
		
		if(json[index].type == "blankfiling"){//填空题
			blankfilinghtml+="<div class='blankfilingCss'>"+
										blankfiling+"."+
										json[index].content+"<br>"+
										"答案："+json[index].answer+"<br>"+
										"<input name='select' type='checkbox' value='select '/>"+
									"</div>"
						blankfiling++;
		}
		else if(json[index].type == "choice"){//选择题
			str=json[index].content; //这是一字符串 
    		var strs= new Array(); 	 //定义一数组 
    		strs=str.split("->");    //字符分割 
    		
    		choicehtml += "<div class='choiceCss'>"+
								choice+"."+
								strs[0]+"<br>"+
								strs[1]+
								strs[2]+
								strs[3]+
								strs[4]+"<br>"+
								"答案："+json[index].answer+"<br>"+
								"<input name='select' type='checkbox' value='select'/><br>"+
							"</div>"
						choice++;
		}
        else if(json[index].type == "judge"){//判断题
        	judgehtml+="<div class='judgeCss'>"+
							judge+"."+
							json[index].content+"<br>"+
							"<input name='X' type='radio' value='Y' disabled/>Y"+
							"<input name='X' type='radio' value='D' disabled/>N<br>"+
							"答案："+json[index].answer+"<br>"+
							"<input name='select' type='checkbox' value='select '/>"+
						"</div>"
						judge++;
        }
	});//list遍历完结
	$("#blankfiling").html(blankfilinghtml);
	$("#choice").html(choicehtml);
	$("#judge").html(judgehtml);

}); //@ sourceURL=pen.js
</script>
<script type="text/javascript"> 
/*
window.onload=function(){

	bt.onclick=function(){
		if(confirm("完成一张组卷,是否继续组卷？"))
		{
			//self.location='manageexamitemlist.jsp';
			//alert("hhh");
		}
		else{
			//window.location.href("manageexam.jsp");
			//alert("manageexam");
			//self.location='manageexam.jsp';
		}
  	}
};
*/
</script> 
<script src="js/jquery.min.js"></script>
<script>
$(function(){
	$("#showdiv").click(function(){
		var box =300;
		var th= $(window).scrollTop()+$(window).height()/1.6-box;
		var h =document.body.clientHeight;
		var rw =$(window).width()/2-box;
		$(".showbox").animate({top:th,opacity:'show',width:600,height:180,right:rw},500);
		$("#zhezhao").css({
			display:"block",height:$(document).height()
		});
		return false;
	});
	$(".showbox .close").click(function(){
		$(this).parents(".showbox").animate({top:0,opacity: 'hide',width:0,height:0,right:0},500);
		$("#zhezhao").css("display","none");
	});
});
</script>
</head>
<body>
<div id="page" >
	<div id="toolbar" style="background:#BEBEBE;">
		<div id="title" >
			<font>以下是您选好的题目：</font>
		</div>
        <div id="title-right">
           	<a href="teacher.jsp" >退出</a>   
        </div>
	</div>
	 <div id="content" ><!-- 框的样式 -->
	 	<div class="contentCss" style="border: 1px solid #ffff00;" ><!-- 题的内容样式 -->
			<div id="choice" ><!-- 选择题样式 -->
			</div>
		</div>
		<div class="contentCss" style="border: 1px solid #ffff00;">
			<div id="judge" ><!--判断题的样式  -->			
			</div>
		</div>
		<div class="contentCss" style="border: 1px solid #ffff00;">
			<div id="blankfiling">
			</div>
		</div>
	<div>
		<a id="showdiv" href="#" style="background:#BEBEBE;color:#000000">确定组卷</a>
	</div>
</div>
</div>
<!---------- 筛选标签的弹窗 --------------->
<div class="showbox" style="color:#000000">
	<h2>请填写一张试卷的相关信息<a class="close" href="javascript:">关闭</a></h2>
	<div class="mainlist"><!-- 题目标签的样式 -->
		 <table border="2" cellpadding="0" cellspacing="0" style="width:98%; height:80%;" >
  			<form action="confirmExam" method="post">
		 	<tr>
			 	<td style="background:#BEBEBE;" >试卷题目</td>
			 	<td colspan="2"><input type="text" name="topic" style="width:98%;"></td>
		 	</tr>
		 	<tr>
		 	<td style="background:#BEBEBE;">选择题</td>
			 	<td>数量：<input type="text" name="number"></td>
			 	<td>总分值：<input type="text" name="score"></td>
		 	</tr>
		 	<tr>
			 	<td style="background:#BEBEBE;">判断题</td>
			 	<td>数量：<input type="text" name="number"></td>
			 	<td>总分值：<input type="text" name="score"></td>
		 	</tr>
		 	<tr>
			 	<td style="background:#BEBEBE;">填空题</td>
			 	<td>数量：<input type="text" name="number"></td>
			 	<td>总分值：<input type="text" name="score"></td>
		 	</tr>
	 </table>		
	</div>
	<div align="center">
	   	<input type="submit" id="bt"value="确定" style="width:100px;height:30px;background:#3366cc;color:#fff; border-radius:10px;">
	</div>
	</form>
</div>	
<div id="zhezhao"></div>
</body>
</html>