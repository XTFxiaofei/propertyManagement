<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="zh-CN" xmlns:c="http://www.w3.org/1999/html">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<div class="container">
    <div class="row">
        <div class="span12">
            <div class="row">
                <div class="span2">
                </div>
                <div class="span8">
                    <div class="page-header">
                        <h1>
                            报修单 <span>编号：${repair.id}</span>
                        </h1>
                    </div>
                </div>
                <div class="span2">
                </div>
            </div>
            <div class="row">
                <div class="span2">
                </div>
                <div class="span8">
                    <button class="btn btn-link btn-block" type="button"><a href="/student/dashboard">返回上一级</a></button>
                    <button class="btn btn-block btn-link" type="button"><a href="/student/repair/${repair.id}/delete">删除</a>
                    </button>
                    <button class="btn btn-block btn-link" type="button"><a href="/student/repair/${repair.id}/update">修改</a>
                    </button>
                    <button class="btn btn-block btn-link" type="button"><a href="/student/repair/${repair.id}/urgent">催单</a>
                    </button>
                    <button class="btn btn-block btn-link" type="button"><a
                            href="/student/repair/${repair.id}/acceptance">验收</a></button>
                </div>
                <div class="span2">
                </div>
            </div>
            <div class="row">
                <div class="span2">
                </div>
                <div class="span8">
                    <h2>
                        状态
                    </h2>
                    <p>
                        ${repair.status}
                    </p>
                    <h2>
                        时间
                    </h2>
                    <p>
                        ${repair.submitTime}
                    </p>
                </div>
                <div class="span2">
                </div>
            </div>
            <div class="row">
                <div class="span2">
                </div>
                <div class="span8">
                    <h2>
                        故障地点
                    </h2>
                    <p>
                        ${repair.place}
                    </p>
                </div>
                <div class="span2">
                </div>
            </div>
            <div class="row">
                <div class="span2">
                </div>
                <div class="span8">
                    <img alt="140x140" src="img/a.jpg" class="img-rounded"/>
                </div>
                <div class="span2">
                </div>
            </div>
            <div class="row">
                <div class="span2">
                </div>
                <div class="span8">
                    <h2>
                        问题详情
                    </h2>
                    <p>
                        ${repair.detail}
                    </p>
                </div>
                <div class="span2">
                </div>
            </div>
        </div>
    </div>
</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</body>
</html>