<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<tr class="tr">
    <c:choose>
        <c:when test="${isCartEmpty}">
            <td class="td empty" colspan="3">
                <p>
                    ${isCartMain ? 'Корзина пока пуста,' : 'К сожалению, мы пока не знаем, что Вас может заинтересовать,'}
                    но это поправимо:
                </p>
                <p>
                    просто перейдите в
                    <a href="search-book">книжный магазин</a>
                    и сделайте свой выбор
                </p>
            </td>
        </c:when>
        <c:otherwise>
            <td class="td product">
<jsp:include page="../vb/book-triplet.jsp"/>
            </td>
            <td class="td price">
<jsp:include page="../vb/price-ruble-sign.jsp"/>
            </td>
            <td class="td ${isCartMain ? 'to-spare-cart' : 'to-main-cart'}">
                <a class="${isCartMain ? 'to-spare-cart' : 'to-main-cart'}" href="${currentURL}#" title="${isCartMain ? 'Отложить на неопределенный срок' : 'Переложить в корзину'}"></a>
            </td>
        </c:otherwise>
    </c:choose>
</tr>