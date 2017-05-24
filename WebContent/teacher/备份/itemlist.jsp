<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>题目清单</title>

<script src="../js/jquery.min.js"></script>

<script>
//$(document).ready(function(){
//	$.ajax({  
//       url: '/JZExamSystem/ItemGet.action',
//        type: 'POST',  	//请求类型
//		data: {},//上传数据
//        dataType: 'json',//返回类型  
//        //timeout: 1000,  //设定超时  
//        //cache: false,   //禁用缓存  
//        error: function(xml) {  
//            alert("加载XML文档出错!");  
//        },
//        success: function(data){   //设置成功后回调函数
//			var json = eval(data.result);
//			var i=1;
//			$.each(json, function(index,value){
//				var json = eval(data.result);
//				$.each(json, function(index,value){
//            		
//            		if(json[index].type == "blankfiling")//填空题
//            		{
//           			
//            		}
//				});
//			}
//		}
//    }); 
//});
</script>

</head>
<body>
<div class="selectitem">
	<div id="choice">
		<div class="choiceCss">
		选择题题目<br>
		<input name="radio" type="radio" value="A" />A:A选项
		<input name="radio" type="radio" value="B" />B:B选项
		<input name="radio" type="radio" value="C" />C:C选项
		<input name="radio" type="radio" value="D" />D:D选项<br>
		答案：答案内容；<br>
		</div>
	</div>
	
	<div id="judge" >
		<div class="judgeCss">
		判断题题目<br>
		<input name="X" type="radio" value="C" />Y
		<input name="X" type="radio" value="D" />N<br>
		答案：答案内容；<br>
		</div>
	</div>
	
	<div id="blankfiling">
		<div class="blankfilingCss">
		填空题题目<br>
		答案：答案内容；<br>
		</div>
	</div>
	</div>
	<div id="">
	 <table border="1">
	 	<tr>
	 	<td>试卷题目</td>
	 	<td><input type="text" name="topic"></td>
	 	</tr>
	 	<tr>
	 	<td>选择题</td>
	 	<td>数量：<input type="text" name="number"></td>
	 	<td>总分值：<input type="text" name="score"></td>
	 	</tr>
	 	<tr>
	 	<td>判断题</td>
	 	<td>数量：<input type="text" name="number"></td>
	 	<td>总分值：<input type="text" name="score"></td>
	 	</tr>
	 	<tr>
	 	<td>填空题</td>
	 	<td>数量：<input type="text" name="number"></td>
	 	<td>总分值：<input type="text" name="score"></td>
	 	</tr>
	 </table>
	</div>
	<div>
		<input type="submit" value="完成"/>
		<input type="submit" value="取消"/>
	</div>
</body>
</html>