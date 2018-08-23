<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>病房查询</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    
    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">

    <script src="lib/jquery-1.7.2.min.js" type="text/javascript"></script>

    <!-- Demo page code -->

    <style type="text/css">
        #line-chart {
            height:300px;
            width:800px;
            margin: 0px auto;
            margin-top: 1em;
        }
        .brand { font-family: georgia, serif; }
        .brand .first {
            color: #ccc;
            font-style: italic;
        }
        .brand .second {
            color: #fff;
            font-weight: bold;
        }
    </style>

    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
    <style type="text/css">
<!--
.STYLE3 {font-size: 12px}
-->
    </style>
</head>

  <body>
<div class="content">
        
      <div class="header">
            
            <h1 class="page-title">病床查询</h1>
      </div>
        
                <div class="container-fluid">
            <div class="row-fluid">
<div class="well">
<form method="post">
    <table class="table">
			<tr>
				<td>
					<input type="checkbox" 
					onclick="show(this.checked)">
				</td>
          <td>房间号</td>
          <td>房间类型</td>
          <td>所属科室</td>
          <td>负责人</td>
          <td>电话</td>
          <td>租金/天</td>
           <td>是否已满</td>
          <td>编辑</td>
        </tr>
        
       <c:forEach var="m" items="${sessionScope.newroom }">
		<tr>
			<td>
	<input type="checkbox" name="ward_num" value="${m.ward_num }" >
		</td>
			<td>${m.ward_num }</td>
			<td>${m.ward_type }</td>
			<td>${m.ward_depart }</td>
			<td>${m.ward_doc }</td>
			<td>${m.ward_doc_tel }</td>
			<td>${m.ward_rent }</td>
			<td>${m.ward_status }</td>
          <td>
          
              <a href="ToNREditServlet?ward_num=${m.ward_num }"><i class="icon-pencil"></i></a>
          </td>
        </tr>
        </c:forEach>
        
        <tr>
				<td colspan="2" align="center">
					<a href="RoomInfoExcel.jsp">导出数据</a>
				</td>
			</tr>
			
    </table>
</form>
                        <hr>
               </div>    
                  <p class="pull-right">&nbsp;</p>
                    
            </div>
        </div>
  </div>
   <script src="lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
    	function show(f)
    	{
    		var chs=document.getElementsByName("ward_num");
    		for(var i=0;i<chs.length;i++)
    		{
    			chs[i].checked=f;
    		}
    	};

    </script>
</body>
</html>