<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<li class="review">
    <div class="title">
        ${reviewTitle}
    </div>
    <div class="summary">
        <div class="reviewer">
            от
            <a href="${currentURL}#">${reviewAuthor}</a>
        </div>
        <div class="date">
            отзыв оставлен
            <span>${reviewPublishDate}</span>
        </div>
    </div>
    <div class="content">
        ${reviewContent}
    </div>
</li>