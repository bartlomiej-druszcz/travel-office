<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%--<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>--%>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="dynamic/header.jspf" %>




<c:forEach items="${tripModel}" var="item">
    <li>Z ${item.countryFrom}, ${item.cityFrom} do ${item.hotelModel.country}, ${item.hotelModel.city}</li>
</c:forEach>




<%@include file="dynamic/footer.jspf" %>
