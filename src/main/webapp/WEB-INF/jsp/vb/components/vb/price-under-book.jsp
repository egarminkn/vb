<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!-- START (Ценник под книгой) -->
<div class="price-under-book ${priceUnderBookCurrency == '' ? 'free' : ''}">
    <!-- Если книга отдается за даром, то:
            1) к div добавляется класс free
            2) цена меняется на слово "Бесплатно"
            3) содержимое валюты удаляется
    -->
    <span class="value">${priceUnderBookValue}</span>
    <span class="currency">${priceUnderBookCurrency}</span>
</div>
<!-- END (Ценник под книгой) -->