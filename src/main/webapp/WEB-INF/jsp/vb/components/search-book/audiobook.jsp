<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="item search-result-item audiobook">
    <div class="cover-play">
        <img class="cover" src="${audiobookCoverUrl}" width="137" height="137">
        <a class="play" href="${currentURI}#">Прослушать отрывок</a>
    </div>
    <div class="about">
        <div class="title">
            <a href="${currentURI}#">${audiobookTitle}</a>
        </div>
        <div class="author">
            <c:set var="audiobookAuthorsLastIndex" value="${audiobookAuthors.size() - 1}"/>
            <c:forEach var="audiobookAuthor" items="${audiobookAuthors}" varStatus="loop">
                <jsp:useBean id="audiobookAuthor" class="org.verygroup.verybook.dto.searchbook.AudiobookAuthor"/>
                <a href="${currentURI}#">${audiobookAuthor.name}</a> (${audiobookAuthor.type.getName()})${loop.index != audiobookAuthorsLastIndex ? ',' : ''}
            </c:forEach>
        </div>
        <div class="description">
            ${audiobookDescription}
        </div>
        <div class="footer">
            <div class="date">
                Дата выхода:
                <span>${audiobookPublishDate}</span>
                года
            </div>
            <div class="formats">
                Форматы:
                <span>
                    <c:set var="audiobookFormatsLastIndex" value="${audiobookFormats.size() - 1}"/>
                    <c:forEach var="audiobookFormat" items="${audiobookFormats}" varStatus="loop">
                        ${audiobookFormat.getFormatName().toUpperCase()}${loop.index != audiobookFormatsLastIndex ? ',' : ''}
                    </c:forEach>
                </span>
            </div>
        </div>
    </div>
    <div class="actions">
<jsp:include page="../vb/price-cart-btn.jsp"/>
<jsp:include page="../vb/rating-5-stars.jsp"/>

        <div class="reviews">
            <a href="${currentURI}#">
                Рецензии
                (<span>${audiobookReviewsCount}</span>)
            </a>
        </div>
    </div>
</div>