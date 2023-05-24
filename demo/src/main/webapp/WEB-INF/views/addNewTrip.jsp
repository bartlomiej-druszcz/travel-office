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
                        <li><a href="#">Croatia</a></li>
                        <li><a href="#">Spain</a></li>
                        <li><a href="#">Greece</a></li>
                        <li><a href="#">Egypt</a></li>
                        <li><a href="#">Malta</a></li>
                    </ul>
                </li>
                <li><a href='<c:url value="/lastMinute"/>'>Last Minute</a></li>
                <li><a href='<c:url value="/about"/>'>About</a></li>
                <li><a href='<c:url value="/contact"/>'>Contact Us</a></li>
                <li><a href='<c:url value="/addNewTrip"/>'>Add New Trip</a></li>
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
                <div class="intro-wrap">
                    <h2 class="mb-5 text-white font-italic text-center"><span
                            class="d-block">Add new trip</span>  <span
                            class="typed-words"></span></h2>

                    <div class="row mx-auto">
                        <div class="col-lg-12">
                            <form class="form" action='<c:url value="/addNewTrip"/>'>

                                <div class="row mb-2">
                                    <div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-12">
                                        <input type="text" name="countryFrom" class="form-control text-center"
                                               placeholder="Start Country" data-toggle="tooltip"
                                               title="Start Country">
                                    </div>
                                </div>

                                <div class="row mb-2">
                                    <div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-12">
                                        <input type="text" name="cityFrom"
                                               class="form-control text-center" placeholder="Start City"
                                               data-toggle="tooltip" title="Start City">
                                    </div>
                                </div>
                                <div class="row mb-2">
                                    <div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-12">
                                        <input type="text"  name="airportFrom"
                                               class="form-control text-center" placeholder="Start Airport"
                                               data-toggle="tooltip" title="Start Airport">
                                    </div>
                                </div>
                                <div class="row mb-2">
                                    <div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-12">
                                        <input type="text" id="destinationCountry" name="destinationCountry"
                                               class="form-control text-center" placeholder="Destination Country"
                                               data-toggle="tooltip" title="Destination Country">
                                    </div>
                                </div>
                                <div class="row mb-2">
                                    <div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-12">
                                        <input type="text" id="destinationCity" name="destinationCity"
                                               class="form-control text-center" placeholder="Destination City"
                                               data-toggle="tooltip" title="Destination City">
                                    </div>
                                </div>
                                <div class="row mb-2">
                                    <div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-12">
                                        <input type="text" id="destinationAirport" name="destinationAirport"
                                               class="form-control text-center" placeholder="Destination Airport"
                                               data-toggle="tooltip" title="Destination Airport">
                                    </div>
                                </div>
                                <div class="row mb-2">
                                    <div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-12">
                                        <input type="text" id="hotelName" name="hotelName"
                                               class="form-control text-center" placeholder="Hotel name"
                                               data-toggle="tooltip" title="Hotel name">
                                    </div>
                                </div>
                                <div class="row mb-2">
                                    <div class="col-sm-6 col-md-3 mb-2 mb-lg-0 col-lg-6 pr-1">
                                        <input type="number" id="priceForAdult" class="form-control text-center"
                                               placeholder="Price for adult (€)" data-toggle="tooltip"
                                               title="Price for adult">
                                    </div>
                                    <div class="col-sm-6 col-md-3 mb-2 mb-lg-0 col-lg-6 pl-1">
                                        <input type="number" id="priceForChildren" class="form-control text-center"
                                               placeholder="Price for children (€)" data-toggle="tooltip"
                                               title="Price for children">
                                    </div>
                                </div>


                                <div class="row mb-2">
                                    <div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-12">
                                        <input type="text" id="dateStart" class="form-control text-center"
                                               name="daterange"
                                               data-toggle="tooltip"
                                               title="Select a travel start date range">
                                    </div>
                                </div>


                                <div class="row mb-0 justify-content-center">
                                    <label>Hotel Star Rating :</label>
                                </div>
                                <div class="row mb-2 justify-content-center">
                                    <div class="col-lg-2 text-center">
                                        <input type="checkbox" class="form-control" id="star1" name="star"
                                               value="1" data-toggle="tooltip" title="Hotel 1 star">
                                        <label for="star1">1</label>
                                    </div>
                                    <div class="col-lg-2 text-center">
                                        <input type="checkbox" class="form-control" id="star2" name="star"
                                               value="2" data-toggle="tooltip" title="Hotel 2 stars">
                                        <label for="star2">2</label>
                                    </div>
                                    <div class="col-lg-2 text-center">
                                        <input type="checkbox" class="form-control" id="star3" name="star"
                                               value="3" data-toggle="tooltip" title="Hotel 3 stars">
                                        <label for="star3">3</label>
                                    </div>
                                    <div class="col-lg-2 text-center">
                                        <input type="checkbox" class="form-control" id="star4" name="star"
                                               value="4" data-toggle="tooltip" title="Hotel 4 stars">
                                        <label for="star4">4</label>
                                    </div>
                                    <div class="col-lg-2 text-center">
                                        <input type="checkbox" class="form-control" id="star5" name="star"
                                               value="5" data-toggle="tooltip" title="Hotel 5 stars">
                                        <label for="star5">5</label>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-12">
                                        <input type="submit" class="btn btn-primary btn-block" value="Add trip">
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
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
