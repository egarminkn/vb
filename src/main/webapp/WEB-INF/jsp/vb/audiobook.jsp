<%-- FIXME переделать в страницу аудиокниги, а пока это просто копия страницы электронной книги --%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="fn" uri="http://verybook.verygroup.org/functions" %>

<c:set var="bodyClass" value="hidden-partners-on-shelf" scope="request"/>
<c:set var="mainClass" value="book" scope="request"/>
<c:set var="sloganAdditionalClass" value="" scope="request"/>
<c:set var="isShop" value="true" scope="request"/>

<jsp:include page="fragments/header.jsp"/>

            <div class="book">
                <h1 class="title">
                    The ultimate players guide to minecraft
                </h1>
                <div class="columns">
                    <div class="column column-1">
                        <div class="summary-1">
                        </div>
                        <div class="cover">
                            <img src="resources/vb/img/tmp/book-1.jpg" width="230" height="368">
                        </div>
                        <ul class="pages">
                            <li class="content">
                                <!-- START (Модальное окно) - 1-ая часть из 3-х -->
                                <!-- Само модальное окно размещается в конце тега main, а здесь идет ссылка на id-шник (modal-name) этого окна -->
                                <a href="${currentURI}#browse-book" class="modal-btn">
                                    Полистать книгу
                                </a>
                                <!-- END (Модальное окно) - 1-ая часть из 3-х -->
                            </li>
                            <li class="content-table">
                                <!-- START (Модальное окно) - 1-ая часть из 3-х -->
                                <!-- Само модальное окно размещается в конце тега main, а здесь идет ссылка на id-шник (modal-name) этого окна -->
                                <a href="${currentURI}#table-of-contents" class="modal-btn">
                                    Оглавление
                                </a>
                                <!-- END (Модальное окно) - 1-ая часть из 3-х -->
                            </li>
                        </ul>
                        <ul class="authors">
                            <li class="author">
<c:set var="isAuthorPhotoLink" value="false" scope="request"/>
<c:set var="authorPhotoUrl" value="resources/vb/img/tmp/photo-1.jpg" scope="request"/>
<jsp:include page="components/vb/author-photo.jsp"/>

                                <div class="about">
                                    <div class="fullname">
                                        <a href="${currentURI}#">
                                            Константин Константинопольский
                                        </a>
                                    </div>

<jsp:include page="components/vb/rating-3-stars.jsp"/>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="column column-2">
                        <div class="summary-1">

<jsp:include page="components/vb/rating-5-stars.jsp"/>

                            <div class="reviews">
                                <a href="${currentURI}#reviews">
                                    Отзывов о книге
                                    <span>31</span>
                                </a>
                            </div>
                            <div class="downloads">
                                <span>176</span>
                                скачиваний
                            </div>
                        </div>
                        <div class="description">
                            Stop doing busywork. Start doing your best work.
                            <br><br>
                            College student Joe Talbert has the modest goal of completing a writing assignment for an English class. His task is to interview a stranger and write a brief biography of the person. With deadlines looming, Joe heads to a nearby nursing home to find a willing subject. There he meets Carl Iverson, and soon nothing in Joe's life is ever the same.
                            <br><br>
                            Carl is a dying Vietnam veteran and a convicted murderer. With only a few months to live, he has been medically paroled to a nursing home, after spending thirty years in prison for the crimes of rape and murder.
                            <br><br>
                            As Joe writes about Carl's life, especially Carl's valor in Vietnam, he cannot reconcile the especially Carl's valor in Vietnam, he cannot reconcile the the especially Carl's
                        </div>
                        <ul class="summary-2">
                            <li class="item">
                                Жанры:
                                <span class="genre">
                                    фантастика, боевик
                                </span>
                            </li>
                            <li class="item">
                                Дата публикации:
                                <span class="date">
                                    26 сентября 2015
                                </span>
                            </li>
                            <li class="item">
                                Язык:
                                <span class="lang">
                                    русский
                                </span>
                            </li>
                            <li class="item">
                                Лицензия:
                                <a class="license" href="${currentURI}#">
                                    verybook
                                </a>
                            </li>
                            <li class="item item-tags">
                                <span>Теги:</span>
                                <ul class="tags">
                                    <li class="tag">
                                        <a href="${currentURI}#">сочинения</a>
                                    </li>
                                    <li class="tag">
                                        <a href="${currentURI}#">иванов</a>
                                    </li>
                                    <li class="tag">
                                        <a href="${currentURI}#">александр</a>
                                    </li>
                                    <li class="tag">
                                        <a href="${currentURI}#">летящие в облаках</a>
                                    </li>
                                    <li class="tag">
                                        <a href="${currentURI}#">классика</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="column column-3">
                        <div class="summary-1">
                        </div>

<jsp:include page="components/vb/price-cart-btn.jsp"/>

                        <div class="formats">
                            <span>Форматы:</span>
                            <ul class="list">
                                <li class="format">
                                    epub
                                </li>
                                <li class="format">
                                    fb2
                                </li>
                            </ul>
                        </div>

<jsp:include page="components/vb/ratings.jsp"/>

<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>
                    </div>
                </div>

                <!-- START (Тень под блоком) -->
                <div class="shadow-under"></div>
                <!-- END (Тень под блоком) -->
            </div>

            <div class="book-reviews" id="reviews">
                <h2 class="header">
                    Отзывы
                    <span class="count">(<span>31</span>)</span>
                </h2>

<jsp:include page="components/vb/send-review-form.jsp"/>

                <ul class="review-list">
                    <c:forEach var="reviewItem" items="${reviewItems}">
                        <jsp:useBean id="reviewItem" class="org.verygroup.verybook.dto.book.ReviewItem"/>
<c:set var="reviewTitle" value="${reviewItem.reviewTitle}" scope="request"/>
<c:set var="reviewAuthor" value="${reviewItem.reviewAuthor}" scope="request"/>
<c:set var="reviewPublishDate" value="${fn:formatDateToLongStr(reviewItem.reviewPublishDate)}" scope="request"/>
<c:set var="reviewContent" value="${reviewItem.reviewContent}" scope="request"/>
<jsp:include page="components/book/review.jsp"/>
                    </c:forEach>
                </ul>

<jsp:include page="components/vb/show-more-btn.jsp"/>

                <!-- START (Тень под блоком) -->
                <div class="shadow-under"></div>
                <!-- END (Тень под блоком) -->
            </div>

            <!-- START (Книжная полка-слайдер) -->
            <!-- Доп.класс hidden-title для удаления заголовка -->
            <div class="shelf">
                <h2 class="title">
                    Рекомендованные также
                </h2>

                <button class="arrow left-arrow"></button>
                <button class="arrow right-arrow"></button>

                <div class="book-slider-outer">
                    <div class="shelf-figure">
                        <div class="shelf-part shelf-left-part"></div>
                        <div class="shelf-part shelf-right-part"></div>
                        <div class="shelf-part shelf-bottom-part"></div>
                    </div>

                    <div class="book-slider-inner">
                        <c:forEach var="bookItem" items="${bookItems}">
                            <jsp:useBean id="bookItem" class="org.verygroup.verybook.dto.BookItem"/>
<c:set var="likesCount" value="${bookItem.likesCount}" scope="request"/>
<c:set var="dislikesCount" value="${bookItem.dislikesCount}" scope="request"/>
<c:set var="priceUnderBookValue" value="${bookItem.priceUnderBookValue}" scope="request"/>
<c:set var="priceUnderBookCurrency" value="${bookItem.priceUnderBookCurrency}" scope="request"/>
<c:set var="bookPublishDate" value="${fn:formatDateToShortStr(bookItem.bookPublishDate)}" scope="request"/>
<c:set var="bookCount" value="${bookItem.bookCount}" scope="request"/>
<c:set var="authorName" value="${bookItem.authorName}" scope="request"/>
<c:set var="bookTitle" value="${bookItem.bookTitle}" scope="request"/>
<c:set var="bookCoverUrl" value="${bookItem.bookCoverUrl}" scope="request"/>
<c:set var="isAuthorHidden" value="${bookItem.authorHidden}" scope="request"/>
<jsp:include page="components/vb/book-with-cover-and-summary.jsp"/>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <!-- END (Книжная полка-слайдер) -->

            <!-- ************** -->
            <!-- Модальные окна -->
            <!-- ************** -->

            <!-- START (Модальное окно) - 2-ая часть из 3-х (размещается в конце тега main) -->
            <!-- Имя modal-name класса и id поменять на свое -->
            <div class="modal table-of-contents" id="table-of-contents">
                <div class="body">
                    <a href="${currentURI}#close-modal" title="Закрыть" class="close-btn"></a>

                    <div class="columns">
                        <div class="column column-1">

                        </div>

                        <div class="column column-2">
<c:set var="hasTocRadios" value="false" scope="request"/>
<jsp:include page="components/vb/table-of-contents.jsp"/>
                        </div>

                        <div class="column column-3">

                        </div>
                    </div>
                </div>
            </div>
            <!-- END (Модальное окно) - 2-ая часть из 3-х (размещается в конце тега main) -->

            <!-- START (Модальное окно) - 2-ая часть из 3-х (размещается в конце тега main) -->
            <!-- Имя modal-name класса и id поменять на свое -->
            <div class="modal browse-book" id="browse-book">
                <div class="body">
                    <a href="${currentURI}#close-modal" title="Закрыть" class="close-btn"></a>

                    <div class="columns">
                        <div class="column column-1">
<c:set var="hasTocRadios" value="true" scope="request"/>
<jsp:include page="components/vb/table-of-contents.jsp"/>
                        </div>

                        <div class="column column-2">
                            <label class="row row-1 page-number">
                                <span class="item text">Страница</span>
                                <a class="item page-btn prev-page-btn" href="${currentURI}#browse-book"></a>
                                <input class="item" type="text" name="page-number" value="1" maxlength="4">
                                <a class="item page-btn next-page-btn" href="${currentURI}#browse-book"></a>
                                <span class="item">из</span>
                                <span class="item book-size">10</span>
                            </label>

                            <div class="row row-2 page-content"></div>

                            <div class="row row-3 status">
                                Просмотрен<span class="watching-ending">о</span>
                                <span class="count">1</span>
                                страниц<span class="count-ending"></span>
                                из <span class="max-count">41</span>
                                доступн<span class="max-count-ending">ых</span> для ознакомления
                            </div>
                        </div>

                        <div class="column column-3">

                        </div>
                    </div>
                </div>
            </div>
            <!-- END (Модальное окно) - 2-ая часть из 3-х (размещается в конце тега main) -->
        </main>

<jsp:include page="fragments/footer.jsp"/>