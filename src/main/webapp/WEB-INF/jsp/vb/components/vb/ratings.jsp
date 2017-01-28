<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!-- START (Рейтинг-список) -->
<div class="ratings">
    ${ratingsTitle}
    <ul class="list">
        <c:forEach var="ratingsItem" items="${ratingsItems}" >

            <%-- задаем тип для ratingsItem, чтобы IDEA давала подсказки --%>
            <jsp:useBean id="ratingsItem" class="org.verygroup.verybook.dto.RatingItem"/>

            <li class="item">
                <div class="dynamic-up ${ratingsItem.grown ? '' : 'invert'}">
                    <!-- У div.dynamic-up можно использовать доп.класс invert для того, чтобы стрелочку направить вниз -->
                    <img src="resources/vb/svg/vb/arrow_up.svg" width="71" height="213">
                </div>
                <a class="link" href="${currentURI}#">
                    №
                    <span>${ratingsItem.number}</span>
                </a>
                <div class="rating-title">
                    ${ratingsItem.name}
                </div>
            </li>
        </c:forEach>
    </ul>
</div>
<!-- END (Рейтинг-список) -->