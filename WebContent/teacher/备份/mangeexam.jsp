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
	$().ready(function() {
		$("#searchtable").show();
		$("#table1").advancedtable({searchField: "#search", loadElement: "#loader", searchCaseSensitive: false, ascImage: "../images/up.png", descImage: "../images/down.png"});
	});
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
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>1</td>
            <td><a href="**"  style="text-decoration:none"> get试卷的标题</a></td>
            <td><a href="**"  style="text-decoration:none">删除</a></td>
          </tr>
          <tr>
            <td>2</td>
            <td><a href="**"  style="text-decoration:none"> get试卷的标题</a> </td>
            <td><a href="**"  style="text-decoration:none">删除</a></td>
          </tr>
          <tr>
            <td>3</td>
            <td><a href="**"  style="text-decoration:none"> get试卷的标题</a> </td>
            <td><a href="**"  style="text-decoration:none">删除</a></td>
          </tr>
          <tr>
            <td>4</td>
            <td><a href="**"  style="text-decoration:none"> get试卷的标题</a> </td>
            <td><a href="**"  style="text-decoration:none">删除</a></td>
          </tr>
          <tr>
            <td>5</td>
            <td><a href="**"  style="text-decoration:none"> get试卷的标题</a> </td>
            <td><a href="**"  style="text-decoration:none">删除</a></td>
          </tr>
          <tr>
            <td>6</td>
            <td><a href="**"  style="text-decoration:none"> get试卷的标题</a> </td>
            <td><a href="**"  style="text-decoration:none">删除</a></td>
          </tr>
          <tr>
            <td>7</td>
            <td><a href="**"  style="text-decoration:none"> get试卷的标题</a></td>
            <td><a href="**"  style="text-decoration:none">删除</a></td>
          </tr>
          <tr>
            <td>8</td>
            <td><a href="**"  style="text-decoration:none"> get试卷的标题</a> </td>
            <td><a href="**"  style="text-decoration:none">删除</a></td>
          </tr>
          <tr>
            <td>9</td>
            <td><a href="**"  style="text-decoration:none"> get试卷的标题</a> </td>
            <td><a href="**"  style="text-decoration:none">删除</a></td>
          </tr>
          <tr>
            <td>10</td>
            <td><a href="**"  style="text-decoration:none"> get试卷的标题</a> </td>
            <td><a href="**"  style="text-decoration:none">删除</a></td>
          </tr>
          <tr>
            <td>11</td>
            <td><a href="**"  style="text-decoration:none"> get试卷的标题</a> </td>
            <td><a href="**"  style="text-decoration:none">删除</a></td>
          </tr>
          <tr>
            <td>12</td>
            <td><a href="**"  style="text-decoration:none"> get试卷的标题4</a> </td>
            <td><a href="**"  style="text-decoration:none">删除</a></td>
          </tr>
          <tr>
            <td>13</td>
            <td><a href="**"  style="text-decoration:none"> get试卷的标题</a></td>
            <td><a href="**"  style="text-decoration:none">删除</a></td>
          </tr>
          <tr>
            <td>14</td>
            <td><a href="**"  style="text-decoration:none"> get试卷的标题</a> </td>
            <td><a href="**"  style="text-decoration:none">删除</a></td>
          </tr>
          <tr>
            <td>15</td>
            <td><a href="**"  style="text-decoration:none"> get试卷的标题</a> </td>
            <td><a href="**"  style="text-decoration:none">删除</a></td>
          </tr>
          <tr>
            <td>16</td>
            <td><a href="**"  style="text-decoration:none"> get试卷的标题</a> </td>
            <td><a href="**"  style="text-decoration:none">删除</a></td>
          </tr>
          <tr>
            <td>17</td>
            <td><a href="**"  style="text-decoration:none"> get试卷的标题</a> </td>
            <td><a href="**"  style="text-decoration:none">删除</a></td>
          </tr>
          <tr>
            <td>18</td>
            <td><a href="**"> get试卷的标题</a> </td>
            <td><a href="**">删除</a></td>
          </tr>
          <tr>
            <td>19</td>
            <td><a href="**"> get试卷的标题</a> </td>
            <td><a href="**">删除</a></td>
          </tr>
          <tr>
            <td>20</td>
            <td><a href="**"> get试卷的标题</a> </td>
            <td><a href="**">删除</a></td>
          </tr>
          <tr>
            <td>21</td>
            <td><a href="**"> get试卷的标题</a> </td>
            <td><a href="**">删除</a></td>
          </tr>
          <tr>
            <td>22</td>
            <td><a href="**"> get试卷的标题</a> </td>
            <td><a href="**">删除</a></td>
          </tr>
          <tr>
            <td>23</td>
            <td><a href="**"> get试卷的标题</a> </td>
            <td><a href="**">删除</a></td>
          </tr>
            <td>24</td>
            <td><a href="**"> get试卷的标题</a> </td>
            <td><a href="**">删除</a></td>
          </tr>
          <tr>
            <td>25</td>
            <td><a href="**"> get试卷的标题</a> </td>
            <td><a href="**">删除</a></td>
          </tr>
        </tbody>
      </table>
    </div>
    <div class="half right">
      <h2>吉珠老师</h2>
      <ul class="overview">
		<li>修改试卷</li>
		<li>删除试卷</li>
		<li>增加试卷</li>
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