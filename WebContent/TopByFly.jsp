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
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
    <style type="text/css">
<!--
.STYLE3 {font-size: 30px}
.STYLE5 {color: #FFFFFF}
.STYLE7 {font-size: 18px}
-->
    </style>
</head>
  <body class=""> 
    
    <div class="navbar">
      <div class="navbar-inner"><a class="brand"><span class="first STYLE3">医院住院管理系统</span></a>        </div>
    </div>
   
    <script src="lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
    </script>
<body>
<td><div class="STYLE5" id="date"> 
  <div align="left">2017年07月07日 09:05:15	星期五</div>
</div></td>
               <td>
				<div align="right" class="STYLE7"><span class="STYLE5">欢迎:  ${sessionScope.map.user_name }</span>  <a href="Login.jsp" target="_top">注销</a> 
				</div>
				</td>
<script type="text/javascript">
	function show()
	{
		//获取系统时间
		var time=new Date();
		var y=time.getFullYear();
		var m=time.getMonth()+1;
		if(m<10)
		{
			m="0"+m;
		}
		var d=time.getDate();
		if(d<10)
		{
			d="0"+d;
		}
		var weeks=["日","一","二","三","四","五","六"];
		//第几天 
		var w=time.getDay();
		var h=time.getHours();
		if(h<10)
		{
			h="0"+h;
		}
		var mi=time.getMinutes();
		if(mi<10)
		{
			mi="0"+mi;
		}
		var s=time.getSeconds();
		if(s<10)
		{
			s="0"+s;
		}
		var date=document.getElementById("date");
		date.innerHTML=y+"年"+m+"月"+d+"日 "+h+":"+mi+":"+s
			+" 星期"+weeks[w];
	}
	setInterval("show()", 1000);
</script>
</body>
</html>
