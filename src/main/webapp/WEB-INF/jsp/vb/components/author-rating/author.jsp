<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@page import="org.verygroup.verybook.repository.SearchQueryDictionary" %>

<div class="item author" id="${authorId}">
    <div class="serial-number">
        <span class="text">${authorPosition}</span>
    </div>

<c:set var="isAuthorPhotoLink" value="false" scope="request"/>
<jsp:include page="../vb/author-photo.jsp"/>

    <div class="about">
        <div class="fullname-rating">
            <div class="fullname">
                <a href="author/${authorId}">${authorName}</a>
            </div>

<jsp:include page="../vb/rating-3-stars.jsp"/>
        </div>
        <div class="genres">
            Жанры:
            <c:set var="authorGenresLastIndex" value="${authorGenres.size() - 1}"/>
            <c:forEach var="authorGenre" items="${authorGenres}" varStatus="loop">
                <a href='${"search-book?search-query="
                                .concat(SearchQueryDictionary.GENRE)
                                .concat(": \"")
                                .concat(authorGenre.getGenreName())
                                .concat("\"")}'>
                    ${authorGenre.getGenreName()}</a>${loop.index != authorGenresLastIndex ? ',' : ''}
            </c:forEach>
        </div>
        <div class="description">
            ${authorDescription}
        </div>
        <div class="footer">
            <div class="published">
                Опубликован<span class="published-ending"></span>:
                <a href="author/${authorId}#books">
                    <span class="books-count">${authorBooksCount}</span>
                    книг<span class="books-ending"></span>
                </a>
            </div>
            <div class="reviews">
                <a href="author/${authorId}#books">
                    <span class="reviews-count">${authorBookReviewsCount}</span>
                    отзыв<span class="reviews-ending"></span>
                    на книги
                </a>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(function () {
        var author = $('#${authorId}');

        var authorBooksCount = parseInt(author.find('.published .books-count').html());
        author.find('.published .published-ending').html(getCorrectEnding(authorBooksCount, 'а', 'о', 'о'));
        author.find('.published .books-ending').html(getCorrectEnding(authorBooksCount, 'а', 'и', ''));

        var authorBookReviewsCount = parseInt(author.find('.reviews .reviews-count').html());
        author.find('.reviews .reviews-ending').html(getCorrectEnding(authorBookReviewsCount, '', 'а', 'ов'));
    });
</script>