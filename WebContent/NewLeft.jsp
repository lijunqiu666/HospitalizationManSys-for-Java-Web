<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>欢迎使用</title>
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
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
    <style type="text/css">
<!--
.STYLE2 {color: #FFFFFF}
-->
    </style>
</head>

  <body class=""> 
  <div class="sidebar-nav">
    <a href="Welcome.jsp" target="Newmain" class="nav-header" ><i class="icon-dashboard"></i>欢迎</a>
	
	
   <a href="#dashboard-menu" data-toggle="collapse" class="nav-header" ><i class="icon-dashboard"></i>医生操作</a>
   <ul id="dashboard-menu" class="nav nav-list collapse in">
            <li ><a href="DelDoc.jsp" target="Newmain">删除医生账户</a></li>
            <li ><a href="SearchDocServlet" target="Newmain">查询医生账户</a></li>
    </ul>
<a href="#accounts-menu" class="nav-header" data-toggle="collapse"><i class="icon-briefcase"></i>病房操作</a>
        <ul id="accounts-menu" class="nav nav-list collapse">
            <li ><a href="NewAddRoom.jsp" target="Newmain">添置病房</a></li>
            <li ><a href="NewDelRoom.jsp" target="Newmain">删除病房</a></li>
			<li ><a href="NewSearchNullBedServlet" target="Newmain">病房查询</a></li>
      </ul>

  <a href="ToEditAdminServlet?user_num=${sessionScope.map.user_num }" class="nav-header" target="Newmain"><i class="icon-question-sign"></i>个人信息维护</a></div>
    

    
    <script src="lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
    </script>
<body>
</body>
</html>
