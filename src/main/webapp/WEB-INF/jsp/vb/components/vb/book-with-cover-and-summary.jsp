<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!-- START (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->
<!-- Доп.класс hidden-author нужен для страницы "Автора" (author), чтобы скрыть имя автора и общее количество его книг -->
<div class="book-with-cover-and-summary ${isAuthorHidden ? 'hidden-author' : ''}">
    <a class="book-cover" href="${currentURI}#">
        <img src="${bookCoverUrl}" width="230" height="368">
    </a>

    <div class="book-summary">
        <div class="book-title-and-author">
            <!-- В бабле ниже блок main повторяется один в один (копи-паст) -->
            <div class="main">
                <a class="book-title" href="${currentURI}#">
                    <span class="text">
                        ${bookTitle}
                    </span>
                </a>
                <a class="book-author" href="${currentURI}#">
                    <div class="author-name">
                        <span class="text">
                            ${authorName}
                        </span>
                    </div>
                    <div class="book-count">
                        (<span class="text"><span class="count">${bookCount}</span>
                        книг<span class="count-ending"></span></span>)
                    </div>
                </a>
            </div>
            <div class="bubble-before bubble-before-1"></div>
            <div class="bubble-before bubble-before-2"></div>
            <div class="bubble" data-init-width="185">
                <!-- Выше блок main повторяется один в один (копи-паст) -->
                <div class="main">
                    <a class="book-title" href="${currentURI}#">
                        <span class="text">
                            ${bookTitle}
                        </span>
                    </a>
                    <a class="book-author" href="${currentURI}#">
                        <div class="author-name">
                            <span class="text">
                                ${authorName}
                            </span>
                        </div>
                        <div class="book-count">
                            (<span class="text"><span class="count">${bookCount}</span>
                            книг<span class="count-ending"></span></span>)
                        </div>
                    </a>
                </div>
            </div>
        </div>

        <div class="book-publish-date">
            ${bookPublishDate}
        </div>

<jsp:include page="rating-5-stars.jsp"/>
<jsp:include page="thumb-likes.jsp"/>
<jsp:include page="price-under-book.jsp"/>
    </div>
</div>
<!-- END (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->