<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>管理试卷</title>
<script src="../js/jquery.js" type="text/javascript" language="javascript"></script>
<script src="../js/advancedtable.js" type="text/javascript" language="javascript"></script>
<script language="javascript" type="text/javascript">
$(document).ready(function () {
	$.ajax({  
            url: '/JZExamSystem/getAllExam.action',
            type: 'POST',  	 //请求类型
            dataType: 'json',//返回类型  
            error: function(xml) {  
                alert("请求数据出错!");  
            },
            success: function(data){   //设置成功后回调函数
        		var json = eval(data.result);
        		var htmlstr = ""; 
        		
        		$.each(json, function(index,value){
        			
        			htmlstr +=  "<tr><td>" + (index+1) + "</td>"+
        						"<td><a href='**'>"+json[index].examName +"</a></td>"+
        						"<td><a href='**'>删除</a></td>"+
        						"<td>"+ json[index].examTime +"</td></tr>"
        		});
        
        		$("#tbExam").html(htmlstr);
        	}
	});
});

//	$().ready(function() {
//		$("#searchtable").show();
//		$("#table1").advancedtable({searchField: "#search", loadElement: "#loader", searchCaseSensitive: false, ascImage: "../images/up.png", descImage: "../images/down.png"});
//	});
</script>
<link href="../css/lanrenzhijia.css" rel="stylesheet" type="text/css" />
<link href="../css/advancedtable.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="topbanner">
  <div class="content">管理试卷</div>
</div>
<div id="wrapper">
  <div id="maincontent">
    <div class="half left">
      <table width="100%" class="normal" id="searchtable" border="0" cellspacing="4" cellpadding="0" style="display:none;">
        <tr>
        	输入试卷编号或相关题目关键字：
          <td width="27%">
         	 <input name="search" type="text" id="search" style="display:none;" />
          </td>
          <td width="73%">
       		<div id="loader" style="display:none;">
         		<img src="../images/loader.gif" alt="Laoder" />
        	</div>
          </td>
        </tr>
      </table>
      <table width="100%" id="table1" class="advancedtable" border="0" cellspacing="0" cellpadding="0">
        <thead>
          <tr>
            <th>试卷编码</th>
            <th>试卷名字</th>
            <th>管理</th>
            <th>时间</th>
          </tr>
        </thead>
        <tbody id="tbExam">
        </tbody>
      </table>
   </div>
    <div class="half right">
      <h2>吉珠老师</h2>
      <ul class="overview">
		<li><a href="manageexamadd.jsp" style="text-decoration:none">增加试卷 </a></li>
      </ul>
      <p><img src="../images/1.jpg"   width="260" height="250"/></p>
      <p>&nbsp;</p>
    </div>
    <div class="spacer">
      <!-- SPACER -->
    </div>
  </div>
</div>
</body>
</html>