<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%--<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>--%>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="dynamic/header.jspf" %>

<div class="untree_co-section">
    <div class="owl-carousel owl-3-slider">

        <c:forEach items="${hotelModel}" var="hotel">
            <div class="item">
                <a class="media-thumb" href=${hotel.urlImage} data-fancybox="gallery">
                    <div class="media-text">
                        <h3>${hotel.city}</h3>
                        <span class="location">${hotel.country}</span>
                    </div>
                    <img src=${hotel.urlImage} alt="Image" width="1024" height="512">
                </a>
            </div>
        </c:forEach>

    </div>

</div>

<%@include file="dynamic/footer.jspf" %>
