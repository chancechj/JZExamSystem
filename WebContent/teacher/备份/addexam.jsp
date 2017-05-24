<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>增加试卷</title>
   <link rel="stylesheet" href="../css/exam.css"> 
    <script src='../js/jquery.js'></script>
    <script src='../js/skrollr.min.js'></script>
    <script> $(document).ready(function () {		
//			<forEach items="${list}" var="obj">
//        		var obj_arr="${obj.name}";
//				$("#content").append("<div class='card'>${676}</div>");
//     		</forEach>
//            skrollr.init({ smoothScrolling: true });
            
            $.ajax({  
                url: '/JZExamSystem/ItemGet.action',
                type: 'POST',  	//请求类型
            	//data: {},//上传数据
                dataType: 'json',//返回类型  
                //timeout: 1000,  //设定超时  
                //cache: false,   //禁用缓存  
                error: function(xml) {  
                    alert("请求数据出错!");  
                },
                success: function(data){   //设置成功后回调函数
	            	var json = eval(data.result);
	            	var blankfiling = 1;
	            	var choice = 1;
	            	var judge = 1;
	            	var chooseAll = "<div class='quanxuan'>"+
										 "<input name='select' type='checkbox' value='select '/>"+
    									 "</div>";
    				var blankfilingstr = "" + "<div class='quanxuan'>"+
					 "<input name='all' id='blankfilingall' type='checkbox' value='blankfiling'/>"+
					 "</div>"+ "<div class='blankfilingCss'>";
	            	var choicestr = "" + "<div class='quanxuan'>"+
					 "<input name='all' id='choiceall' type='checkbox' value='choice'/>"+
					 "</div>" + "<div class='choiceCss'>";
	            	var judgestr = "" + "<div class='quanxuan'>"+
					 "<input name='all' id='judgeall' type='checkbox' value='judge'/>"+
					 "</div>" + "<div class='judgeCss'>";
	            	$.each(json, function(index,value){
	            		
	            		if(json[index].type == "blankfiling")//填空题
	            		{
	            			blankfilingstr += blankfiling+"."+json[index].content+"<br>"+
	            						"答案："+json[index].answer+"<br>"+
			            				"<input name='select' type='checkbox' value='"+json[index].itemId+"'/>"
			            	blankfiling++;
	            		}
	            		else if(json[index].type == "choice"){//选择题
	                		str=json[index].content; //这是一字符串 
	                		var strs= new Array(); 	 //定义一数组 
	                		strs=str.split("->");    //字符分割 
	                		choicestr += "<div class='choiceone'>"+choice+"."+strs[0]+"<br>"+
	                					 "<input name='radio' type='radio' value='A' />"+strs[1]+
	                					 "<input name='radio' type='radio' value='B' />"+strs[2]+
	                					 "<input name='radio' type='radio' value='C' />"+strs[3]+
	                					 "<input name='radio' type='radio' value='D' />"+strs[4]+"<br>"+
	                					 "答案："+json[index].answer+"<br>"+
			                			 "<input name='select' type='checkbox' value='"+json[index].itemId+"'/>"+
			                			 "</div><br>"
			                choice++;
	            		}
	                    else if(json[index].type == "judge"){//判断题
	                    	judgestr += judge +"."+ json[index].content + "<br>"+
	                		"<input name='X' type='radio' value='Y' />Y"+
	                		"<input name='X' type='radio' value='N' />N<br>"+
	                		"答案："+json[index].answer+"<br>"+
	                		"<input name='select' type='checkbox' value='"+json[index].itemId+"'/>"
	                		judge++;
	                    }
	            		
	
	    			});//list遍历完结

	    			choicestr += "</div>"//<div class='choiceCss'>标签补全
	    			blankfilingstr += "</div>"
	    			judgestr += "</div>"
	            	$("#blankfiling").html(blankfilingstr);
	            	$("#choice").html(choicestr);
	            	$("#judge").html(judgestr);
        			
            	}//成功回调函数完结
           }); //ajax函数完结
        }); //@ sourceURL=pen.js
        
        function sumbit(){
        	var obj = $(":input[name='select']");
        	var index="";//结果存放处，类型为itemId1->itemId2->itemId3
        	for(var i=0; i<obj.length; i++){
        		if(obj[i].checked){
        			index += obj[i].value + "->";
        		}
        	}
        	$.ajax({  
                    url: '/JZExamSystem/ItemGet.action',
                    type: 'POST',  	//请求类型
            	   	data: {"items":index},//上传数据
                    //dataType: 'json',//返回类型  
                    //timeout: 1000,  //设定超时  
                    //cache: false,   //禁用缓存  
                    error: function(xml) {  
                        alert("请求数据出错!");  
                    },
                    success: function(){
                	}
             });
        }
    </script>
</head>
<body>
 <div id="page">
	<div id="toolbar">
		<div id="title">
			<a href="**"><font color="#000000">标签1</font></a><!-- 动态标签js -->
			<a href="**"><font color="#000000">标签2</font></a>
		</div>
        <div id="title-right">
           	<a href="../indext.jsp" >退出</a>   
        </div>
	</div><!-- toolbar结束 -->
	<div id="content">
    <div class="contentCss">
	<div id="choice">
		<div id="quanxuan">
       	<input style="align:right" id="choiceall" name="all" type="checkbox" value="choice "/>全选
       	</div> <br>
		<div class="choiceCss">
		<div class="choiceone">1选择题题目<br>
		<input name="radio" type="radio" value="A" />A:A选项
		<input name="radio" type="radio" value="B" />B:B选项
		<input name="radio" type="radio" value="C" />C:C选项
		<input name="radio" type="radio" value="D" />D:D选项<br>
		答案：答案内容；<br>
		<input name="select" type="checkbox" value="select "/>
		</div><br>
		<div class="choicetwo">2选择题题目<br>
		<input name="radio" type="radio" value="A" />A:A选项
		<input name="radio" type="radio" value="B" />B:B选项
		<input name="radio" type="radio" value="C" />C:C选项
		<input name="radio" type="radio" value="D" />D:D选项<br>
		答案：答案内容；<br>
		<input name="select" type="checkbox" value="select "/>
		</div><br>
		<div class="choicethee">3选择题题目<br>
		<input name="radio" type="radio" value="A" />A:A选项
		<input name="radio" type="radio" value="B" />B:B选项
		<input name="radio" type="radio" value="C" />C:C选项
		<input name="radio" type="radio" value="D" />D:D选项<br>
		答案：答案内容；<br>
		<input name="select" type="checkbox" value="select "/>
		</div>
		</div>
	</div><!-- choice结束 -->
	</div><!-- contentCss结束 -->
	
	<div class="contentCss">
	<div id="judge" >
		<div class="quanxuan">
			<input name="all" id="judgeall" type="checkbox" value="judge "/>
		</div> 
		<div class="judgeCss">
		判断题题目<br>
		<input name="X" type="radio" value="Y" />Y
		<input name="X" type="radio" value="N" />N<br>
		答案：答案内容；<br>
		<input name="select" type="checkbox" value="select "/>
		</div>
	</div><!-- judge结束 -->
	</div><!-- contentCss结束 -->
	
	<div class="contentCss">
		<div id="blankfiling">
			<div class="quanxuan">
				<input name="all" id="blankfilingall" type="checkbox" value="blankfiling "/>
			</div> 
			<div class="blankfilingCss">
			填空题题目<br>
			答案：答案内容；<br>
			<input name="select" type="checkbox" value="select "/>
			</div>
		</div>
	</div><!-- contentCss结束 -->
	<div>
		<input type="submit" onclick="sumbit()" value="添加到题目清单"/>
	</div>
	</div><!-- content结束 -->
</div>	
</body>
</html>