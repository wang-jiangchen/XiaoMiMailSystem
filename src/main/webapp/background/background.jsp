<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>小米商城后台管理系统</title>
    <link rel="icon" href="<%=application.getContextPath()%>/img/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/css/background.css"/>
    <script type="text/javascript" src="<%=application.getContextPath()%>/js/jquery-1.11.3.js" ></script>
    <script type="text/javascript" src="<%=application.getContextPath()%>/js/bootstrap.js" ></script>
    <script type="text/javascript">
        $(function(){
            $("#main-left>ul>li:odd").hide();
            $("#main-left>ul>li:even").click(function(){
                $(this).next().slideToggle();
                if($(this).children("span").attr("class")=="glyphicon glyphicon-menu-down"){
                    $(this).children("span").attr("class","glyphicon glyphicon-menu-right");
                }else{
                    $(this).children("span").attr("class","glyphicon glyphicon-menu-down");
                }
            })
        })
    </script>
</head>
<body>
<div id="container">
    <div id="head">
        <div id="head-main">
            <img src="../img/logo.png" />
            <div id="user" class="text-center">
                <span id="user-name"><img id="user-photo" src="../img/admin-photo.jpg" />admin</span>&nbsp;&nbsp;
                <a href="#"><span class="glyphicon glyphicon-off"></span></a>
            </div>
        </div>
    </div>
    <div id="main">
        <div id="main-left">
            <ul>
                <li class="menu"><font class="glyphicon glyphicon-th-list"></font>&nbsp;&nbsp;管理员管理<span class="glyphicon glyphicon-menu-right"></span></li>
                <li>
                    <ul>
                        <li><a href="javascript:"><font class="glyphicon glyphicon-tag"></font>&nbsp;&nbsp;管理员管理</a></li>
                    </ul>
                </li>
                <li class="menu"><font class="glyphicon glyphicon-th-list"></font>&nbsp;&nbsp;用户管理<span class="glyphicon glyphicon-menu-right"></span></li>
                <li>
                    <ul>
                        <li><a href="javascript:"><font class="glyphicon glyphicon-tag"></font>&nbsp;&nbsp;用户管理</a></li>
                    </ul>
                </li>
                <li class="menu"><font class="glyphicon glyphicon-th-list"></font>&nbsp;&nbsp;商品管理<span class="glyphicon glyphicon-menu-right"></span></li>
                <li>
                    <ul>
                        <li><a href="javascript:"><font class="glyphicon glyphicon-tag"></font>&nbsp;&nbsp;商品管理</a></li>
                    </ul>
                </li>
                <li class="menu"><font class="glyphicon glyphicon-th-list"></font>&nbsp;&nbsp;一级分类管理<span class="glyphicon glyphicon-menu-right"></span></li>
                <li>
                    <ul>
                        <li><a href="javascript:"><font class="glyphicon glyphicon-tag"></font>&nbsp;&nbsp;一级分类管理</a></li>
                    </ul>
                </li>
                <li class="menu"><font class="glyphicon glyphicon-th-list"></font>&nbsp;&nbsp;二级分类管理<span class="glyphicon glyphicon-menu-right"></span></li>
                <li>
                    <ul>
                        <li><a href="javascript:"><font class="glyphicon glyphicon-tag"></font>&nbsp;&nbsp;二级分类管理</a></li>
                    </ul>
                </li>
                <li class="menu"><font class="glyphicon glyphicon-th-list"></font>&nbsp;&nbsp;订单管理<span class="glyphicon glyphicon-menu-right"></span></li>
                <li>
                    <ul>
                        <li><a href="javascript:"><font class="glyphicon glyphicon-tag"></font>&nbsp;&nbsp;订单管理</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div id="main-right">
            <iframe src="admin.jsp" frameborder="0" width="100%" style="min-height: 550px;"></iframe>
        </div>
    </div>
</div>
<div class="text-center"><span>商&nbsp;城&nbsp;管&nbsp;理&nbsp;平&nbsp;台</span></div>
</body>
</html>
