<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%--<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>--%>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="dynamic/header.jspf" %>

<div class="untree_co-section">
    <div class="owl-carousel owl-3-slider">

        <div class="item">
            <a class="media-thumb" href='<c:url value="/resources/images/hero-slider-1.jpg"/>'
               data-fancybox="gallery">
                <div class="media-text">
                    <h3>Pragser Wildsee</h3>
                    <span class="location">Italy</span>
                </div>
                <img src='<c:url value="/resources/images/hero-slider-1.jpg"/>' alt="Image" class="img-fluid">
            </a>
        </div>

        <div class="item">
            <a class="media-thumb" href='<c:url value="/resources/images/hero-slider-2.jpg"/>'
               data-fancybox="gallery">
                <div class="media-text">
                    <h3>Oia</h3>
                    <span class="location">Greece</span>
                </div>
                <img src='<c:url value="/resources/images/hero-slider-2.jpg"/>' alt="Image" class="img-fluid">
            </a>
        </div>

        <div class="item">
            <a class="media-thumb" href='<c:url value="/resources/images/hero-slider-3.jpg"/>'
               data-fancybox="gallery">
                <div class="media-text">
                    <h3>Perhentian Islands</h3>
                    <span class="location">Malaysia</span>
                </div>
                <img src='<c:url value="/resources/images/hero-slider-3.jpg"/>' alt="Image" class="img-fluid">
            </a>
        </div>

        <div class="item">
            <a class="media-thumb" href='<c:url value="/resources/images/hero-slider-4.jpg"/>'
               data-fancybox="gallery">
                <div class="media-text">
                    <h3>Rialto Bridge</h3>
                    <span class="location">Italy</span>
                </div>
                <img src='<c:url value="/resources/images/hero-slider-4.jpg"/>' alt="Image" class="img-fluid">
            </a>
        </div>

        <div class="item">
            <a class="media-thumb" href='<c:url value="/resources/images/hero-slider-5.jpg"/>'
               data-fancybox="gallery">
                <div class="media-text">
                    <h3>San Francisco, United States</h3>
                    <span class="location">United States</span>
                </div>
                <img src='<c:url value="/resources/images/hero-slider-5.jpg"/>' alt="Image" class="img-fluid">
            </a>
        </div>

        <div class="item">
            <a class="media-thumb" href='<c:url value="/resources/images/hero-slider-1.jpg"/>'
               data-fancybox="gallery">
                <div class="media-text">
                    <h3>Lake Thun</h3>
                    <span class="location">Switzerland</span>
                </div>
                <img src='<c:url value="/resources/images/hero-slider-2.jpg"/>' alt="Image" class="img-fluid">
            </a>
        </div>

    </div>

</div>

<%@include file="dynamic/footer.jspf" %>
