<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>病房信息修改</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    
    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">

    <script src="lib/jquery-1.7.2.min.js" type="text/javascript"></script>


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
</head>
<body>

<div class="content">      
      <div class="header">          
            <h1 class="page-title">病房信息修改</h1>
    </div>     
                <div class="container-fluid">
            <div class="row-fluid">                 
    <ul class="nav nav-tabs"><li></li>
    </ul>
    <div id="myTabContent" class="tab-content">
      <div class="tab-pane active in" id="home">
      
      
    <form action="NewEditRoomServlet" method="post">
    <label>房间编号</label>
        <input type="text" name="ward_num" value="${sessionScope.newreditinfo.ward_num }" class="input-xlarge" >
		<label>房间类型</label>
		<p>
		  <label>
		  <select name="ward_type" class="input-xlarge" >
		    <option value=单人 ${sessionScope.newreditinfo.ward_type=='单人'?'selected="selected"':'' }>单人</option>
		    <option value=双人 ${sessionScope.newreditinfo.ward_type=='双人'?'selected="selected"':'' }>双人</option>
		    <option value=四人   ${sessionScope.newreditinfo.ward_type=='四人'?'selected="selected"':'' } >四人</option>
		    </select>
		  </label>
		  
		</p>
		<label>所属科室</label>
        <input type="text" name="ward_depart" value="${sessionScope.newreditinfo.ward_depart }" class="input-xlarge" >
        <label>负责人</label>
        <input type="text" name="ward_doc" value="${sessionScope.newreditinfo.ward_doc }" class="input-xlarge">
        <label>电话</label>
        <input type="text" name="ward_doc_tel"value="${sessionScope.newreditinfo.ward_doc_tel }" class="input-xlarge">
        <label>租金/天</label>
        <input type="text"  name="ward_rent" class="input-xlarge" value="${sessionScope.newreditinfo.ward_rent }">
<div class="btn-toolbar"></div>
    <button  class="btn btn-primary"><i class="icon-save"></i>保存修改</button>
</form>
      </div>
  </div>

</div>            
            </div>
        </div>
    <script src="lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
    </script>
</body>
</html>