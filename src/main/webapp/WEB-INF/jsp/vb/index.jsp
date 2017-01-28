<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

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
                    <a href="${currentURI}#">
                        <img class="slide slide1" src="resources/vb/img/index/main-banner-1.jpg" width="1247" height="340">
                    </a>
                    <a href="${currentURI}#">
                        <img class="slide slide2" src="resources/vb/img/index/main-banner-2.jpg" width="1247" height="340">
                    </a>
                    <a href="${currentURI}#">
                        <img class="slide slide3" src="resources/vb/img/index/main-banner-3.jpg" width="1247" height="340">
                    </a>
                    <a href="${currentURI}#">
                        <img class="slide slide4" src="resources/vb/img/index/main-banner-4.jpg" width="1247" height="340">
                    </a>
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

                            <!-- START (Выбор типа сортировки) -->
                            <!-- Если на странице несколько таких элементов, то нужно обеспечить уникальность имен групп radio-кнопок (name), уникальность их id-ков и соответствующих for-ов у label-ов -->
                            <div class="sort-by">
                                <span class="title">Сортировать:</span>
                                <input type="radio" name="best-sellers-sort-link" class="sort-link-1" id="best-sellers-sort-link-1" checked />
                                <input type="radio" name="best-sellers-sort-link" class="sort-link-2" id="best-sellers-sort-link-2" />
                                <input type="radio" name="best-sellers-sort-link" class="sort-link-3" id="best-sellers-sort-link-3" />
                                <input type="radio" name="best-sellers-sort-link" class="sort-link-4" id="best-sellers-sort-link-4" />
                                <div class="sort-links">
                                    <label class="sort-link sort-link-1" for="best-sellers-sort-link-1">
                                        <span class="text">по популярности</span>
                                        <input type="radio" name="best-sellers-sort-direction-1" class="asc" id="best-sellers-asc-sort-direction-1" >
                                        <input type="radio" name="best-sellers-sort-direction-1" class="desc" id="best-sellers-desc-sort-direction-1" checked>
                                        <div class="asc-desc">
                                            <label class="asc" for="best-sellers-asc-sort-direction-1"></label>
                                            <label class="desc" for="best-sellers-desc-sort-direction-1"></label>
                                        </div>
                                    </label>
                                    <label class="sort-link sort-link-2" for="best-sellers-sort-link-2">
                                        <span class="text">по рейтингу</span>
                                        <input type="radio" name="best-sellers-sort-direction-2" class="asc" id="best-sellers-asc-sort-direction-2" >
                                        <input type="radio" name="best-sellers-sort-direction-2" class="desc" id="best-sellers-desc-sort-direction-2" checked>
                                        <div class="asc-desc">
                                            <label class="asc" for="best-sellers-asc-sort-direction-2"></label>
                                            <label class="desc" for="best-sellers-desc-sort-direction-2"></label>
                                        </div>
                                    </label>
                                    <label class="sort-link sort-link-3" for="best-sellers-sort-link-3">
                                        <span class="text">по дате публикации</span>
                                        <input type="radio" name="best-sellers-sort-direction-3" class="asc" id="best-sellers-asc-sort-direction-3" >
                                        <input type="radio" name="best-sellers-sort-direction-3" class="desc" id="best-sellers-desc-sort-direction-3" checked>
                                        <div class="asc-desc">
                                            <label class="asc" for="best-sellers-asc-sort-direction-3"></label>
                                            <label class="desc" for="best-sellers-desc-sort-direction-3"></label>
                                        </div>
                                    </label>
                                    <label class="sort-link sort-link-4" for="best-sellers-sort-link-4">
                                        <span class="text">по цене</span>
                                        <input type="radio" name="best-sellers-sort-direction-4" class="asc" id="best-sellers-asc-sort-direction-4" checked>
                                        <input type="radio" name="best-sellers-sort-direction-4" class="desc" id="best-sellers-desc-sort-direction-4" >
                                        <div class="asc-desc">
                                            <label class="asc" for="best-sellers-asc-sort-direction-4"></label>
                                            <label class="desc" for="best-sellers-desc-sort-direction-4"></label>
                                        </div>
                                    </label>
                                </div>
                            </div>
                            <!-- END (Выбор типа сортировки) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        12000
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        12000
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">20</span>
                                                    <span class="currency">руб</span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">20</span>
                                                    <span class="currency">руб</span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book free">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">Бесплатно</span>
                                                    <span class="currency"></span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">20</span>
                                                    <span class="currency">руб</span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">20</span>
                                                    <span class="currency">руб</span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book free">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">Бесплатно</span>
                                                    <span class="currency"></span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">20</span>
                                                    <span class="currency">руб</span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">20</span>
                                                    <span class="currency">руб</span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book free">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">Бесплатно</span>
                                                    <span class="currency"></span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">20</span>
                                                    <span class="currency">руб</span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">20</span>
                                                    <span class="currency">руб</span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book free">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">Бесплатно</span>
                                                    <span class="currency"></span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">20</span>
                                                    <span class="currency">руб</span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book free">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">Бесплатно</span>
                                                    <span class="currency"></span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">20</span>
                                                    <span class="currency">руб</span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
                                            </div>
                                        </div>
                                        <!-- END (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->
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

                            <!-- START (Выбор типа сортировки) -->
                            <!-- Если на странице несколько таких элементов, то нужно обеспечить уникальность имен групп radio-кнопок (name), уникальность их id-ков и соответствующих for-ов у label-ов -->
                            <div class="sort-by">
                                <span class="title">Сортировать:</span>
                                <input type="radio" name="new-books-sort-link" class="sort-link-1" id="new-books-sort-link-1" checked />
                                <input type="radio" name="new-books-sort-link" class="sort-link-2" id="new-books-sort-link-2" />
                                <input type="radio" name="new-books-sort-link" class="sort-link-3" id="new-books-sort-link-3" />
                                <input type="radio" name="new-books-sort-link" class="sort-link-4" id="new-books-sort-link-4" />
                                <div class="sort-links">
                                    <label class="sort-link sort-link-1" for="new-books-sort-link-1">
                                        <span class="text">по популярности</span>
                                        <input type="radio" name="new-books-sort-direction-1" class="asc" id="new-books-asc-sort-direction-1" >
                                        <input type="radio" name="new-books-sort-direction-1" class="desc" id="new-books-desc-sort-direction-1" checked>
                                        <div class="asc-desc">
                                            <label class="asc" for="new-books-asc-sort-direction-1"></label>
                                            <label class="desc" for="new-books-desc-sort-direction-1"></label>
                                        </div>
                                    </label>
                                    <label class="sort-link sort-link-2" for="new-books-sort-link-2">
                                        <span class="text">по рейтингу</span>
                                        <input type="radio" name="new-books-sort-direction-2" class="asc" id="new-books-asc-sort-direction-2" >
                                        <input type="radio" name="new-books-sort-direction-2" class="desc" id="new-books-desc-sort-direction-2" checked>
                                        <div class="asc-desc">
                                            <label class="asc" for="new-books-asc-sort-direction-2"></label>
                                            <label class="desc" for="new-books-desc-sort-direction-2"></label>
                                        </div>
                                    </label>
                                    <label class="sort-link sort-link-3" for="new-books-sort-link-3">
                                        <span class="text">по дате публикации</span>
                                        <input type="radio" name="new-books-sort-direction-3" class="asc" id="new-books-asc-sort-direction-3" >
                                        <input type="radio" name="new-books-sort-direction-3" class="desc" id="new-books-desc-sort-direction-3" checked>
                                        <div class="asc-desc">
                                            <label class="asc" for="new-books-asc-sort-direction-3"></label>
                                            <label class="desc" for="new-books-desc-sort-direction-3"></label>
                                        </div>
                                    </label>
                                    <label class="sort-link sort-link-4" for="new-books-sort-link-4">
                                        <span class="text">по цене</span>
                                        <input type="radio" name="new-books-sort-direction-4" class="asc" id="new-books-asc-sort-direction-4" checked>
                                        <input type="radio" name="new-books-sort-direction-4" class="desc" id="new-books-desc-sort-direction-4" >
                                        <div class="asc-desc">
                                            <label class="asc" for="new-books-asc-sort-direction-4"></label>
                                            <label class="desc" for="new-books-desc-sort-direction-4"></label>
                                        </div>
                                    </label>
                                </div>
                            </div>
                            <!-- END (Выбор типа сортировки) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        12000
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        12000
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">20</span>
                                                    <span class="currency">руб</span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">20</span>
                                                    <span class="currency">руб</span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book free">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">Бесплатно</span>
                                                    <span class="currency"></span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">20</span>
                                                    <span class="currency">руб</span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">20</span>
                                                    <span class="currency">руб</span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book free">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">Бесплатно</span>
                                                    <span class="currency"></span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">20</span>
                                                    <span class="currency">руб</span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">20</span>
                                                    <span class="currency">руб</span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book free">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">Бесплатно</span>
                                                    <span class="currency"></span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">20</span>
                                                    <span class="currency">руб</span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">20</span>
                                                    <span class="currency">руб</span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book free">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">Бесплатно</span>
                                                    <span class="currency"></span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">20</span>
                                                    <span class="currency">руб</span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book free">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">Бесплатно</span>
                                                    <span class="currency"></span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">20</span>
                                                    <span class="currency">руб</span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
                                            </div>
                                        </div>
                                        <!-- END (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->
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

                            <!-- START (Выбор типа сортировки) -->
                            <!-- Если на странице несколько таких элементов, то нужно обеспечить уникальность имен групп radio-кнопок (name), уникальность их id-ков и соответствующих for-ов у label-ов -->
                            <div class="sort-by">
                                <span class="title">Сортировать:</span>
                                <input type="radio" name="highest-rating-sort-link" class="sort-link-1" id="highest-rating-sort-link-1" checked />
                                <input type="radio" name="highest-rating-sort-link" class="sort-link-2" id="highest-rating-sort-link-2" />
                                <input type="radio" name="highest-rating-sort-link" class="sort-link-3" id="highest-rating-sort-link-3" />
                                <input type="radio" name="highest-rating-sort-link" class="sort-link-4" id="highest-rating-sort-link-4" />
                                <div class="sort-links">
                                    <label class="sort-link sort-link-1" for="highest-rating-sort-link-1">
                                        <span class="text">по популярности</span>
                                        <input type="radio" name="highest-rating-sort-direction-1" class="asc" id="highest-rating-asc-sort-direction-1" >
                                        <input type="radio" name="highest-rating-sort-direction-1" class="desc" id="highest-rating-desc-sort-direction-1" checked>
                                        <div class="asc-desc">
                                            <label class="asc" for="highest-rating-asc-sort-direction-1"></label>
                                            <label class="desc" for="highest-rating-desc-sort-direction-1"></label>
                                        </div>
                                    </label>
                                    <label class="sort-link sort-link-2" for="highest-rating-sort-link-2">
                                        <span class="text">по рейтингу</span>
                                        <input type="radio" name="highest-rating-sort-direction-2" class="asc" id="highest-rating-asc-sort-direction-2" >
                                        <input type="radio" name="highest-rating-sort-direction-2" class="desc" id="highest-rating-desc-sort-direction-2" checked>
                                        <div class="asc-desc">
                                            <label class="asc" for="highest-rating-asc-sort-direction-2"></label>
                                            <label class="desc" for="highest-rating-desc-sort-direction-2"></label>
                                        </div>
                                    </label>
                                    <label class="sort-link sort-link-3" for="highest-rating-sort-link-3">
                                        <span class="text">по дате публикации</span>
                                        <input type="radio" name="highest-rating-sort-direction-3" class="asc" id="highest-rating-asc-sort-direction-3" >
                                        <input type="radio" name="highest-rating-sort-direction-3" class="desc" id="highest-rating-desc-sort-direction-3" checked>
                                        <div class="asc-desc">
                                            <label class="asc" for="highest-rating-asc-sort-direction-3"></label>
                                            <label class="desc" for="highest-rating-desc-sort-direction-3"></label>
                                        </div>
                                    </label>
                                    <label class="sort-link sort-link-4" for="highest-rating-sort-link-4">
                                        <span class="text">по цене</span>
                                        <input type="radio" name="highest-rating-sort-direction-4" class="asc" id="highest-rating-asc-sort-direction-4" checked>
                                        <input type="radio" name="highest-rating-sort-direction-4" class="desc" id="highest-rating-desc-sort-direction-4" >
                                        <div class="asc-desc">
                                            <label class="asc" for="highest-rating-asc-sort-direction-4"></label>
                                            <label class="desc" for="highest-rating-desc-sort-direction-4"></label>
                                        </div>
                                    </label>
                                </div>
                            </div>
                            <!-- END (Выбор типа сортировки) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        12000
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        12000
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">20</span>
                                                    <span class="currency">руб</span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">20</span>
                                                    <span class="currency">руб</span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book free">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">Бесплатно</span>
                                                    <span class="currency"></span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">20</span>
                                                    <span class="currency">руб</span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">20</span>
                                                    <span class="currency">руб</span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book free">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">Бесплатно</span>
                                                    <span class="currency"></span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">20</span>
                                                    <span class="currency">руб</span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">20</span>
                                                    <span class="currency">руб</span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book free">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">Бесплатно</span>
                                                    <span class="currency"></span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">20</span>
                                                    <span class="currency">руб</span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">20</span>
                                                    <span class="currency">руб</span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book free">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">Бесплатно</span>
                                                    <span class="currency"></span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">20</span>
                                                    <span class="currency">руб</span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book free">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">Бесплатно</span>
                                                    <span class="currency"></span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
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

                                                <!-- START (5 звезд рейтинга книги) -->
                                                <div class="rating-5-stars">
                                                    <div class="rating-stars"></div>
                                                    <div class="rating-number">2,3</div>
                                                </div>
                                                <!-- END (5 звезд рейтинга книги) -->

                                                <!-- START (Пальчики-лайкчики) -->
                                                <div class="likes">
                                                    <a class="like" href="${currentURI}#">
                                                        1022
                                                    </a>
                                                    <a class="dislike" href="${currentURI}#">
                                                        51
                                                    </a>
                                                </div>
                                                <!-- END (Пальчики-лайкчики) -->

                                                <!-- START (Ценник под книгой) -->
                                                <div class="price-under-book">
                                                    <!-- Если книга отдается за даром, то:
                                                            1) к div добавляется класс free
                                                            2) цена меняется на слово "Бесплатно"
                                                            3) содержимое валюты удаляется
                                                    -->
                                                    <span class="value">20</span>
                                                    <span class="currency">руб</span>
                                                </div>
                                                <!-- END (Ценник под книгой) -->
                                            </div>
                                        </div>
                                        <!-- END (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->
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

                                    <!-- START (Фото автора в маске-обрезалке) -->
                                    <a href="${currentURI}#" class="author-photo">
                                        <img src="resources/vb/img/tmp/photo-1.jpg" width="80" height="80">
                                    </a>
                                    <!-- END (Фото автора в маске-обрезалке) -->

<jsp:include page="components/vb/rating-3-stars.jsp"/>

                                    <!-- START (Пальчики-лайкчики) -->
                                    <div class="likes">
                                        <a class="like" href="${currentURI}#">
                                            1022
                                        </a>
                                        <a class="dislike" href="${currentURI}#">
                                            51
                                        </a>
                                    </div>
                                    <!-- END (Пальчики-лайкчики) -->
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

                                    <!-- START (Фото автора в маске-обрезалке) -->
                                    <a href="${currentURI}#" class="author-photo">
                                        <img src="resources/vb/img/tmp/photo-2.jpg" width="80" height="80">
                                    </a>
                                    <!-- END (Фото автора в маске-обрезалке) -->

<jsp:include page="components/vb/rating-3-stars.jsp"/>

                                    <!-- START (Пальчики-лайкчики) -->
                                    <div class="likes">
                                        <a class="like" href="${currentURI}#">
                                            1022
                                        </a>
                                        <a class="dislike" href="${currentURI}#">
                                            51
                                        </a>
                                    </div>
                                    <!-- END (Пальчики-лайкчики) -->
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

                                    <!-- START (Фото автора в маске-обрезалке) -->
                                    <a href="${currentURI}#" class="author-photo">
                                        <img src="resources/vb/img/tmp/photo-3.jpg" width="80" height="80">
                                    </a>
                                    <!-- END (Фото автора в маске-обрезалке) -->

<jsp:include page="components/vb/rating-3-stars.jsp"/>

                                    <!-- START (Пальчики-лайкчики) -->
                                    <div class="likes">
                                        <a class="like" href="${currentURI}#">
                                            1022
                                        </a>
                                        <a class="dislike" href="${currentURI}#">
                                            51
                                        </a>
                                    </div>
                                    <!-- END (Пальчики-лайкчики) -->
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

                                    <!-- START (Фото автора в маске-обрезалке) -->
                                    <a href="${currentURI}#" class="author-photo">
                                        <img src="resources/vb/img/tmp/photo-4.jpg" width="80" height="80">
                                    </a>
                                    <!-- END (Фото автора в маске-обрезалке) -->

<jsp:include page="components/vb/rating-3-stars.jsp"/>

                                    <!-- START (Пальчики-лайкчики) -->
                                    <div class="likes">
                                        <a class="like" href="${currentURI}#">
                                            1022
                                        </a>
                                        <a class="dislike" href="${currentURI}#">
                                            51
                                        </a>
                                    </div>
                                    <!-- END (Пальчики-лайкчики) -->
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

                                    <!-- START (Фото автора в маске-обрезалке) -->
                                    <a href="${currentURI}#" class="author-photo">
                                        <img src="resources/vb/img/tmp/photo-5.jpg" width="80" height="80">
                                    </a>
                                    <!-- END (Фото автора в маске-обрезалке) -->

<jsp:include page="components/vb/rating-3-stars.jsp"/>

                                    <!-- START (Пальчики-лайкчики) -->
                                    <div class="likes">
                                        <a class="like" href="${currentURI}#">
                                            1022
                                        </a>
                                        <a class="dislike" href="${currentURI}#">
                                            51
                                        </a>
                                    </div>
                                    <!-- END (Пальчики-лайкчики) -->
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

                                    <!-- START (Фото автора в маске-обрезалке) -->
                                    <a href="${currentURI}#" class="author-photo">
                                        <img src="resources/vb/img/tmp/photo-6.jpg" width="80" height="80">
                                    </a>
                                    <!-- END (Фото автора в маске-обрезалке) -->

<jsp:include page="components/vb/rating-3-stars.jsp"/>

                                    <!-- START (Пальчики-лайкчики) -->
                                    <div class="likes">
                                        <a class="like" href="${currentURI}#">
                                            1022
                                        </a>
                                        <a class="dislike" href="${currentURI}#">
                                            51
                                        </a>
                                    </div>
                                    <!-- END (Пальчики-лайкчики) -->
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