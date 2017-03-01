<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@page import="javax.servlet.jsp.JspWriter" %>
<%@page import="org.verygroup.verybook.util.JspWriterImpl" %>
<%@page import="org.verygroup.verybook.repository.SearchQueryDictionary" %>

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
                            <span class="query">
                                <!-- Сюда будет динамически вставляться текст -->
                            </span>
                        </div>

                        <div class="summary">
                            <!-- Сюда будет динамически вставляться текст -->
                        </div>
                    </div>

                    <div class="rating-authors" data-next="0">
                    </div>

<jsp:include page="components/vb/show-more-btn.jsp"/>
                </div>

                <div class="column column-3">

                </div>
            </div>
        </main>

<jsp:include page="fragments/footer.jsp"/>

<script type="text/javascript">
    <%
        JspWriter outTmp = out;
        out = new JspWriterImpl();
    %>
    <c:set var="authorPosition" value=":authorPosition" scope="request"/>
    <c:set var="authorId" value=":authorId" scope="request"/>
    <c:set var="authorRatingNumber" value=":authorRatingNumber" scope="request"/>
    <c:set var="authorPhotoUrl" value=":authorPhotoUrl" scope="request"/>
    <c:set var="authorName" value=":authorName" scope="request"/>
    <c:set var="authorDescription" value=":authorDescription" scope="request"/>
    <c:set var="authorBooksCount" value=":authorBooksCount" scope="request"/>
    <c:set var="authorBookReviewsCount" value=":authorBookReviewsCount" scope="request"/>
    <c:set var="authorGenres" value=":authorGenres" scope="request"/>
    <jsp:include page="components/author-rating/author.jsp"/>
    <%
        String outString = out.toString();
        out = outTmp;
    %>
    var authorBlockTemplate = "<%=outString%>";
    var genreLink = "&lt;a href='${"search-book?search-query=".concat(SearchQueryDictionary.GENRE).concat(": \\\"").concat(":authorGenre").concat("\\\"")}'&gt;:authorGenre&lt;/a&gt;";

    var RATING_TITLE_DEFAULT = 'Общий рейтинг';

    var SUMMARY_NOTHING_FOUND_TEMPLATE = 'По вашему запросу ничего не найдено. Попробуйте изменить условия поиска';
    var SUMMARY_AUTHORS_FOUND_TEMPLATE = 'Данному запросу соответству<span class="count-before-ending"></span> <span class="count"></span> автор<span class="count-after-ending"></span>';

    function correctAuthorCountEnding() {
        var summary = $('.summary');
        var count = parseInt(summary.find('.count').html());
        summary.find('.count-before-ending').html(getCorrectEnding(count, 'ет', 'ют', 'ют'));
        summary.find('.count-after-ending').html(getCorrectEnding(count, '', 'а', 'ов'));
    }

    $(function () {
        $('.rating-filter-form .rating-filter-form-submit-btn').trigger('click');
    });
</script>