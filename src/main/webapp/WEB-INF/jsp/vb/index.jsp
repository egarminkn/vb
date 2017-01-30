<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="fn" uri="http://verybook.verygroup.org/functions" %>

<c:set var="bodyClass" value="hidden-books-on-shelf" scope="request"/>
<c:set var="mainClass" value="index" scope="request"/>
<c:set var="sloganAdditionalClass" value="" scope="request"/>

<jsp:include page="fragments/header.jsp"/>

            <input type="radio" name="slide" class="slider-button slider-button-1" id="slider-button-1" checked>
            <input type="radio" name="slide" class="slider-button slider-button-2" id="slider-button-2" >
            <input type="radio" name="slide" class="slider-button slider-button-3" id="slider-button-3" >
            <input type="radio" name="slide" class="slider-button slider-button-4" id="slider-button-4" >
            <div class="main-banner">
                <div class="slider">
                    <c:forEach var="slideUrl" items="${slideUrls}">
<c:set var="slideUrl" value="${slideUrl}" scope="request"/>
<jsp:include page="components/index/main-banner-slide.jsp"/>
                    </c:forEach>
                </div>
            </div>
            <div class="slider-buttons">
                <label class="slider-button slider-button-1" for="slider-button-1"></label>
                <label class="slider-button slider-button-2" for="slider-button-2"></label>
                <label class="slider-button slider-button-3" for="slider-button-3"></label>
                <label class="slider-button slider-button-4" for="slider-button-4"></label>
            </div>

            <div class="columns">
                <div class="column column-1 links">
<jsp:include page="components/vb/to-search-book.jsp"/>

<jsp:include page="components/vb/spec-ebook.jsp"/>

                    <div class="manual">
                        <a href="${currentURI}#">
                            <div class="title">
                                <span class="text">
                                    Подробный мануал по EPUB
                                </span>
                            </div>
                            <div class="body">
                                Для выставления<br>на продажу собственных<br>книг настоятельно<br>рекомендем<br>ознакомиться с нашим<br>мануалом, который<br>упростит и сделает более
                            </div>
                        </a>
                    </div>
                </div>

                <!-- Здесь начинаются полки -->
                <div class="column column-2 shelves">
                    <!-- Первая полка (Бест-селлеры) -->
                    <div class="shelf-title-and-wrapper">
                        <div class="title">
                            <div class="bookmark"></div>
                            <div class="shelf-name">
                                <a href="${currentURI}#">Бест-селлеры</a>
                            </div>

<c:set var="sortName" value="best-sellers" scope="request"/>
<jsp:include page="components/vb/sort-by.jsp"/>
                        </div>
                        <div class="shelf-wrapper">
                            <div class="arrow-up"></div>
                            <!-- best-sellers -->

                            <!-- START (Книжная полка-слайдер) -->
                            <!-- Доп.класс hidden-title для удаления заголовка -->
                            <div class="shelf hidden-title">
                                <div class="title">
                                    Рекомендованные также
                                </div>

                                <button class="arrow left-arrow"></button>
                                <button class="arrow right-arrow"></button>

                                <div class="book-slider-outer">
                                    <div class="shelf-figure">
                                        <div class="shelf-part shelf-left-part"></div>
                                        <div class="shelf-part shelf-right-part"></div>
                                        <div class="shelf-part shelf-bottom-part"></div>
                                    </div>

                                    <div class="book-slider-inner">
                                        <c:forEach var="bestSellersBookItem" items="${bestSellersBookItems}">
                                            <jsp:useBean id="bestSellersBookItem" class="org.verygroup.verybook.dto.BookItem"/>
<c:set var="likesCount" value="${bestSellersBookItem.likesCount}" scope="request"/>
<c:set var="dislikesCount" value="${bestSellersBookItem.dislikesCount}" scope="request"/>
<c:set var="priceUnderBookValue" value="${bestSellersBookItem.priceUnderBookValue}" scope="request"/>
<c:set var="priceUnderBookCurrency" value="${bestSellersBookItem.priceUnderBookCurrency}" scope="request"/>
<c:set var="bookPublishDate" value="${fn:formatDateToShortStr(bestSellersBookItem.bookPublishDate)}" scope="request"/>
<c:set var="bookCount" value="${bestSellersBookItem.bookCount}" scope="request"/>
<c:set var="authorName" value="${bestSellersBookItem.authorName}" scope="request"/>
<c:set var="bookTitle" value="${bestSellersBookItem.bookTitle}" scope="request"/>
<c:set var="bookCoverUrl" value="${bestSellersBookItem.bookCoverUrl}" scope="request"/>
<c:set var="isAuthorHidden" value="${bestSellersBookItem.authorHidden}" scope="request"/>
<jsp:include page="components/vb/book-with-cover-and-summary.jsp"/>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <!-- END (Книжная полка-слайдер) -->

                            <!-- START (Тень под блоком) -->
                            <div class="shadow-under"></div>
                            <!-- END (Тень под блоком) -->
                        </div>
                    </div>

                    <!-- Вторая полка (Новинки) -->
                    <div class="shelf-title-and-wrapper">
                        <div class="title">
                            <div class="bookmark"></div>
                            <div class="shelf-name">
                                <a href="${currentURI}#">Новинки</a>
                            </div>

<c:set var="sortName" value="new-books" scope="request"/>
<jsp:include page="components/vb/sort-by.jsp"/>
                        </div>
                        <div class="shelf-wrapper">
                            <div class="arrow-up"></div>
                            <!-- new-books -->

                            <!-- START (Книжная полка-слайдер) -->
                            <!-- Доп.класс hidden-title для удаления заголовка -->
                            <div class="shelf hidden-title">
                                <div class="title">
                                    Рекомендованные также
                                </div>

                                <button class="arrow left-arrow"></button>
                                <button class="arrow right-arrow"></button>

                                <div class="book-slider-outer">
                                    <div class="shelf-figure">
                                        <div class="shelf-part shelf-left-part"></div>
                                        <div class="shelf-part shelf-right-part"></div>
                                        <div class="shelf-part shelf-bottom-part"></div>
                                    </div>

                                    <div class="book-slider-inner">
                                        <c:forEach var="newBooksBookItem" items="${newBooksBookItems}">
                                            <jsp:useBean id="newBooksBookItem" class="org.verygroup.verybook.dto.BookItem"/>
<c:set var="likesCount" value="${newBooksBookItem.likesCount}" scope="request"/>
<c:set var="dislikesCount" value="${newBooksBookItem.dislikesCount}" scope="request"/>
<c:set var="priceUnderBookValue" value="${newBooksBookItem.priceUnderBookValue}" scope="request"/>
<c:set var="priceUnderBookCurrency" value="${newBooksBookItem.priceUnderBookCurrency}" scope="request"/>
<c:set var="bookPublishDate" value="${fn:formatDateToShortStr(newBooksBookItem.bookPublishDate)}" scope="request"/>
<c:set var="bookCount" value="${newBooksBookItem.bookCount}" scope="request"/>
<c:set var="authorName" value="${newBooksBookItem.authorName}" scope="request"/>
<c:set var="bookTitle" value="${newBooksBookItem.bookTitle}" scope="request"/>
<c:set var="bookCoverUrl" value="${newBooksBookItem.bookCoverUrl}" scope="request"/>
<c:set var="isAuthorHidden" value="${newBooksBookItem.authorHidden}" scope="request"/>
<jsp:include page="components/vb/book-with-cover-and-summary.jsp"/>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <!-- END (Книжная полка-слайдер) -->

                            <!-- START (Тень под блоком) -->
                            <div class="shadow-under"></div>
                            <!-- END (Тень под блоком) -->
                        </div>
                    </div>

                    <!-- Третья полка (Высший рейтинг) -->
                    <div class="shelf-title-and-wrapper">
                        <div class="title">
                            <div class="bookmark"></div>
                            <div class="shelf-name">
                                <a href="${currentURI}#">Высший рейтинг</a>
                            </div>

<c:set var="sortName" value="highest-rating" scope="request"/>
<jsp:include page="components/vb/sort-by.jsp"/>
                        </div>
                        <div class="shelf-wrapper">
                            <div class="arrow-up"></div>
                            <!-- highest-rating -->

                            <!-- START (Книжная полка-слайдер) -->
                            <!-- Доп.класс hidden-title для удаления заголовка -->
                            <div class="shelf hidden-title">
                                <div class="title">
                                    Рекомендованные также
                                </div>

                                <button class="arrow left-arrow"></button>
                                <button class="arrow right-arrow"></button>

                                <div class="book-slider-outer">
                                    <div class="shelf-figure">
                                        <div class="shelf-part shelf-left-part"></div>
                                        <div class="shelf-part shelf-right-part"></div>
                                        <div class="shelf-part shelf-bottom-part"></div>
                                    </div>

                                    <div class="book-slider-inner">
                                        <c:forEach var="highestRatingBookItem" items="${highestRatingBookItems}">
                                            <jsp:useBean id="highestRatingBookItem" class="org.verygroup.verybook.dto.BookItem"/>
<c:set var="likesCount" value="${highestRatingBookItem.likesCount}" scope="request"/>
<c:set var="dislikesCount" value="${highestRatingBookItem.dislikesCount}" scope="request"/>
<c:set var="priceUnderBookValue" value="${highestRatingBookItem.priceUnderBookValue}" scope="request"/>
<c:set var="priceUnderBookCurrency" value="${highestRatingBookItem.priceUnderBookCurrency}" scope="request"/>
<c:set var="bookPublishDate" value="${fn:formatDateToShortStr(highestRatingBookItem.bookPublishDate)}" scope="request"/>
<c:set var="bookCount" value="${highestRatingBookItem.bookCount}" scope="request"/>
<c:set var="authorName" value="${highestRatingBookItem.authorName}" scope="request"/>
<c:set var="bookTitle" value="${highestRatingBookItem.bookTitle}" scope="request"/>
<c:set var="bookCoverUrl" value="${highestRatingBookItem.bookCoverUrl}" scope="request"/>
<c:set var="isAuthorHidden" value="${highestRatingBookItem.authorHidden}" scope="request"/>
<jsp:include page="components/vb/book-with-cover-and-summary.jsp"/>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <!-- END (Книжная полка-слайдер) -->

                            <!-- START (Тень под блоком) -->
                            <div class="shadow-under"></div>
                            <!-- END (Тень под блоком) -->
                        </div>
                    </div>

                    <!-- Рейтинг авторов -->
                    <div class="shelf-title-and-wrapper authors-rating">
                        <div class="title">
                            <div class="bookmark"></div>
                            <div class="shelf-name">
                                <a href="${currentURI}#">Рейтинг авторов</a>
                            </div>
                        </div>
                        <div class="shelf-wrapper">
                            <div class="arrow-up"></div>

                            <div class="authors-block">
                                <div class="author-summary">
                                    <div class="author-name">
                                        <a href="${currentURI}#">
                                            <span class="text">
                                                Константин Константинопольский
                                            </span>
                                        </a>
                                    </div>
                                    <div class="book-count">
                                        <span class="text">
                                            5 книг
                                        </span>
                                    </div>

<c:set var="isAuthorPhotoLink" value="true" scope="request"/>
<c:set var="authorPhotoUrl" value="resources/vb/img/tmp/photo-1.jpg" scope="request"/>
<jsp:include page="components/vb/author-photo.jsp"/>

<jsp:include page="components/vb/rating-3-stars.jsp"/>

<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>
                                </div>
                                <div class="author-summary">
                                    <div class="author-name">
                                        <a href="${currentURI}#">
                                            <span class="text">
                                                Иван Бездомный
                                            </span>
                                        </a>
                                    </div>
                                    <div class="book-count">
                                        <span class="text">
                                            8 книг
                                        </span>
                                    </div>

<c:set var="isAuthorPhotoLink" value="true" scope="request"/>
<c:set var="authorPhotoUrl" value="resources/vb/img/tmp/photo-2.jpg" scope="request"/>
<jsp:include page="components/vb/author-photo.jsp"/>

<jsp:include page="components/vb/rating-3-stars.jsp"/>

<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>
                                </div>
                                <div class="author-summary">
                                    <div class="author-name">
                                        <a href="${currentURI}#">
                                            <span class="text">
                                                Константин Константинопольский
                                            </span>
                                        </a>
                                    </div>
                                    <div class="book-count">
                                        <span class="text">
                                            8 книг
                                        </span>
                                    </div>

<c:set var="isAuthorPhotoLink" value="true" scope="request"/>
<c:set var="authorPhotoUrl" value="resources/vb/img/tmp/photo-3.jpg" scope="request"/>
<jsp:include page="components/vb/author-photo.jsp"/>

<jsp:include page="components/vb/rating-3-stars.jsp"/>

<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>
                                </div>
                                <div class="author-summary">
                                    <div class="author-name">
                                        <a href="${currentURI}#">
                                            <span class="text">
                                                Александр Неизвестный
                                            </span>
                                        </a>
                                    </div>
                                    <div class="book-count">
                                        <span class="text">
                                            8 книг
                                        </span>
                                    </div>

<c:set var="isAuthorPhotoLink" value="true" scope="request"/>
<c:set var="authorPhotoUrl" value="resources/vb/img/tmp/photo-4.jpg" scope="request"/>
<jsp:include page="components/vb/author-photo.jsp"/>

<jsp:include page="components/vb/rating-3-stars.jsp"/>

<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>
                                </div>
                                <div class="author-summary">
                                    <div class="author-name">
                                        <a href="${currentURI}#">
                                            <span class="text">
                                                Adam Moran Thompson
                                            </span>
                                        </a>
                                    </div>
                                    <div class="book-count">
                                        <span class="text">
                                            8 книг
                                        </span>
                                    </div>

<c:set var="isAuthorPhotoLink" value="true" scope="request"/>
<c:set var="authorPhotoUrl" value="resources/vb/img/tmp/photo-5.jpg" scope="request"/>
<jsp:include page="components/vb/author-photo.jsp"/>

<jsp:include page="components/vb/rating-3-stars.jsp"/>

<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>
                                </div>
                                <div class="author-summary">
                                    <div class="author-name">
                                        <a href="${currentURI}#">
                                            <span class="text">
                                                Сунь Муй Ван
                                            </span>
                                        </a>
                                    </div>
                                    <div class="book-count">
                                        <span class="text">
                                            8 книг
                                        </span>
                                    </div>

<c:set var="isAuthorPhotoLink" value="true" scope="request"/>
<c:set var="authorPhotoUrl" value="resources/vb/img/tmp/photo-6.jpg" scope="request"/>
<jsp:include page="components/vb/author-photo.jsp"/>

<jsp:include page="components/vb/rating-3-stars.jsp"/>

<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>
                                </div>
                            </div>

                            <!-- START (Тень под блоком) -->
                            <div class="shadow-under"></div>
                            <!-- END (Тень под блоком) -->
                        </div>
                    </div>

                    <!-- SEO блок -->
                    <div class="seo">
                        <div class="title">
                            Публикация собственных книг
                        </div>
                        <div class="body">
                            <p>После переноса операционной базы онлайн-мегамаркета из Санкт-Петербурга в Москву началось активное
                                развитие проекта по всем направлениям. К существующим в ассортименте книгам и музыкальным дискам
                                добавились видео-товары, компьютерные игры и программные продукты, открылся раздел букинистики и
                                антикварных книг.В 2005 годупосетителям сайта стали доступны электроника, компьютерная техника,
                                фототовары и мобильные телефоны — этот сегмент вышел на второе место по объёмам продаж после книг.
                                В 2007 году были добавлены товары для детей, семьи и дома. Сегодня на сайте можно купить практически
                                всё, за эти годы Ozon.ru прошел путь от магазина медийных товаров до онлайн-мегамаркета с самым
                                широким в Рунете ассортиментом товаров – 3 500 000 товаров в 14 категориях.</p>
                            <p>Ежедневно на сайт Ozon.ru заходят около 700 000 посетителей. Ассортимент онлайн-мегамаркета разделен
                                на большие разделы, товары в которых собраны в постоянно обновляемые каталоги. Чтобы найти
                                необходимый товар, можно воспользоваться и системой поиска, которая позволяет осуществлять
                                эффективный и быстрый поиск по самом у широкому спектру параметров, которые в обычных магазинах
                                недоступны.</p>
                            <p>Магазин поддерживает 19 способов оплаты и способов доставки заказов, которые позволяют покупателям в
                                зависимости от места проживания подобрать оптимальное сочетание. Магазин поддерживает 19 способов
                                оплаты и способов доставки заказов, которые позволяют покупателям в зависимости от места проживания
                                подобрать оптимальное сочетание. заказов, которые позволяют покупателям в зависимости от места
                                проживания подобрать оптимальное сочетание.</p>
                        </div>
                    </div>
                </div>

                <div class="column column-3"></div>
            </div>

            <!-- START (Тень под блоком) -->
            <div class="shadow-under"></div>
            <!-- END (Тень под блоком) -->
        </main>

<jsp:include page="fragments/footer.jsp"/>