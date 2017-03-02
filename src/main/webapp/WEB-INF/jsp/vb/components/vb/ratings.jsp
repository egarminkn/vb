<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@page import="org.verygroup.verybook.BookType" %>
<%@page import="org.verygroup.verybook.RatingsType" %>
<%@page import="org.verygroup.verybook.repository.SearchQueryDictionary" %>
<%@page import="org.verygroup.verybook.RatingCategoryType" %>
<%@page import="org.verygroup.verybook.SortBy" %>
<%@page import="org.verygroup.verybook.SortDirection" %>

<!-- START (Рейтинг-список) -->
<div class="ratings">
    ${ratingsTitle}
    <div class="table">
        <c:forEach var="ratingsItem" items="${ratingsItems}" >
            <%-- задаем тип для ratingsItem, чтобы IDEA давала подсказки --%>
            <jsp:useBean id="ratingsItem" class="org.verygroup.verybook.dto.RatingItem"/>

            <div class="row">
                <div class="cell dynamic-up">
                    <!-- Можно использовать доп.класс invert для того, чтобы стрелочку направить вниз -->
                    <img class="${ratingsItem.grown ? '' : 'invert'}" src="resources/vb/svg/vb/arrow_up.svg" width="71" height="213">
                </div>
                <div class="cell rating-number">
                    №${ratingsItem.number}
                </div>
                <div class="cell">
                    <div class="rating-category">
                        <span>
                            ${ratingsItem.ratingSubcategory != null ? 'в категории' : 'в'}
                        </span>
                        <a href='
                            <c:choose>
                                <c:when test="${ratingsType == RatingsType.AUTHOR}">
                                    <c:choose>
                                        <c:when test="${ratingsItem.ratingSubcategory != null}">
                                            ${"author-rating?subcategory=".concat(ratingsItem.ratingSubcategory)}
                                        </c:when>
                                        <c:when test="${ratingsItem.ratingSubcategory == null}">
                                            ${"author-rating"}
                                        </c:when>
                                    </c:choose>
                                </c:when>
                                <c:otherwise>
                                    <c:choose>
                                        <c:when test="${ratingsItem.ratingSubcategory == null}">
                                            <c:set var="lookFor" value=''/>
                                        </c:when>
                                        <c:when test="${ratingsItem.ratingSubcategory.category.type == RatingCategoryType.BOOK_CATEGORY}">
                                            <c:set var="lookFor" value='${SearchQueryDictionary.CATEGORY
                                                                            .concat(": \\\"")
                                                                            .concat(ratingsItem.ratingSubcategory.category.value)
                                                                            .concat("\\\" ")
                                                                            .concat(SearchQueryDictionary.SUBCATEGORY)
                                                                            .concat(": \\\"")
                                                                            .concat(ratingsItem.ratingSubcategory.value)
                                                                            .concat("\\\" ")}'/>
                                        </c:when>
                                        <c:when test="${ratingsItem.ratingSubcategory.category.type == RatingCategoryType.BOOK_GENRE}">
                                            <c:set var="lookFor" value='${SearchQueryDictionary.GENRE
                                                                            .concat(": \\\"")
                                                                            .concat(ratingsItem.ratingSubcategory.value)
                                                                            .concat("\\\" ")}'/>
                                        </c:when>
                                    </c:choose>

                                    <c:choose>
                                        <c:when test="${ratingsType == RatingsType.EBOOK}">
                                            <c:set var="lookForType" value='${SearchQueryDictionary.TYPE
                                                                                .concat(": \\\"")
                                                                                .concat(BookType.EBOOK.value)
                                                                                .concat("\\\" ")}'/>
                                        </c:when>
                                        <c:when test="${ratingsType == RatingsType.AUDIOBOOK}">
                                            <c:set var="lookForType" value='${SearchQueryDictionary.TYPE
                                                                                .concat(": \\\"")
                                                                                .concat(BookType.AUDIOBOOK.value)
                                                                                .concat("\\\" ")}'/>
                                        </c:when>
                                    </c:choose>

                                    <c:set var="sort" value='${SearchQueryDictionary.SORT_BY
                                                                .concat(": \\\"")
                                                                .concat(SortBy.RATING.value)
                                                                .concat("\\\" ")
                                                                .concat(SearchQueryDictionary.SORT_DIRECTION)
                                                                .concat(": \\\"")
                                                                .concat(SortDirection.DESC.value)
                                                                .concat("\\\"")}'/>

                                    ${"search-book?search-query=".concat(lookFor).concat(lookForType).concat(sort)}
                                </c:otherwise>
                            </c:choose>
                        '>
                            ${ratingsItem.ratingSubcategory != null ? ratingsItem.ratingSubcategory.value : 'общем рейтинге'}
                        </a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
<!-- END (Рейтинг-список) -->