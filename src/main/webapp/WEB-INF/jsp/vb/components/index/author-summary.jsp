<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="fn" uri="http://verybook.verygroup.org/functions" %>

<div class="author-summary">
    <div class="author-name">
        <a href="${currentURL}#">
            <span class="text">
                ${authorName}
            </span>
        </a>
    </div>
    <div class="book-count">
        <span class="text">
            ${authorBooksCount} книг
        </span>
    </div>

<c:set var="isAuthorPhotoLink" value="true" scope="request"/>
<c:set var="authorPhotoUrl" value="${authorPhotoUrl}" scope="request"/>
<jsp:include page="../vb/author-photo.jsp"/>

<jsp:include page="../vb/rating-3-stars.jsp"/>

<c:set var="likesCount" value="${authorLikesCount}" scope="request"/>
<c:set var="dislikesCount" value="${authorDislikesCount}" scope="request"/>
<jsp:include page="../vb/thumb-likes.jsp"/>
</div>