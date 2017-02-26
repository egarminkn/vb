<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!-- START (Пальчики-лайкчики) -->
<div class="likes">
    <a class="like ${likesLink ? 'clickable' : ''} ${likesDislikesGrade == true ? 'clicked' : ''}"
       data-book-type="${likesBookType}"
       data-book-id="${likesBookId}">
        ${likesCount}
    </a>
    <a class="dislike ${dislikesLink ? 'clickable' : ''} ${likesDislikesGrade == false ? 'clicked' : ''}"
       data-book-type="${likesBookType}"
       data-book-id="${likesBookId}">
        ${dislikesCount}
    </a>
</div>
<!-- END (Пальчики-лайкчики) -->