<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%-- максимальный рейтинг = 5 --%>
<!-- START (3 звезды рейтинга автора) -->
<div class="rating-3-stars">
    <div class="rating-stars">
        <div class="colorant"></div>
    </div>
    <div class="rating-number">
        <%--
            Используется локаль браузера, которая получается из реквеста в его хедере:
            Accept-Language: ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4
            Но если локаль все же менять, то делается это так:
                <fmt:setLocale value="en_US" scope="session" />
                <fmt:setLocale value="ru_RU" scope="session" />
            где scope="session" - обязательное условие.
        --%>
        <fmt:formatNumber pattern="#,#0.0" value="${authorRatingNumber}"/>
    </div>
</div>
<!-- END (3 звезды рейтинга автора) -->