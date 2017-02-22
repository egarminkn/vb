<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="fn" uri="http://verybook.verygroup.org/functions" %>

<c:set var="bodyClass" value="hidden-partners-on-shelf" scope="request"/>
<c:set var="mainClass" value="search-book" scope="request"/>
<c:set var="sloganAdditionalClass" value="" scope="request"/>
<c:set var="isShop" value="true" scope="request"/>

<jsp:include page="fragments/header.jsp"/>

            <div class="extended-search">
                <a href="${currentURI}#">Расширенный поиск</a>
            </div>

            <div class="search-results-summary">
                <h1 class="header">
                    <span class="title">Результаты поиска по запросу:</span>
                    <span class="query">книга о войне</span> <!-- Сюда будет динамически вставляться текст строки поиска -->
                </h1>
                <div class="summary">
                    Найдено <span class="total-count">11</span> совпаден<span class="total-count-ending">ий</span>, из них:
                    <a href="${currentURI}#ebooks"><span class="ebooks-count">12</span> электронн<span class="ebooks-count-ending-1">ых</span> книг<span class="ebooks-count-ending-2"></span></a>,
                    <a href="${currentURI}#audiobooks"><span class="audiobooks-count">11</span> аудиокниг<span class="audiobooks-count-ending"></span></a>,
                    <a href="${currentURI}#authors"><span class="authors-count">13</span> автор<span class="authors-count-ending">а</span></a>
                </div>

                <!-- Выбор типа отображения результатов поиска -->
                <div class="search-results-show-type">
                    <input type="radio" name="show-type" id="show-type-list" class="show-type-list" checked>
                    <input type="radio" name="show-type" id="show-type-tiles" class="show-type-tiles" >

                    <label class="list" for="show-type-list" title="Отобразить списком">
                        <div></div>
                        <div></div>
                        <div></div>
                    </label>
                    <label class="tiles" for="show-type-tiles" title="Отобразить плиткой">
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                    </label>
                </div>
            </div>

            <div class="search-results ebooks" id="ebooks">
                <div class="column left-column">
                    <div class="item header">
                        <h2 class="title">Электнонные книги</h2>
                        <span class="summary">
                            показано <span class="show-range">1-15</span> книг из
                            <span class="count ebooks-count">12</span> найденн<span class="count-ending ebooks-count-ending">ых</span>
                            по запросу "<span class="query">книга о войне</span>"
                        </span>
                    </div>

<c:set var="sortName" value="ebooks" scope="request"/>
<jsp:include page="components/vb/sort-by.jsp"/>

                    <c:forEach var="ebookItem" items="${ebookItems}">
                        <jsp:useBean id="ebookItem" class="org.verygroup.verybook.dto.searchbook.EbookItem"/>
<c:set var="ebookId" value="${ebookItem.ebookId}" scope="request"/>
<c:set var="ebookAuthorId" value="${ebookItem.ebookAuthorId}" scope="request"/>
<c:set var="bookRatingNumber" value="${ebookItem.ebookRating}" scope="request"/>
<c:set var="cartBtnPriceValue" value="${ebookItem.ebookPriceValue}" scope="request"/>
<c:set var="cartBtnPriceCurrency" value="${ebookItem.ebookPriceCurrency}" scope="request"/>
<c:set var="ebookCoverUrl" value="${ebookItem.ebookCoverUrl}" scope="request"/>
<c:set var="ebookTitle" value="${ebookItem.ebookTitle}" scope="request"/>
<c:set var="ebookAuthor" value="${ebookItem.ebookAuthor}" scope="request"/>
<c:set var="ebookDescription" value="${ebookItem.ebookDescription}" scope="request"/>
<c:set var="ebookPublishDate" value="${fn:formatDateToLongStr(ebookItem.ebookPublishDate)}" scope="request"/>
<c:set var="ebookReviewsCount" value="${ebookItem.ebookReviewsCount}" scope="request"/>
<c:set var="ebookFormats" value="${ebookItem.ebookFormats}" scope="request"/>
<jsp:include page="components/search-book/ebook.jsp"/>
                    </c:forEach>

<jsp:include page="components/vb/show-more-btn.jsp"/>
                </div>

                <div class="column right-column">
                    <div class="item shifter">
                    </div>

<jsp:include page="components/vb/to-search-book.jsp"/>

<jsp:include page="components/vb/spec-ebook.jsp"/>
                </div>

                <!-- START (Тень под блоком) -->
                <div class="shadow-under"></div>
                <!-- END (Тень под блоком) -->
            </div>

            <div class="search-results audiobooks" id="audiobooks">
                <div class="column left-column">
                    <div class="item header">
                        <h2 class="title">Аудио-книги</h2>
                        <span class="summary">
                            показано <span class="show-range">1-15</span> аудиокниг из
                            <span class="count audiobooks-count">1</span> найденн<span class="count-ending audiobooks-count-ending">ых</span>
                            по запросу "<span class="query">книга о войне</span>"
                        </span>
                    </div>

<c:set var="sortName" value="audiobooks" scope="request"/>
<jsp:include page="components/vb/sort-by.jsp"/>

                    <c:forEach var="audiobookItem" items="${audiobookItems}">
                        <jsp:useBean id="audiobookItem" class="org.verygroup.verybook.dto.searchbook.AudiobookItem"/>
<c:set var="audiobookCoverUrl" value="${audiobookItem.audiobookCoverUrl}" scope="request"/>
<c:set var="audiobookTitle" value="${audiobookItem.audiobookTitle}" scope="request"/>
<c:set var="audiobookDescription" value="${audiobookItem.audiobookDescription}" scope="request"/>
<c:set var="audiobookPublishDate" value="${fn:formatDateToLongStr(audiobookItem.audiobookPublishDate)}" scope="request"/>
<c:set var="audiobookReviewsCount" value="${audiobookItem.audiobookReviewsCount}" scope="request"/>
<c:set var="audiobookAuthors" value="${audiobookItem.audiobookAuthors}" scope="request"/>
<c:set var="audiobookFormats" value="${audiobookItem.audiobookFormats}" scope="request"/>
<jsp:include page="components/search-book/audiobook.jsp"/>
                    </c:forEach>

<jsp:include page="components/vb/show-more-btn.jsp"/>
                </div>

                <div class="column right-column">
                    <div class="item shifter">
                    </div>

<jsp:include page="components/vb/spec-audiobook.jsp"/>
                </div>

                <!-- START (Тень под блоком) -->
                <div class="shadow-under"></div>
                <!-- END (Тень под блоком) -->
            </div>
            <div class="search-results authors" id="authors">
                <div class="column left-column">
                    <div class="item header">
                        <h2 class="title">Авторы</h2>
                        <span class="summary">
                            показано <span class="show-range">1-15</span> авторов из
                            <span class="count authors-count">1</span> найденн<span class="count-ending authors-count-ending">ых</span>
                            по запросу "<span class="query">книга о войне</span>"
                        </span>
                    </div>

                    <c:forEach var="authorItem" items="${authorItems}">
                        <jsp:useBean id="authorItem" class="org.verygroup.verybook.dto.searchbook.AuthorBlockItem"/>
<c:set var="authorPhotoUrl" value="${authorItem.authorPhotoUrl}" scope="request"/>
<c:set var="authorName" value="${authorItem.authorName}" scope="request"/>
<c:set var="authorDescription" value="${authorItem.authorDescription}" scope="request"/>
<c:set var="authorBooksCount" value="${authorItem.authorBooksCount}" scope="request"/>
<c:set var="authorBookReviewsCount" value="${authorItem.authorBookReviewsCount}" scope="request"/>
<c:set var="authorGenres" value="${authorItem.authorGenres}" scope="request"/>
<jsp:include page="components/search-book/author.jsp"/>
                    </c:forEach>

<jsp:include page="components/vb/show-more-btn.jsp"/>
                </div>

                <div class="column right-column">
                    <div class="item shifter">
                    </div>
                </div>
            </div>
        </main>

<jsp:include page="fragments/footer.jsp"/>