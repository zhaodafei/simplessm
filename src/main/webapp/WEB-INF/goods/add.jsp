<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品添加</title>
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
    <button type="button" class="btn btn-info">商品添加</button>
    <button type="button" class="btn btn-primary"><a href="/">返回首页</a></button>
</div>

<div class="warp-form">
    <form action="/goods/Add" method="post">
        <div class="form-group">
            <label for="goodsName">商品名称:</label>
            <input type="text" name="goodsName" class="form-control" id="goodsName">
        </div>
        <div class="form-group">
            <label for="unitPrice">单价:</label>
            <input type="text" name="unitPrice" class="form-control" id="unitPrice">
        </div>
        <div class="form-group">
            <label for="goodsNumber">数量:</label>
            <input type="text" name="goodsNumber" class="form-control" id="goodsNumber" value="1">
        </div>
        <div class="form-group">
            <label for="consumeTime">消费时间:</label>
            <input type="text" name="consumeTime" class="form-control" id="consumeTime">
        </div>
        <div class="form-group">
            <label for="goodsComment">备注:</label>
            <input type="text" name="goodsComment" class="form-control" id="goodsComment" value="无">
        </div>
        <div class="form-group">
            <label>消费方式: </label>&nbsp;&nbsp;
            <label><input type="radio" name="consumeWay" value="线下" checked>线下</label>&nbsp;&nbsp;
            <label><input type="radio" name="consumeWay" value="线上">线上</label>
        </div>
        <button type="reset" class="btn btn-primary">重置</button>
        <button type="submit" class="btn btn-primary">提交</button>
    </form>
</div>
</body>
</html>
