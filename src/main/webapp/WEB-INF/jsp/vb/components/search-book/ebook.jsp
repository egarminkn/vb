<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="item search-result-item ebook">
    <div class="cover">
        <img src="${ebookCoverUrl}" width="230" height="368">
    </div>
    <div class="about">
        <div class="title">
            <a href="${currentURI}#">${ebookTitle}</a>
        </div>
        <div class="author">
            <a href="${currentURI}#">${ebookAuthor}</a>
        </div>
        <div class="description">
            ${ebookDescription}
        </div>
        <div class="footer">
            <div class="date">
                Дата выхода:
                <span>${ebookPublishDate}</span>
                года
            </div>
            <div class="formats">
                Форматы:
                <span>
                    <c:set var="ebookFormatsLastIndex" value="${ebookFormats.size() - 1}"/>
                    <c:forEach var="ebookFormat" items="${ebookFormats}" varStatus="loop">
                        ${ebookFormat.getFormatName().toUpperCase()}${loop.index != ebookFormatsLastIndex ? ',' : ''}
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
                (<span>${ebookReviewsCount}</span>)
            </a>
        </div>
    </div>
</div>