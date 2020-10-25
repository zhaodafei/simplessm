<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/8/27
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
    <button type="button" class="btn btn-primary"><a href="/">返回首页</a></button>
</div>
<div class="container">
    <h2>商品详细ID: ${goods.id}</h2>
    <div class="card">
        <div class="card-body">
            <table class="table table-bordered">
                <tr><td>商品名称</td><td>${goods.goodsName}  </td></tr>
                <tr><td>单价    </td><td>${goods.unitPrice}  </td></tr>
                <tr><td>数量    </td><td>${goods.goodsNumber} </td></tr>
                <tr><td>下单时间</td><td>${goods.consumeTime} </td></tr>
                <tr><td>总价    </td><td>${goods.countPrice} </td></tr>
                <tr><td>消费方式</td><td>${goods.consumeWay} </td></tr>
                <tr><td>创建时间</td><td>${goods.createdTime} </td></tr>
            </table>
        </div>
    </div>
</div>
</body>
</html>
