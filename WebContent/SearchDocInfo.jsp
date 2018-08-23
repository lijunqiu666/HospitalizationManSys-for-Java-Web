<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>医生账户信息查看</title>
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
            
            <h1 class="page-title">信息概览</h1>
      </div>
        
                <div class="container-fluid">
            <div class="row-fluid">
                    
<div class="btn-toolbar">
    <button class="btn btn-primary"><i class="icon-plus"></i> 全部信息</button>
    </div>
<div class="well">
<form action="/HosManSys/DelDocServlet" method="post">
    <table class="table">
			<tr>
				<td>
					<input type="checkbox" 
					onclick="show(this.checked)">
				</td>
          <td>账户名</td>
          <td>医生姓名</td>
          <td>性别</td>
          <td>联系电话</td>
          <td>住址</td>
        </tr>
        
       <c:forEach var="m" items="${sessionScope.doc }">
		<tr>
			<td>
	<input type="checkbox" name="user_num" value="${m.user_num }" >
		</td>
			<td>${m.user_num }</td>
			<td>${m.user_name }</td>
			<td>${m.sex }</td>
			<td>${m.tel }</td>
			<td>${m.addr }</td>
          <td>
          </td>
        </tr>
        </c:forEach>
        
        <tr>
				<td colspan="2" align="center">
					<a href="DocInfoExcel.jsp">批量导出</a>
				</td>
			</tr>
			
    </table>
</form>
                        </div>
                  <p class="pull-right">&nbsp;</p>
              </footer>
                    
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
    		var chs=document.getElementsByName("user_num");
    		for(var i=0;i<chs.length;i++)
    		{
    			chs[i].checked=f;
    		}
    	};

    </script>
</body>
</html>