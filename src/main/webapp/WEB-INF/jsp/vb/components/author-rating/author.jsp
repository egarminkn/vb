<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="item author">
    <div class="serial-number">
        <span class="text">${authorPosition}</span>
    </div>

<c:set var="isAuthorPhotoLink" value="false" scope="request"/>
<jsp:include page="../vb/author-photo.jsp"/>

    <div class="about">
        <div class="fullname-rating">
            <div class="fullname">
                <a href="${currentURI}#">${authorName}</a>
            </div>

<jsp:include page="../vb/rating-3-stars.jsp"/>
        </div>
        <div class="genres">
            Жанры:
            <c:set var="authorGenresLastIndex" value="${authorGenres.size() - 1}"/>
            <c:forEach var="authorGenre" items="${authorGenres}" varStatus="loop">
                <a href="${currentURI}#">${authorGenre.getGenreName()}</a>${loop.index != authorGenresLastIndex ? ',' : ''}
            </c:forEach>
        </div>
        <div class="description">
            ${authorDescription}
        </div>
        <div class="footer">
            <div class="published">
                Опубликовано:
                <a href="${currentURI}#">
                    <span>${authorBooksCount}</span>
                    книг
                </a>
            </div>
            <div class="reviews">
                <a href="${currentURI}#">
                    <span>${authorBookReviewsCount}</span>
                    отзывов на книги
                </a>
            </div>
        </div>
    </div>
</div>