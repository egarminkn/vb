<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!-- START (Кнопка "Показать еще") -->
<div class="show-more">
    <a class="btn" href="${currentURI}#">
        Показать еще
    </a>
</div>
<!-- END (Кнопка "Показать еще") -->