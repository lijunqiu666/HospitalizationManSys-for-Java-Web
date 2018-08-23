<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="assets/css/site.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<style type="text/css">
@font-face {
 font-family:'newFont';
 src: url('assets/font-awesome/font/FontAwesome.otf');
}  
*{
	margin:0px;
	padding:0px;
}
#title{
	font-size: 28px;
	font-weight: bold;
}
#div0{
	margin-right:20px;
}
#div1{
	height:90px;
}
#div2{
	margin-right:-900px;
}
#clock{
	font-size: 17px;
	text-decoration: none;
}
#zx:HOVER{
	text-decoration: none;
}
.container{
	margin-top:10px;
	margin-left:50px;
}
#div3{
	padding-right:-1000px;
	margin-bottom:-10px;
	text-align: right;
}
#d1{
	margin-left:50px;
}
#d2{
	margin-left:500px;
}
#a2{
	color: white;
	font-size:15px;
}
</style>
</head>
<body data-spy="scroll" data-target=".navbar" onload="startclock();">
<div class="navbar navbar-inverse navbar-fixed-top">
  <div class="navbar-inner" id="div1">
  	<div class="container">
      <a class="brand" href="Login.jsp" target="_top" id="title">医院住院管理系统</a>
      <div id="div0">
      <ul class="nav">
		<li><a>当前用户：${sessionScope.doc.user_name }</a></li>
	  </ul>
      </div>
      <div><ul class="nav" id="d2"><li><a href="Login.jsp" target="_top" id="a2">注销</a></li></ul></div>
    </div>
    <div class="container" id="div3">
     	<a id="clock"></a>
   </div>
  </div>
</div>
</body>
<script src="jquery-3.2.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
var timerID = null;
var timerRunning = false;

function stopclock() {
    if (timerRunning)
        clearTimeout(timerID);
    timerRunning = false;
}
function startclock() {
    stopclock();
    showtime();
}
function showtime() {
    var now = new Date();
    var hours = now.getHours();
    var minutes = now.getMinutes();
    var seconds = now.getSeconds()
    var timeValue = now.getFullYear() + "年" + (now.getMonth() + 1) + "月" + now.getDate() + "日 "
    timeValue += hours
    timeValue += ((minutes < 10) ? ":0" : ":") + minutes
    timeValue += ((seconds < 10) ? ":0" : ":") + seconds

    document.getElementById("clock").innerHTML = timeValue;
    timerID = setTimeout("showtime()", 1000);
    timerRunning = true;
}
</script>
<script src="assets/js/jquery-1.7.1.min.js"></script>
<script src="assets/js/bootstrap-222.min.js"></script>
</html>