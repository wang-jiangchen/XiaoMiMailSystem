<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>管理员管理</title>
    <link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/css/bootstrap.css"/>
    <script type="text/javascript" src="<%=application.getContextPath()%>/js/jquery-1.11.3.js" ></script>
    <script type="text/javascript" src="<%=application.getContextPath()%>/js/bootstrap.js" ></script>
    <style type="text/css">
        #title{
            width: 100%;
            height: 20px;
            margin-top: 30px;
            font-size: 15px;
        }
        #head{
            width: 100%;
            height: 50px;
        }
        table>tr{
            text-align: center;
        }
        #btn-add{
            float: right;
        }
        .input-group{
            float: left;
            margin-right: 20px;
            border: 1px solid darkgray;
            border-radius: 4px;
        }
        #input-search,#btn-search{
            height: 33px;
            outline: none;
            border: 0;
            border-radius: 0px;
        }
        #btn-search{
            width: 40px;
            color: #fff;
        }
    </style>
</head>
<body style="margin: 10px;">
<div id="title" class="text-center">
    <span><b>管理员列表</b></span>
</div>
<div id="head">
    <button type="button" id="btn-add" class="btn btn-success"><span class="glyphicon glyphicon-plus">增加</span></button>
    <div class="input-group">
        <input type="text" id="input-search" placeholder="请输入查询的名称" >
        <button id="btn-search" class="btn btn-success"><span class="glyphicon glyphicon-search"></span></button>
    </div>
</div>
<div id="main">
    <table class="table table-hover table-striped">
        <tr>
            <th>编号</th>
            <th>管理员名称</th>
            <th>管理员密码</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${list}" var="admin">
            <tr>
                <td>${admin.id}</td>
                <td>${admin.name}</td>
                <td>${admin.password}</td>
                <td>
                    <a href="<%=application.getContextPath()%>/admin?op=findById&id=${admin.id}" class="btn btn-primary btn-info" role="button"><span class="glyphicon glyphicon-pencil"></span></a>
                    <a href="<%=application.getContextPath()%>/admin?op=del&id=${admin.id}" class="btn btn-primary btn-danger" role="button"><span class="glyphicon glyphicon-trash"></span></a>
                </td>
            </tr>
        </c:forEach>
        <tr class="text-center">
            <td colspan="10">
                <button onclick="fenye(1)">首页</button>
                <button onclick="fenye(${page.prePage})">上一页</button>
                1/4
                <button onclick="fenye(${page.nextPage})">下一页</button>
                <button onclick="fenye(${page.pages})">尾页</button>
            </td>
        </tr>
    </table>
</div>
</body>
</html>
