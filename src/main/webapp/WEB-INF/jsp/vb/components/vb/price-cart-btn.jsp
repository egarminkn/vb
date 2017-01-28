<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!-- START (Кнопка "В корзину" с ценником) -->
<div class="buy">
    <div class="item price">
        <span class="value">112</span>
        <span class="currency">р.</span>
    </div>
    <a class="item cart-btn" href="${currentURI}#">
        <span class="text">В корзину</span>
    </a>
</div>
<!-- END (Кнопка "В корзину" с ценником) -->