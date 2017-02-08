<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="bodyClass" value="hidden-partners-on-shelf" scope="request"/>
<c:set var="mainClass" value="author-rating" scope="request"/>
<c:set var="sloganAdditionalClass" value="" scope="request"/>
<c:set var="isAuthorsRating" value="true" scope="request"/>

<jsp:include page="fragments/header.jsp"/>

            <div class="columns">
                <div class="column column-1">
<jsp:include page="components/vb/rating-category-filter.jsp"/>
                </div>

                <div class="column column-2">
                    <div class="item header">
                        <h1>Рейтинг авторов</h1>

                        <div class="categories">
                            <span class="title">
                                в категории:
                            </span>
                            <span class="query"> <!-- Сюда будет динамически вставляться текст -->
                                военные, приключения
                            </span>
                        </div>

                        <div class="summary">
                            Данному запросу соответству<span class="count-before-ending">ет</span>
                            <span class="count">3774</span>
                            автор<span class="count-after-ending">ов</span>
                        </div>
                    </div>

                    <c:forEach var="authorItem" items="${authorItems}" varStatus="loop">
                        <jsp:useBean id="authorItem" class="org.verygroup.verybook.dto.authorrating.AuthorItem"/>
<c:set var="authorPosition" value="${loop.index + 1}" scope="request"/>
<c:set var="authorPhotoUrl" value="${authorItem.authorPhotoUrl}" scope="request"/>
<c:set var="authorName" value="${authorItem.authorName}" scope="request"/>
<c:set var="authorDescription" value="${authorItem.authorDescription}" scope="request"/>
<c:set var="authorBooksCount" value="${authorItem.authorBooksCount}" scope="request"/>
<c:set var="authorBookReviewsCount" value="${authorItem.authorBookReviewsCount}" scope="request"/>
<c:set var="authorGenres" value="${authorItem.authorGenres}" scope="request"/>
<jsp:include page="components/author-rating/author.jsp"/>
                    </c:forEach>

<jsp:include page="components/vb/show-more-btn.jsp"/>
                </div>

                <div class="column column-3">

                </div>
            </div>
        </main>

<jsp:include page="fragments/footer.jsp"/>