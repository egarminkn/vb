<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!-- START (Пальчики-лайкчики) -->
<div class="likes">
    <a class="like" href="${currentURI}#">
        ${likesCount}
    </a>
    <a class="dislike" href="${currentURI}#">
        ${dislikesCount}
    </a>
</div>
<!-- END (Пальчики-лайкчики) -->