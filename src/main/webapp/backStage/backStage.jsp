<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>小米商城后台管理系统</title>
    <link rel="icon" href="<%=application.getContextPath()%>/img/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/css/backStage.css"/>
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
            });
            var arr=["adminServlet?op=list","userServlet?op=list","productServlet?op=list","categoryServlet?op=list","orderServlet?op=list"];
            $("#main-left>ul>li:odd").click(function(){
                $("#main-right").empty();
                var index=$(this).index();
                var num=(index-1)/2;
                $("#main-right").append("<iframe src='<%=application.getContextPath()%>/"+arr[num]+"' frameborder='0' width='100%' style='min-height: 550px;'></iframe>");
            });
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
                <li class="menu"><font class="glyphicon glyphicon-th-list"></font>&nbsp;&nbsp;分类管理<span class="glyphicon glyphicon-menu-right"></span></li>
                <li>
                    <ul>
                        <li><a href="javascript:"><font class="glyphicon glyphicon-tag"></font>&nbsp;&nbsp;分类管理</a></li>
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
            <div id="title" class="text-center">
                <span><b>系统首页</b></span>
            </div>
            <h4>&nbsp;&nbsp;&nbsp;欢迎进入小米商城后台管理系统，选择左侧功能进行管理。。。。。。</h4>
        </div>
    </div>
</div>
<div class="text-center"><span>商&nbsp;城&nbsp;管&nbsp;理&nbsp;平&nbsp;台</span></div>
</body>
</html>
