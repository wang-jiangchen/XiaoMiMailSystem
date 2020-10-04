<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>小米商城后台管理系统登录</title>
    <link rel="icon" href="<%=application.getContextPath()%>/img/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/css/bootstrap.css"/>
    <script type="text/javascript" src="<%=application.getContextPath()%>/js/jquery-1.11.3.js" ></script>
    <script type="text/javascript" src="<%=application.getContextPath()%>/js/bootstrap.js" ></script>
</head>
<body style="background:#334054;">
<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-3" style="background: darkgrey;border-radius: 10px;padding: 10px;">
            <h1 class="text-center">管理员登录</h1>
            <div class="row">
                <div class="col-md-12">
                    <form action="<%=application.getContextPath()%>/adminServlet?op=login" method="post">
                        <div class="form-group">
                            <label for="username">账号</label>
                            <input type="text" class="form-control" name="username" id="username" placeholder="请输入您的账号">
                            <br><span></span>
                        </div>
                        <div class="form-group">
                            <label for="password">密码</label>
                            <input type="password" class="form-control" name="password" id="password" placeholder="请输入您的密码">
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary" style="width: 60%;">登录</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
