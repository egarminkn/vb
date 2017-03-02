<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<tr class="tr">
    <td class="td product">
<jsp:include page="../vb/book-triplet.jsp"/>
    </td>
    <td class="td price">
<jsp:include page="../vb/price-ruble-sign.jsp"/>
    </td>
    <td class="td ${isCartMain ? 'to-spare-cart' : 'to-main-cart'}">
        <a class="${isCartMain ? 'to-spare-cart' : 'to-main-cart'}" href="${currentURL}#" title="${isCartMain ? 'Отложить на неопределенный срок' : 'Переложить в корзину'}"></a>
    </td>
</tr>