<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="bodyClass" value="hidden-partners-on-shelf" scope="request"/>
<c:set var="mainClass" value="book" scope="request"/>
<c:set var="sloganAdditionalClass" value="" scope="request"/>

<jsp:include page="fragments/header.jsp"/>

            <div class="book">
                <div class="title">
                    The ultimate players guide to minecraft
                </div>
                <div class="columns">
                    <div class="column column-1">
                        <div class="summary-1">
                        </div>
                        <div class="cover">
                            <img src="resources/vb/img/tmp/book-1.jpg" width="100" height="160">
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
                <div class="header">
                    Отзывы
                    <span class="count">(<span>31</span>)</span>
                </div>

<jsp:include page="components/vb/send-review-form.jsp"/>

                <ul class="review-list">
                    <li class="review">
                        <div class="title">
                            Good book for beginners, but daily or even weekly players look elsewhere
                        </div>
                        <div class="summary">
                            <div class="reviewer">
                                от
                                <a href="${currentURI}#">BruceInCola</a>
                            </div>
                            <div class="date">
                                отзыв оставлен
                                <span>26 декабря 2014</span>
                            </div>
                        </div>
                        <div class="content">
                            The first edition of this book helped me learn Minecraft well enough to keep up with my grandson for a little while, at least. He moved through his Minecraft phase and on to online First Person Shooters all too fast. So now Minecraft in Creative mode is where I spend my time and that, incidentally is my only criticism of this otherwi excellent guide: it is focused primarily on Surviva mode, which I don’t find to be fun. But kids love the kill-r aspect of Survival mode and kids are who this book is written for Fortunately nearly all the information i s applicable t all Minecraft modes. (By the way, you can set the mayhem to low in Survival mode, but I just don’t care for the competitive aspect. I’d rather spend all my time creating new worl
                        </div>
                    </li>
                    <li class="review">
                        <div class="title">
                            Good book for beginners, but daily or even weekly players look elsewhere
                        </div>
                        <div class="summary">
                            <div class="reviewer">
                                от
                                <a href="${currentURI}#">BruceInCola</a>
                            </div>
                            <div class="date">
                                отзыв оставлен
                                <span>26 декабря 2014</span>
                            </div>
                        </div>
                        <div class="content">
                            The first edition of this book helped me learn Minecraft well enough to keep up with my grandson for a little while, at least. He moved through his Minecraft phase and on to online First Person Shooters all too fast. So now Minecraft in Creative mode is where I spend my time and that, incidentally is my only criticism of this otherwi excellent guide: it is focused primarily on Surviva mode, which I don’t find to be fun. But kids love the kill-r aspect of Survival mode and kids are who this book is written for Fortunately nearly all the information i s applicable t all Minecraft modes. (By the way, you can set the mayhem to low in Survival mode, but I just don’t care for the competitive aspect. I’d rather spend all my time creating new worl
                        </div>
                    </li>
                    <li class="review">
                        <div class="title">
                            Good book for beginners, but daily or even weekly players look elsewhere
                        </div>
                        <div class="summary">
                            <div class="reviewer">
                                от
                                <a href="${currentURI}#">BruceInCola</a>
                            </div>
                            <div class="date">
                                отзыв оставлен
                                <span>26 декабря 2014</span>
                            </div>
                        </div>
                        <div class="content">
                            The first edition of this book helped me learn Minecraft well enough to keep up with my grandson for a little while, at least. He moved through his Minecraft phase and on to online First Person Shooters all too fast. So now Minecraft in Creative mode is where I spend my time and that, incidentally is my only criticism of this otherwi excellent guide: it is focused primarily on Surviva mode, which I don’t find to be fun. But kids love the kill-r aspect of Survival mode and kids are who this book is written for Fortunately nearly all the information i s applicable t all Minecraft modes. (By the way, you can set the mayhem to low in Survival mode, but I just don’t care for the competitive aspect. I’d rather spend all my time creating new worl
                        </div>
                    </li>
                    <li class="review">
                        <div class="title">
                            Good book for beginners, but daily or even weekly players look elsewhere
                        </div>
                        <div class="summary">
                            <div class="reviewer">
                                от
                                <a href="${currentURI}#">BruceInCola</a>
                            </div>
                            <div class="date">
                                отзыв оставлен
                                <span>26 декабря 2014</span>
                            </div>
                        </div>
                        <div class="content">
                            The first edition of this book helped me learn Minecraft well enough to keep up with my grandson for a little while, at least. He moved through his Minecraft phase and on to online First Person Shooters all too fast. So now Minecraft in Creative mode is where I spend my time and that, incidentally is my only criticism of this otherwi excellent guide: it is focused primarily on Surviva mode, which I don’t find to be fun. But kids love the kill-r aspect of Survival mode and kids are who this book is written for Fortunately nearly all the information i s applicable t all Minecraft modes. (By the way, you can set the mayhem to low in Survival mode, but I just don’t care for the competitive aspect. I’d rather spend all my time creating new worl
                        </div>
                    </li>
                </ul>

<jsp:include page="components/vb/show-more-btn.jsp"/>

                <!-- START (Тень под блоком) -->
                <div class="shadow-under"></div>
                <!-- END (Тень под блоком) -->
            </div>

            <!-- START (Книжная полка-слайдер) -->
            <!-- Доп.класс hidden-title для удаления заголовка -->
            <div class="shelf">
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
                        <!-- START (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->
                        <!-- Доп.класс hidden-author нужен для страницы "Автора" (author), чтобы скрыть имя автора и общее количество его книг -->
                        <div class="book-with-cover-and-summary ">
                            <a class="book-cover" href="${currentURI}#">
                                <img src="resources/vb/img/tmp/book-1.jpg" width="230" height="368">
                            </a>

                            <div class="book-summary">
                                <div class="book-title-and-author">
                                    <!-- В бабле ниже блок main повторяется один в один (копи-паст) -->
                                    <div class="main">
                                        <a class="book-title" href="${currentURI}#">
                                            <span class="text">
                                                Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие
                                            </span>
                                        </a>
                                        <a class="book-author" href="${currentURI}#">
                                            <div class="author-name">
                                                <span class="text">
                                                    А.А. Иванов
                                                </span>
                                            </div>
                                            <div class="book-count">
                                                (<span class="text"><span class="count">40</span>
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
                                                    Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие
                                                </span>
                                            </a>
                                            <a class="book-author" href="${currentURI}#">
                                                <div class="author-name">
                                                    <span class="text">
                                                        А.А. Иванов
                                                    </span>
                                                </div>
                                                <div class="book-count">
                                                    (<span class="text"><span class="count">40</span>
                                                    книг<span class="count-ending"></span></span>)
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="book-publish-date">
                                    26 Янв 2016
                                </div>

<jsp:include page="components/vb/rating-5-stars.jsp"/>

<c:set var="likesCount" value="12000" scope="request"/>
<c:set var="dislikesCount" value="12000" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>

<c:set var="priceUnderBookValue" value="20" scope="request"/>
<c:set var="priceUnderBookCurrency" value="руб" scope="request"/>
<jsp:include page="components/vb/price-under-book.jsp"/>
                            </div>
                        </div>
                        <!-- END (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->

                        <!-- START (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->
                        <!-- Доп.класс hidden-author нужен для страницы "Автора" (author), чтобы скрыть имя автора и общее количество его книг -->
                        <div class="book-with-cover-and-summary ">
                            <a class="book-cover" href="${currentURI}#">
                                <img src="resources/vb/img/tmp/book-2.jpg" width="230" height="368">
                            </a>

                            <div class="book-summary">
                                <div class="book-title-and-author">
                                    <!-- В бабле ниже блок main повторяется один в один (копи-паст) -->
                                    <div class="main">
                                        <a class="book-title" href="${currentURI}#">
                                            <span class="text">
                                                Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие
                                            </span>
                                        </a>
                                        <a class="book-author" href="${currentURI}#">
                                            <div class="author-name">
                                                <span class="text">
                                                    А.А. Иванов
                                                </span>
                                            </div>
                                            <div class="book-count">
                                                (<span class="text"><span class="count">1</span>
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
                                                    Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие
                                                </span>
                                            </a>
                                            <a class="book-author" href="${currentURI}#">
                                                <div class="author-name">
                                                    <span class="text">
                                                        А.А. Иванов
                                                    </span>
                                                </div>
                                                <div class="book-count">
                                                    (<span class="text"><span class="count">1</span>
                                                    книг<span class="count-ending"></span></span>)
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="book-publish-date">
                                    26 Янв 2016
                                </div>

<jsp:include page="components/vb/rating-5-stars.jsp"/>

<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>

<c:set var="priceUnderBookValue" value="20" scope="request"/>
<c:set var="priceUnderBookCurrency" value="руб" scope="request"/>
<jsp:include page="components/vb/price-under-book.jsp"/>
                            </div>
                        </div>
                        <!-- END (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->

                        <!-- START (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->
                        <!-- Доп.класс hidden-author нужен для страницы "Автора" (author), чтобы скрыть имя автора и общее количество его книг -->
                        <div class="book-with-cover-and-summary ">
                            <a class="book-cover" href="${currentURI}#">
                                <img src="resources/vb/img/tmp/book-3.jpg" width="230" height="368">
                            </a>

                            <div class="book-summary">
                                <div class="book-title-and-author">
                                    <!-- В бабле ниже блок main повторяется один в один (копи-паст) -->
                                    <div class="main">
                                        <a class="book-title" href="${currentURI}#">
                                            <span class="text">
                                                Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие
                                            </span>
                                        </a>
                                        <a class="book-author" href="${currentURI}#">
                                            <div class="author-name">
                                                <span class="text">
                                                    А.А. Иванов
                                                </span>
                                            </div>
                                            <div class="book-count">
                                                (<span class="text"><span class="count">4</span>
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
                                                    Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие
                                                </span>
                                            </a>
                                            <a class="book-author" href="${currentURI}#">
                                                <div class="author-name">
                                                    <span class="text">
                                                        А.А. Иванов
                                                    </span>
                                                </div>
                                                <div class="book-count">
                                                    (<span class="text"><span class="count">4</span>
                                                    книг<span class="count-ending"></span></span>)
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="book-publish-date">
                                    26 Янв 2016
                                </div>

<jsp:include page="components/vb/rating-5-stars.jsp"/>

<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>

<c:set var="priceUnderBookValue" value="Бесплатно" scope="request"/>
<c:set var="priceUnderBookCurrency" value="" scope="request"/>
<jsp:include page="components/vb/price-under-book.jsp"/>
                            </div>
                        </div>
                        <!-- END (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->

                        <!-- START (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->
                        <!-- Доп.класс hidden-author нужен для страницы "Автора" (author), чтобы скрыть имя автора и общее количество его книг -->
                        <div class="book-with-cover-and-summary ">
                            <a class="book-cover" href="${currentURI}#">
                                <img src="resources/vb/img/tmp/book-4.jpg" width="230" height="368">
                            </a>

                            <div class="book-summary">
                                <div class="book-title-and-author">
                                    <!-- В бабле ниже блок main повторяется один в один (копи-паст) -->
                                    <div class="main">
                                        <a class="book-title" href="${currentURI}#">
                                            <span class="text">
                                                Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие
                                            </span>
                                        </a>
                                        <a class="book-author" href="${currentURI}#">
                                            <div class="author-name">
                                                <span class="text">
                                                    А.А. Иванов
                                                </span>
                                            </div>
                                            <div class="book-count">
                                                (<span class="text"><span class="count">9</span>
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
                                                    Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие
                                                </span>
                                            </a>
                                            <a class="book-author" href="${currentURI}#">
                                                <div class="author-name">
                                                    <span class="text">
                                                        А.А. Иванов
                                                    </span>
                                                </div>
                                                <div class="book-count">
                                                    (<span class="text"><span class="count">9</span>
                                                    книг<span class="count-ending"></span></span>)
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="book-publish-date">
                                    26 Янв 2016
                                </div>

<jsp:include page="components/vb/rating-5-stars.jsp"/>

<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>

<c:set var="priceUnderBookValue" value="20" scope="request"/>
<c:set var="priceUnderBookCurrency" value="руб" scope="request"/>
<jsp:include page="components/vb/price-under-book.jsp"/>
                            </div>
                        </div>
                        <!-- END (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->

                        <!-- START (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->
                        <!-- Доп.класс hidden-author нужен для страницы "Автора" (author), чтобы скрыть имя автора и общее количество его книг -->
                        <div class="book-with-cover-and-summary ">
                            <a class="book-cover" href="${currentURI}#">
                                <img src="resources/vb/img/tmp/book-5.jpg" width="230" height="368">
                            </a>

                            <div class="book-summary">
                                <div class="book-title-and-author">
                                    <!-- В бабле ниже блок main повторяется один в один (копи-паст) -->
                                    <div class="main">
                                        <a class="book-title" href="${currentURI}#">
                                            <span class="text">
                                                Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие
                                            </span>
                                        </a>
                                        <a class="book-author" href="${currentURI}#">
                                            <div class="author-name">
                                                <span class="text">
                                                    А.А. Иванов
                                                </span>
                                            </div>
                                            <div class="book-count">
                                                (<span class="text"><span class="count">21</span>
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
                                                    Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие
                                                </span>
                                            </a>
                                            <a class="book-author" href="${currentURI}#">
                                                <div class="author-name">
                                                    <span class="text">
                                                        Константин Галактионович Константинопольский
                                                    </span>
                                                </div>
                                                <div class="book-count">
                                                    (<span class="text"><span class="count">110999</span>
                                                    книг<span class="count-ending"></span></span>)
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="book-publish-date">
                                    26 Янв 2016
                                </div>

<jsp:include page="components/vb/rating-5-stars.jsp"/>

<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>

<c:set var="priceUnderBookValue" value="20" scope="request"/>
<c:set var="priceUnderBookCurrency" value="руб" scope="request"/>
<jsp:include page="components/vb/price-under-book.jsp"/>
                            </div>
                        </div>
                        <!-- END (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->

                        <!-- START (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->
                        <!-- Доп.класс hidden-author нужен для страницы "Автора" (author), чтобы скрыть имя автора и общее количество его книг -->
                        <div class="book-with-cover-and-summary ">
                            <a class="book-cover" href="${currentURI}#">
                                <img src="resources/vb/img/tmp/book-3.jpg" width="230" height="368">
                            </a>

                            <div class="book-summary">
                                <div class="book-title-and-author">
                                    <!-- В бабле ниже блок main повторяется один в один (копи-паст) -->
                                    <div class="main">
                                        <a class="book-title" href="${currentURI}#">
                                            <span class="text">
                                                Древняя Русь в картинках
                                            </span>
                                        </a>
                                        <a class="book-author" href="${currentURI}#">
                                            <div class="author-name">
                                                <span class="text">
                                                    А.А. Иванов
                                                </span>
                                            </div>
                                            <div class="book-count">
                                                (<span class="text"><span class="count">14</span>
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
                                                    Древняя Русь в картинках
                                                </span>
                                            </a>
                                            <a class="book-author" href="${currentURI}#">
                                                <div class="author-name">
                                                    <span class="text">
                                                        А.А. Иванов
                                                    </span>
                                                </div>
                                                <div class="book-count">
                                                    (<span class="text"><span class="count">3</span>
                                                    книг<span class="count-ending"></span></span>)
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="book-publish-date">
                                    26 Янв 2016
                                </div>

<jsp:include page="components/vb/rating-5-stars.jsp"/>

<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>

<c:set var="priceUnderBookValue" value="Бесплатно" scope="request"/>
<c:set var="priceUnderBookCurrency" value="" scope="request"/>
<jsp:include page="components/vb/price-under-book.jsp"/>
                            </div>
                        </div>
                        <!-- END (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->

                        <!-- START (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->
                        <!-- Доп.класс hidden-author нужен для страницы "Автора" (author), чтобы скрыть имя автора и общее количество его книг -->
                        <div class="book-with-cover-and-summary ">
                            <a class="book-cover" href="${currentURI}#">
                                <img src="resources/vb/img/tmp/book-1.jpg" width="230" height="368">
                            </a>

                            <div class="book-summary">
                                <div class="book-title-and-author">
                                    <!-- В бабле ниже блок main повторяется один в один (копи-паст) -->
                                    <div class="main">
                                        <a class="book-title" href="${currentURI}#">
                                            <span class="text">
                                                Древняя Русь в картинках
                                            </span>
                                        </a>
                                        <a class="book-author" href="${currentURI}#">
                                            <div class="author-name">
                                                <span class="text">
                                                    А.А. Иванов
                                                </span>
                                            </div>
                                            <div class="book-count">
                                                (<span class="text"><span class="count">40</span>
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
                                                    Древняя Русь в картинках
                                                </span>
                                            </a>
                                            <a class="book-author" href="${currentURI}#">
                                                <div class="author-name">
                                                    <span class="text">
                                                        А.А. Иванов
                                                    </span>
                                                </div>
                                                <div class="book-count">
                                                    (<span class="text"><span class="count">40</span>
                                                    книг<span class="count-ending"></span></span>)
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="book-publish-date">
                                    26 Янв 2016
                                </div>

<jsp:include page="components/vb/rating-5-stars.jsp"/>

<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>

<c:set var="priceUnderBookValue" value="20" scope="request"/>
<c:set var="priceUnderBookCurrency" value="руб" scope="request"/>
<jsp:include page="components/vb/price-under-book.jsp"/>
                            </div>
                        </div>
                        <!-- END (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->

                        <!-- START (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->
                        <!-- Доп.класс hidden-author нужен для страницы "Автора" (author), чтобы скрыть имя автора и общее количество его книг -->
                        <div class="book-with-cover-and-summary ">
                            <a class="book-cover" href="${currentURI}#">
                                <img src="resources/vb/img/tmp/book-2.jpg" width="230" height="368">
                            </a>

                            <div class="book-summary">
                                <div class="book-title-and-author">
                                    <!-- В бабле ниже блок main повторяется один в один (копи-паст) -->
                                    <div class="main">
                                        <a class="book-title" href="${currentURI}#">
                                            <span class="text">
                                                Древняя Русь в картинках
                                            </span>
                                        </a>
                                        <a class="book-author" href="${currentURI}#">
                                            <div class="author-name">
                                                <span class="text">
                                                    А.А. Иванов
                                                </span>
                                            </div>
                                            <div class="book-count">
                                                (<span class="text"><span class="count">1</span>
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
                                                    Древняя Русь в картинках
                                                </span>
                                            </a>
                                            <a class="book-author" href="${currentURI}#">
                                                <div class="author-name">
                                                    <span class="text">
                                                        А.А. Иванов
                                                    </span>
                                                </div>
                                                <div class="book-count">
                                                    (<span class="text"><span class="count">1</span>
                                                    книг<span class="count-ending"></span></span>)
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="book-publish-date">
                                    26 Янв 2016
                                </div>

<jsp:include page="components/vb/rating-5-stars.jsp"/>

<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>

<c:set var="priceUnderBookValue" value="20" scope="request"/>
<c:set var="priceUnderBookCurrency" value="руб" scope="request"/>
<jsp:include page="components/vb/price-under-book.jsp"/>
                            </div>
                        </div>
                        <!-- END (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->

                        <!-- START (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->
                        <!-- Доп.класс hidden-author нужен для страницы "Автора" (author), чтобы скрыть имя автора и общее количество его книг -->
                        <div class="book-with-cover-and-summary ">
                            <a class="book-cover" href="${currentURI}#">
                                <img src="resources/vb/img/tmp/book-3.jpg" width="230" height="368">
                            </a>

                            <div class="book-summary">
                                <div class="book-title-and-author">
                                    <!-- В бабле ниже блок main повторяется один в один (копи-паст) -->
                                    <div class="main">
                                        <a class="book-title" href="${currentURI}#">
                                            <span class="text">
                                                Древняя Русь в картинках
                                            </span>
                                        </a>
                                        <a class="book-author" href="${currentURI}#">
                                            <div class="author-name">
                                                <span class="text">
                                                    А.А. Иванов
                                                </span>
                                            </div>
                                            <div class="book-count">
                                                (<span class="text"><span class="count">4</span>
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
                                                    Древняя Русь в картинках
                                                </span>
                                            </a>
                                            <a class="book-author" href="${currentURI}#">
                                                <div class="author-name">
                                                    <span class="text">
                                                        А.А. Иванов
                                                    </span>
                                                </div>
                                                <div class="book-count">
                                                    (<span class="text"><span class="count">4</span>
                                                    книг<span class="count-ending"></span></span>)
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="book-publish-date">
                                    26 Янв 2016
                                </div>

<jsp:include page="components/vb/rating-5-stars.jsp"/>

<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>

<c:set var="priceUnderBookValue" value="Бесплатно" scope="request"/>
<c:set var="priceUnderBookCurrency" value="" scope="request"/>
<jsp:include page="components/vb/price-under-book.jsp"/>
                            </div>
                        </div>
                        <!-- END (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->

                        <!-- START (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->
                        <!-- Доп.класс hidden-author нужен для страницы "Автора" (author), чтобы скрыть имя автора и общее количество его книг -->
                        <div class="book-with-cover-and-summary ">
                            <a class="book-cover" href="${currentURI}#">
                                <img src="resources/vb/img/tmp/book-4.jpg" width="230" height="368">
                            </a>

                            <div class="book-summary">
                                <div class="book-title-and-author">
                                    <!-- В бабле ниже блок main повторяется один в один (копи-паст) -->
                                    <div class="main">
                                        <a class="book-title" href="${currentURI}#">
                                            <span class="text">
                                                Древняя Русь в картинках
                                            </span>
                                        </a>
                                        <a class="book-author" href="${currentURI}#">
                                            <div class="author-name">
                                                <span class="text">
                                                    А.А. Иванов
                                                </span>
                                            </div>
                                            <div class="book-count">
                                                (<span class="text"><span class="count">9</span>
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
                                                    Древняя Русь в картинках
                                                </span>
                                            </a>
                                            <a class="book-author" href="${currentURI}#">
                                                <div class="author-name">
                                                    <span class="text">
                                                        А.А. Иванов
                                                    </span>
                                                </div>
                                                <div class="book-count">
                                                    (<span class="text"><span class="count">9</span>
                                                    книг<span class="count-ending"></span></span>)
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="book-publish-date">
                                    26 Янв 2016
                                </div>

<jsp:include page="components/vb/rating-5-stars.jsp"/>

<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>

<c:set var="priceUnderBookValue" value="20" scope="request"/>
<c:set var="priceUnderBookCurrency" value="руб" scope="request"/>
<jsp:include page="components/vb/price-under-book.jsp"/>
                            </div>
                        </div>
                        <!-- END (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->

                        <!-- START (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->
                        <!-- Доп.класс hidden-author нужен для страницы "Автора" (author), чтобы скрыть имя автора и общее количество его книг -->
                        <div class="book-with-cover-and-summary ">
                            <a class="book-cover" href="${currentURI}#">
                                <img src="resources/vb/img/tmp/book-5.jpg" width="230" height="368">
                            </a>

                            <div class="book-summary">
                                <div class="book-title-and-author">
                                    <!-- В бабле ниже блок main повторяется один в один (копи-паст) -->
                                    <div class="main">
                                        <a class="book-title" href="${currentURI}#">
                                            <span class="text">
                                                Древняя Русь в картинках
                                            </span>
                                        </a>
                                        <a class="book-author" href="${currentURI}#">
                                            <div class="author-name">
                                                <span class="text">
                                                    А.А. Иванов
                                                </span>
                                            </div>
                                            <div class="book-count">
                                                (<span class="text"><span class="count">21</span>
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
                                                    Древняя Русь в картинках
                                                </span>
                                            </a>
                                            <a class="book-author" href="${currentURI}#">
                                                <div class="author-name">
                                                    <span class="text">
                                                        А.А. Иванов
                                                    </span>
                                                </div>
                                                <div class="book-count">
                                                    (<span class="text"><span class="count">21</span>
                                                    книг<span class="count-ending"></span></span>)
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="book-publish-date">
                                    26 Янв 2016
                                </div>

<jsp:include page="components/vb/rating-5-stars.jsp"/>

<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>

<c:set var="priceUnderBookValue" value="20" scope="request"/>
<c:set var="priceUnderBookCurrency" value="руб" scope="request"/>
<jsp:include page="components/vb/price-under-book.jsp"/>
                            </div>
                        </div>
                        <!-- END (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->

                        <!-- START (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->
                        <!-- Доп.класс hidden-author нужен для страницы "Автора" (author), чтобы скрыть имя автора и общее количество его книг -->
                        <div class="book-with-cover-and-summary ">
                            <a class="book-cover" href="${currentURI}#">
                                <img src="resources/vb/img/tmp/book-3.jpg" width="230" height="368">
                            </a>

                            <div class="book-summary">
                                <div class="book-title-and-author">
                                    <!-- В бабле ниже блок main повторяется один в один (копи-паст) -->
                                    <div class="main">
                                        <a class="book-title" href="${currentURI}#">
                                            <span class="text">
                                                Древняя Русь в картинках
                                            </span>
                                        </a>
                                        <a class="book-author" href="${currentURI}#">
                                            <div class="author-name">
                                                <span class="text">
                                                    А.А. Иванов
                                                </span>
                                            </div>
                                            <div class="book-count">
                                                (<span class="text"><span class="count">14</span>
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
                                                    Древняя Русь в картинках
                                                </span>
                                            </a>
                                            <a class="book-author" href="${currentURI}#">
                                                <div class="author-name">
                                                    <span class="text">
                                                        А.А. Иванов
                                                    </span>
                                                </div>
                                                <div class="book-count">
                                                    (<span class="text"><span class="count">3</span>
                                                    книг<span class="count-ending"></span></span>)
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="book-publish-date">
                                    26 Янв 2016
                                </div>

<jsp:include page="components/vb/rating-5-stars.jsp"/>

<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>

<c:set var="priceUnderBookValue" value="Бесплатно" scope="request"/>
<c:set var="priceUnderBookCurrency" value="" scope="request"/>
<jsp:include page="components/vb/price-under-book.jsp"/>
                            </div>
                        </div>
                        <!-- END (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->

                        <!-- START (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->
                        <!-- Доп.класс hidden-author нужен для страницы "Автора" (author), чтобы скрыть имя автора и общее количество его книг -->
                        <div class="book-with-cover-and-summary ">
                            <a class="book-cover" href="${currentURI}#">
                                <img src="resources/vb/img/tmp/book-2.jpg" width="230" height="368">
                            </a>

                            <div class="book-summary">
                                <div class="book-title-and-author">
                                    <!-- В бабле ниже блок main повторяется один в один (копи-паст) -->
                                    <div class="main">
                                        <a class="book-title" href="${currentURI}#">
                                            <span class="text">
                                                Древняя Русь в картинках
                                            </span>
                                        </a>
                                        <a class="book-author" href="${currentURI}#">
                                            <div class="author-name">
                                                <span class="text">
                                                    А.А. Иванов
                                                </span>
                                            </div>
                                            <div class="book-count">
                                                (<span class="text"><span class="count">1</span>
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
                                                    Древняя Русь в картинках
                                                </span>
                                            </a>
                                            <a class="book-author" href="${currentURI}#">
                                                <div class="author-name">
                                                    <span class="text">
                                                        А.А. Иванов
                                                    </span>
                                                </div>
                                                <div class="book-count">
                                                    (<span class="text"><span class="count">1</span>
                                                    книг<span class="count-ending"></span></span>)
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="book-publish-date">
                                    26 Янв 2016
                                </div>

<jsp:include page="components/vb/rating-5-stars.jsp"/>

<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>

<c:set var="priceUnderBookValue" value="20" scope="request"/>
<c:set var="priceUnderBookCurrency" value="руб" scope="request"/>
<jsp:include page="components/vb/price-under-book.jsp"/>
                            </div>
                        </div>
                        <!-- END (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->

                        <!-- START (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->
                        <!-- Доп.класс hidden-author нужен для страницы "Автора" (author), чтобы скрыть имя автора и общее количество его книг -->
                        <div class="book-with-cover-and-summary ">
                            <a class="book-cover" href="${currentURI}#">
                                <img src="resources/vb/img/tmp/book-3.jpg" width="230" height="368">
                            </a>

                            <div class="book-summary">
                                <div class="book-title-and-author">
                                    <!-- В бабле ниже блок main повторяется один в один (копи-паст) -->
                                    <div class="main">
                                        <a class="book-title" href="${currentURI}#">
                                            <span class="text">
                                                Древняя Русь в картинках
                                            </span>
                                        </a>
                                        <a class="book-author" href="${currentURI}#">
                                            <div class="author-name">
                                                <span class="text">
                                                    А.А. Иванов
                                                </span>
                                            </div>
                                            <div class="book-count">
                                                (<span class="text"><span class="count">4</span>
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
                                                    Древняя Русь в картинках
                                                </span>
                                            </a>
                                            <a class="book-author" href="${currentURI}#">
                                                <div class="author-name">
                                                    <span class="text">
                                                        А.А. Иванов
                                                    </span>
                                                </div>
                                                <div class="book-count">
                                                    (<span class="text"><span class="count">4</span>
                                                    книг<span class="count-ending"></span></span>)
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="book-publish-date">
                                    26 Янв 2016
                                </div>

<jsp:include page="components/vb/rating-5-stars.jsp"/>

<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>

<c:set var="priceUnderBookValue" value="Бесплатно" scope="request"/>
<c:set var="priceUnderBookCurrency" value="" scope="request"/>
<jsp:include page="components/vb/price-under-book.jsp"/>
                            </div>
                        </div>
                        <!-- END (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->

                        <!-- START (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->
                        <!-- Доп.класс hidden-author нужен для страницы "Автора" (author), чтобы скрыть имя автора и общее количество его книг -->
                        <div class="book-with-cover-and-summary ">
                            <a class="book-cover" href="${currentURI}#">
                                <img src="resources/vb/img/tmp/book-4.jpg" width="230" height="368">
                            </a>

                            <div class="book-summary">
                                <div class="book-title-and-author">
                                    <!-- В бабле ниже блок main повторяется один в один (копи-паст) -->
                                    <div class="main">
                                        <a class="book-title" href="${currentURI}#">
                                            <span class="text">
                                                Древняя Русь в картинках
                                            </span>
                                        </a>
                                        <a class="book-author" href="${currentURI}#">
                                            <div class="author-name">
                                                <span class="text">
                                                    А.А. Иванов
                                                </span>
                                            </div>
                                            <div class="book-count">
                                                (<span class="text"><span class="count">9</span>
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
                                                    Древняя Русь в картинках
                                                </span>
                                            </a>
                                            <a class="book-author" href="${currentURI}#">
                                                <div class="author-name">
                                                    <span class="text">
                                                        А.А. Иванов
                                                    </span>
                                                </div>
                                                <div class="book-count">
                                                    (<span class="text"><span class="count">9</span>
                                                    книг<span class="count-ending"></span></span>)
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="book-publish-date">
                                    26 Янв 2016
                                </div>

<jsp:include page="components/vb/rating-5-stars.jsp"/>

<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>

<c:set var="priceUnderBookValue" value="20" scope="request"/>
<c:set var="priceUnderBookCurrency" value="руб" scope="request"/>
<jsp:include page="components/vb/price-under-book.jsp"/>
                            </div>
                        </div>
                        <!-- END (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->
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
                            <!-- START (Оглавление книги) -->
                            <!-- Если на странице несколько таких элементов, то нужно обеспечить уникальность имен групп radio-кнопок (name), уникальность их id-ков и соответствующих for-ов у label-ов -->
                            <div class="book-toc">
                                <h2 class="row row-1">Оглавление</h2>

                                <!--
                                <input type="radio" name="chapter" class="chapter chapter-1" value="1" id="chapter-1">
                                <input type="radio" name="chapter" class="chapter chapter-2" value="2" id="chapter-2">
                                <input type="radio" name="chapter" class="chapter chapter-3" value="3" id="chapter-3">
                                <input type="radio" name="chapter" class="chapter chapter-4" value="4" id="chapter-4">
                                <input type="radio" name="chapter" class="chapter chapter-5" value="5" id="chapter-5">
                                <input type="radio" name="chapter" class="chapter chapter-6" value="6" id="chapter-6">
                                <input type="radio" name="chapter" class="chapter chapter-7" value="7" id="chapter-7">
                                <input type="radio" name="chapter" class="chapter chapter-8" value="8" id="chapter-8">
                                <input type="radio" name="chapter" class="chapter chapter-9" value="9" id="chapter-9">
                                <input type="radio" name="chapter" class="chapter chapter-10" value="10" id="chapter-10">
                                -->
                                <ul class="row row-2 level level-1">
                                    <li>
                                        <label class="text-dots-page chapter-1"> <!--for="chapter-1"-->
                                            <div class="chapter">
                                                <span class="text">
                                                    Рубрикация
                                                </span>
                                                <span class="page">
                                                    1
                                                </span>
                                            </div>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="text-dots-page chapter-2"> <!--for="chapter-2"-->
                                            <div class="chapter">
                                                <span class="text">
                                                    Названия (употребление прописных букв, кавычек, слитное, дефисное, раздельное написание)
                                                </span>
                                                <span class="page">
                                                    2
                                                </span>
                                            </div>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="text-dots-page chapter-3"> <!--for="chapter-3"-->
                                            <div class="chapter">
                                                <span class="text">
                                                    Текст
                                                </span>
                                                <span class="page">
                                                    3
                                                </span>
                                            </div>
                                        </label>
                                        <ul class="level level-2">
                                            <li>
                                                <label class="text-dots-page chapter-4"> <!--for="chapter-4"-->
                                                    <div class="chapter">
                                                        <span class="text">
                                                            Рубрикация
                                                        </span>
                                                        <span class="page">
                                                            4
                                                        </span>
                                                    </div>
                                                </label>
                                            </li>
                                            <li>
                                                <label class="text-dots-page chapter-5"> <!--for="chapter-5"-->
                                                    <div class="chapter">
                                                        <span class="text">
                                                            Названия (употребление прописных букв, кавычек, слитное, дефисное, раздельное написание)
                                                        </span>
                                                        <span class="page">
                                                            5
                                                        </span>
                                                    </div>
                                                </label>
                                            </li>
                                            <li>
                                                <label class="text-dots-page chapter-6"> <!--for="chapter-6"-->
                                                    <div class="chapter">
                                                        <span class="text">
                                                            Числа и знаки
                                                        </span>
                                                        <span class="page">
                                                            6
                                                        </span>
                                                    </div>
                                                </label>
                                                <ul class="level level-3">
                                                    <li>
                                                        <label class="text-dots-page chapter-7"> <!--for="chapter-7"-->
                                                            <div class="chapter">
                                                                <span class="text">
                                                                    Рубрикация
                                                                </span>
                                                                <span class="page">
                                                                    7
                                                                </span>
                                                            </div>
                                                        </label>
                                                    </li>
                                                    <li>
                                                        <label class="text-dots-page chapter-8"> <!--for="chapter-8"-->
                                                            <div class="chapter">
                                                                <span class="text">
                                                                    Названия (употребление прописных букв, кавычек, слитное, дефисное, раздельное написание)
                                                                </span>
                                                                <span class="page">
                                                                    8
                                                                </span>
                                                            </div>
                                                        </label>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <label class="text-dots-page chapter-9"> <!--for="chapter-9"-->
                                                    <div class="chapter">
                                                        <span class="text">
                                                            Числа и знаки
                                                        </span>
                                                        <span class="page">
                                                            9
                                                        </span>
                                                    </div>
                                                </label>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <label class="text-dots-page chapter-10"> <!--for="chapter-10"-->
                                            <div class="chapter">
                                                <span class="text">
                                                    Числа и знаки
                                                </span>
                                                <span class="page">
                                                    10
                                                </span>
                                            </div>
                                        </label>
                                    </li>
                                </ul>
                            </div>
                            <!-- END (Оглавление книги) -->
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
                            <!-- START (Оглавление книги) -->
                            <!-- Если на странице несколько таких элементов, то нужно обеспечить уникальность имен групп radio-кнопок (name), уникальность их id-ков и соответствующих for-ов у label-ов -->
                            <div class="book-toc">
                                <h2 class="row row-1">Оглавление</h2>

                                <input type="radio" name="chapter" class="chapter chapter-1" value="1" id="chapter-1">
                                <input type="radio" name="chapter" class="chapter chapter-2" value="2" id="chapter-2">
                                <input type="radio" name="chapter" class="chapter chapter-3" value="3" id="chapter-3">
                                <input type="radio" name="chapter" class="chapter chapter-4" value="4" id="chapter-4">
                                <input type="radio" name="chapter" class="chapter chapter-5" value="5" id="chapter-5">
                                <input type="radio" name="chapter" class="chapter chapter-6" value="6" id="chapter-6">
                                <input type="radio" name="chapter" class="chapter chapter-7" value="7" id="chapter-7">
                                <input type="radio" name="chapter" class="chapter chapter-8" value="8" id="chapter-8">
                                <input type="radio" name="chapter" class="chapter chapter-9" value="9" id="chapter-9">
                                <input type="radio" name="chapter" class="chapter chapter-10" value="10" id="chapter-10">
                                <ul class="row row-2 level level-1">
                                    <li>
                                        <label class="text-dots-page chapter-1" for="chapter-1">
                                            <div class="chapter">
                                                <span class="text">
                                                    Рубрикация
                                                </span>
                                                <span class="page">
                                                    1
                                                </span>
                                            </div>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="text-dots-page chapter-2" for="chapter-2">
                                            <div class="chapter">
                                                <span class="text">
                                                    Названия (употребление прописных букв, кавычек, слитное, дефисное, раздельное написание)
                                                </span>
                                                <span class="page">
                                                    2
                                                </span>
                                            </div>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="text-dots-page chapter-3" for="chapter-3">
                                            <div class="chapter">
                                                <span class="text">
                                                    Текст
                                                </span>
                                                <span class="page">
                                                    3
                                                </span>
                                            </div>
                                        </label>
                                        <ul class="level level-2">
                                            <li>
                                                <label class="text-dots-page chapter-4" for="chapter-4">
                                                    <div class="chapter">
                                                        <span class="text">
                                                            Рубрикация
                                                        </span>
                                                        <span class="page">
                                                            4
                                                        </span>
                                                    </div>
                                                </label>
                                            </li>
                                            <li>
                                                <label class="text-dots-page chapter-5" for="chapter-5">
                                                    <div class="chapter">
                                                        <span class="text">
                                                            Названия (употребление прописных букв, кавычек, слитное, дефисное, раздельное написание)
                                                        </span>
                                                        <span class="page">
                                                            5
                                                        </span>
                                                    </div>
                                                </label>
                                            </li>
                                            <li>
                                                <label class="text-dots-page chapter-6" for="chapter-6">
                                                    <div class="chapter">
                                                        <span class="text">
                                                            Числа и знаки
                                                        </span>
                                                        <span class="page">
                                                            6
                                                        </span>
                                                    </div>
                                                </label>
                                                <ul class="level level-3">
                                                    <li>
                                                        <label class="text-dots-page chapter-7" for="chapter-7">
                                                            <div class="chapter">
                                                                <span class="text">
                                                                    Рубрикация
                                                                </span>
                                                                <span class="page">
                                                                    7
                                                                </span>
                                                            </div>
                                                        </label>
                                                    </li>
                                                    <li>
                                                        <label class="text-dots-page chapter-8" for="chapter-8">
                                                            <div class="chapter">
                                                                <span class="text">
                                                                    Названия (употребление прописных букв, кавычек, слитное, дефисное, раздельное написание)
                                                                </span>
                                                                <span class="page">
                                                                    8
                                                                </span>
                                                            </div>
                                                        </label>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <label class="text-dots-page chapter-9" for="chapter-9">
                                                    <div class="chapter">
                                                        <span class="text">
                                                            Числа и знаки
                                                        </span>
                                                        <span class="page">
                                                            9
                                                        </span>
                                                    </div>
                                                </label>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <label class="text-dots-page chapter-10" for="chapter-10">
                                            <div class="chapter">
                                                <span class="text">
                                                    Числа и знаки
                                                </span>
                                                <span class="page">
                                                    10
                                                </span>
                                            </div>
                                        </label>
                                    </li>
                                </ul>
                            </div>
                            <!-- END (Оглавление книги) -->
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