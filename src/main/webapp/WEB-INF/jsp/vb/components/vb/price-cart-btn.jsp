<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!-- START (Кнопка "В корзину" с ценником) -->
<div class="buy">
    <div class="item price">
        <span class="value">
            ${cartBtnPriceValue}
        </span>
        <span class="currency">
            ${cartBtnPriceCurrency}
        </span>
    </div>
    <c:set var="isPurchaseItemInCart" value="${sessionScope.sessionObject.shopCart.containsPurchaseItem(cartBtnPurchaseItemType, cartBtnPurchaseItemId)}"/>
    <a class="item cart-btn ${isPurchaseItemInCart ? '' : 'clickable'}"
       data-book-type="${cartBtnPurchaseItemType}"
       data-book-id="${cartBtnPurchaseItemId}">
        <span class="text">
            ${isPurchaseItemInCart ? 'Уже в корзине' : 'В корзину'}
        </span>
    </a>
</div>
<!-- END (Кнопка "В корзину" с ценником) -->