<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%--<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>--%>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Untree.co">
    <link href='<c:url value="/resources/images/favicon.png"/>' rel="shortcut icon"/>

    <meta name="description" content=""/>
    <meta name="keywords" content="bootstrap, bootstrap4"/>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&family=Source+Serif+Pro:wght@400;700&display=swap"
          rel="stylesheet">

    <link href='<c:url value="/resources/css/bootstrap.min.css"/>' rel="stylesheet"/>
    <link href='<c:url value="/resources/css/owl.carousel.min.css"/>' rel="stylesheet"/>
    <link href='<c:url value="/resources/css/owl.theme.default.min.css"/>' rel="stylesheet"/>
    <link href='<c:url value="/resources/css/jquery.fancybox.min.css"/>' rel="stylesheet"/>
    <link href='<c:url value="/resources/fonts/icomoon/style.css"/>' rel="stylesheet"/>
    <link href='<c:url value="/resources/fonts/flaticon/font/flaticon.css"/>' rel="stylesheet"/>
    <link href='<c:url value="/resources/css/daterangepicker.css"/>' rel="stylesheet"/>
    <link href='<c:url value="/resources/css/aos.css"/>' rel="stylesheet"/>
    <link href='<c:url value="/resources/css/style.css"/>' rel="stylesheet"/>
    <link href='<c:url value="/resources/css/my.css"/>' rel="stylesheet"/>

    <title>Travel Office</title>

</head>

<body>

<div class="site-mobile-menu site-navbar-target">
    <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close">
            <span class="icofont-close js-menu-toggle"></span>
        </div>
    </div>
    <div class="site-mobile-menu-body">
    </div>
</div>

<nav class="site-nav">
    <div class="container">
        <div class="site-navigation">
            <a href='<c:url value="/"/>' class="logo m-0">Travel Office</a>

            <ul class="js-clone-nav d-none d-lg-inline-block text-left site-menu float-right">
                <li class="active"><a href='<c:url value="/"/>'>Home</a></li>
                <li class="has-children"><a href="#">Popular Destination</a>
                    <ul class="dropdown">
                        <li><a href="#">Chorwacja</a></li>
                        <li><a href="#">Hiszpania</a></li>
                        <li><a href="#">Grecja</a></li>
                        <li><a href="#">Egipt</a></li>
                        <li><a href="#">Malta</a></li>
                    </ul>
                </li>
                <li><a href='<c:url value="/lastMinute"/>'>Last Minute</a></li>
                <li><a href='<c:url value="/about"/>'>About</a></li>
                <li><a href='<c:url value="/contact"/>'>Contact Us</a></li>
                <li><input type="button" class="btn bg-white text-dark btn-block" value="Register"></li>
                <li><input type="button" class="btn bg-white text-dark btn-block" value="Sign in"></li>
            </ul>
        </div>
    </div>
</nav>

<div class="hero mb-0">
    <div class="row justify-content-center text-center">
        <div class="col-lg-12">

            <div>
                <br/>
                <br/>
                <br/>
                <h1 class="my-4">Projekt końcowy SDA</h1>
                <br/>
                <h2 class="text-white my-4">Nazwa projektu:</h2>
                <h3 class="font-weight-bold">Serwis do biura podróży</h3>
                <br/>
                <h2 class="text-white my-4">Skład grupy:</h2>
                <h5>Bartłomiej Druszcz</h5>
                <h5>Katarzyna Olszewska</h5>
                <h5>Tomasz Han</h5>
                <h5>Yan Samchuk</h5>
                <h5>Vitali Dziadul</h5>
                <br/>
                <br/>
                <br/>
                <br/>
            </div>
        </div>
    </div>
</div>

<script src='<c:url value="/resources/js/jquery-3.4.1.min.js"/>'></script>
<script src='<c:url value="/resources/js/popper.min.js"/>'></script>
<script src='<c:url value="/resources/js/bootstrap.min.js"/>'></script>
<script src='<c:url value="/resources/js/owl.carousel.min.js"/>'></script>
<script src='<c:url value="/resources/js/jquery.animateNumber.min.js"/>'></script>
<script src='<c:url value="/resources/js/jquery.waypoints.min.js"/>'></script>
<script src='<c:url value="/resources/js/jquery.fancybox.min.js"/>'></script>
<script src='<c:url value="/resources/js/aos.js"/>'></script>
<script src='<c:url value="/resources/js/moment.min.js"/>'></script>
<script src='<c:url value="/resources/js/daterangepicker.js"/>'></script>
<script src='<c:url value="/resources/js/typed.js"/>'></script>
<script src='<c:url value="/resources/js/my.js"/>'></script>
<script src='<c:url value="/resources/js/custom.js"/>'></script>

</body>
</html>
