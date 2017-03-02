<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!-- START (Триплет ссылок: обложка-название-автор) -->
<div class="book-triplet">
    <div class="cover">
        <a class="to-book" href="${currentURL}#">
            <img src="${bookTripletCoverUrl}" width="230" height="368">
        </a>
    </div>
    <div class="title-author">
        <a class="to-book" href="${currentURL}#">
            <span class="text">
                ${bookTripletTitle}
            </span>
        </a>
        <a class="to-author" href="${currentURL}#">
            <span class="text">
                ${bookTripletAuthor}
            </span>
        </a>
    </div>
</div>
<!-- END (Триплет ссылок: обложка-название-автор) -->