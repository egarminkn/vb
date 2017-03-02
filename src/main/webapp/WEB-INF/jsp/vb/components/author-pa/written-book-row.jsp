<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<tr class="tr">
    <td class="td cover">
        <img src="${bookCoverUrl}" width="230" height="368">
    </td>
    <td class="td title">
        <a class="book" href="${currentURL}#">
            ${bookTitle}
        </a>
        <a class="edit" href="${currentURL}#"></a>
    </td>
    <td class="td status">
        <div class="current-status ${bookStatusAddClass}">
            <!--
                published - это доп.класс для статуса Опубликовано
                rejected - это доп.класс для статуса Отклонено
                on-moderation - это доп.класс для статуса На модерации
                not-published - это доп.класс для статуса Не опубликовано
            -->
            <span class="text">
                <c:choose>
                    <c:when test="${bookStatusAddClass == 'published'}">
                        Опубликовано
                    </c:when>
                    <c:when test="${bookStatusAddClass == 'rejected'}">
                        Отклонено
                    </c:when>
                    <c:when test="${bookStatusAddClass == 'on-moderation'}">
                        На модерации
                    </c:when>
                    <c:when test="${bookStatusAddClass == 'not-published'}">
                        Не опубликовано
                    </c:when>
                </c:choose>
            </span>

            <c:if test="${bookStatusAddClass == 'rejected'}">
<c:set var="isQuestionMarkBlue" value="false" scope="request"/>
<c:set var="bubbleContent" value="${bookRejectReason}" scope="request"/>
<jsp:include page="../vb/question-mark-bubble.jsp"/>
            </c:if>
        </div>
        <ul class="actions">
            <c:forEach var="bookAction" items="${bookActions}">
                <jsp:useBean id="bookAction" class="org.verygroup.verybook.dto.authorpa.WrittenBookAction"/>

                <li class="action ${bookAction.type.getCssClass()}">
                    <!--
                        withdraw - действия, связанные с отзывом или снятием с публикации
                        publish  - действия, связанные с отправкой на модерацию
                    -->
                    <a href="${currentURL}#">${bookAction.name}</a>
                </li>
            </c:forEach>
        </ul>
    </td>
    <td class="td rating">
<jsp:include page="../vb/rating-5-stars.jsp"/>
    </td>
    <td class="td download">
        <span class="free">${bookFreeDownloadsCount}</span> / <span class="paid">${bookPaidDownloadsCount}</span>
    </td>
    <td class="td likes">
        <span class="like">${bookLikesCount}</span> / <span class="dislike">${bookDislikesCount}</span>
    </td>
    <td class="td price">
<c:set var="price" value="${bookCurrentPriceValue}" scope="request"/>
<jsp:include page="../vb/price-ruble-sign.jsp"/>
    </td>
    <td class="td profit">
<c:set var="price" value="${bookTotalProfitValue}" scope="request"/>
<jsp:include page="../vb/price-ruble-sign.jsp"/>
    </td>
</tr>