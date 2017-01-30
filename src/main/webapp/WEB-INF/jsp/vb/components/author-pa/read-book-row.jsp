<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<tr class="tr">
    <td class="td product">
<c:set var="bookTripletCoverUrl" value="${bookCoverUrl}" scope="request"/>
<c:set var="bookTripletTitle" value="${bookTitle}" scope="request"/>
<c:set var="bookTripletAuthor" value="${bookAuthor}" scope="request"/>
<jsp:include page="../vb/book-triplet.jsp"/>
    </td>
    <td class="td date">
        <span>
            ${bookPublishDate} года
        </span>
    </td>
    <td class="td likes">
<c:set var="likesCount" value="${bookLikesCount}" scope="request"/>
<c:set var="dislikesCount" value="${bookDislikesCount}" scope="request"/>
<jsp:include page="../vb/thumb-likes.jsp"/>
    </td>
    <td class="td price">
<c:set var="price" value="${bookBuyingPriceValue}" scope="request"/>
<jsp:include page="../vb/price-ruble-sign.jsp"/>
    </td>
    <td class="td download">
        <span>Форматы:</span>
        <ul class="formats">
            <c:forEach var="bookFormat" items="${bookFormats}">
                <%--<jsp:useBean id="bookFormat" class="org.verygroup.verybook.BookFormat"/>--%>

                <li class="format">
                    <button>${bookFormat.formatName}</button>
                </li>
            </c:forEach>
        </ul>
    </td>
</tr>