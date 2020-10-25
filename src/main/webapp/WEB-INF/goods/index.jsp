<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="/static/bootstrap-4.5.2-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/reset.scss">
    <link rel="stylesheet" href="/static/css/common.scss">
    <script type="text/javascript" src="/static/js/jquery-3.5.1.js"></script>
    <script type="text/javascript" src="/static/bootstrap-4.5.2-dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/static/bootstrap-4.5.2-dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="alert alert-primary" role="alert">
    <button type="button" class="btn btn-info"><a href="/goods/toAdd">添加商品</a></button>
    <button type="button" class="btn btn-primary"><a href="/">返回首页</a></button>
</div>

<div>
    <table class="table table-bordered">
        <thead>
        <tr>
            <td>id</td>
            <td>商品名称</td>
            <td>单价</td>
            <td>数量</td>
            <td>下单时间</td>
            <td>总价</td>
            <td>备注</td>
            <td>消费方式</td>
            <td>创建时间</td>
            <td>操作</td>
        </tr>
        </thead>
        <c:forEach items="${allGoods}" var="goods">
            <tr>
                <td>${goods.id}</td>
                <td>${goods.goodsName}</td>
                <td>${goods.unitPrice}</td>
                <td>${goods.goodsNumber}</td>
                <td>${goods.consumeTime}</td>
                <td>${goods.countPrice}</td>
                <td>${goods.goodsComment}</td>
                <td>${goods.consumeWay}</td>
                <td>${goods.createdTime}</td>
                <td>
                    <a href="/goods/detail?id=${goods.id}">详细</a>
                    <a href="/goods/detail?id=${goods.id}">删除</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
