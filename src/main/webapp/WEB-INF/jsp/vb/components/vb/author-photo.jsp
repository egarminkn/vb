<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!-- START (Фото автора в маске-обрезалке) -->
<a ${isAuthorPhotoLink ? 'href="author/'.concat(authorId).concat('"') : ''} class="author-photo">
    <img src="${authorPhotoUrl}" width="80" height="80">
</a>
<!-- END (Фото автора в маске-обрезалке) -->