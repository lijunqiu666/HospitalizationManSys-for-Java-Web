<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
    <title>修改病房信息</title>
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
  
  <div class="row-fluid">
    <div class="dialog">
        <div class="block">
            <p class="block-heading">个人修改信息</p>
            <div class="block-body">
            
            
              <form action="AdminEditServlet" method="post">
                    <input type="hidden" name="user_id" value="${sessionScope.admineditinfo.user_id }">
                    <label>用户名</label>
                    <input type="text" name="user_num" value="${sessionScope.admineditinfo.user_num }"  class="span12"  >
                    <label>用户姓名</label>
                    <input type="text" name="user_name" value="${sessionScope.admineditinfo.user_name }"  class="span12">
                    <label>密码</label>
                    <input type="password" name="user_pwd" value="${sessionScope.admineditinfo.user_pwd }"  class="span12">
                    <label>电话</label>
                    <input type="text" name="tel" value="${sessionScope.admineditinfo.tel }" class="span12">
                    <label>住址</label>
                    <input type="text" name="addr" value="${sessionScope.admineditinfo.addr }"class="span12">
                    <label>性别</label>
                    <p>
                      <label>
                      <select name="sex">
                        <option value=男 ${sessionScope.admineditinfo.sex=='男'?'selected="selected"':'' }>男</option>
                        <option value=女 ${sessionScope.admineditinfo.sex=='女'?'selected="selected"':'' }>女</option>
                        <option value=保密 ${sessionScope.admineditinfo.sex=='保密'?'selected="selected"':'' }>保密</option>
                      </select>
                      <input type="submit" class="btn btn-primary pull-right" value="保存修改">
                      <br>
                      </label>
                </p>
              </form>
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
<body>
</body>
</html>