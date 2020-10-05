<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>管理员添加</title>
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
    </style>
</head>
<body>
<div id="title" class="text-center">
    <span><b>管理员添加</b></span>
</div>
<form action="<%=application.getContextPath()%>/adminServlet?op=add" method="post">

</form>
</body>
</html>
