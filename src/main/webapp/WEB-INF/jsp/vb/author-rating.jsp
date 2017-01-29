<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="bodyClass" value="hidden-partners-on-shelf" scope="request"/>
<c:set var="mainClass" value="author-rating" scope="request"/>
<c:set var="sloganAdditionalClass" value="" scope="request"/>

<jsp:include page="fragments/header.jsp"/>

            <div class="columns">
                <div class="column column-1">
                    <!-- START (Боковой баннер-фильтр "Выберите категорию") -->
                    <ul class="rating-filter">
                        <li class="rating-filter-header">
                            <h2>Выберите категорию</h2>
                        </li>
                        <li class="rating-filter-group">
                            <h3>Категория 1</h3>
                            <ul class="radios">
                                <label>
                                    <input type="radio" name="radio-group-1" value="1">
                                    <li class="radio">
                                        Досуг и творчество
                                    </li>
                                </label>
                                <label>
                                    <input type="radio" name="radio-group-1" value="2">
                                    <li class="radio">
                                        На какой бумаге печатать книгу и обложку?
                                    </li>
                                </label>
                                <label>
                                    <input type="radio" name="radio-group-1" value="3">
                                    <li class="radio">
                                        Переплет и количество страниц
                                    </li>
                                </label>
                                <label>
                                    <input type="radio" name="radio-group-1" value="4">
                                    <li class="radio">
                                        Твердый переплет
                                    </li>
                                </label>
                                <label>
                                    <input type="radio" name="radio-group-1" value="5">
                                    <li class="radio">
                                        Как определить цену?
                                    </li>
                                </label>
                            </ul>
                        </li>
                        <li class="rating-filter-group">
                            <h3>Категория 2</h3>
                            <ul class="radios">
                                <label>
                                    <input type="radio" name="radio-group-2" value="1">
                                    <li class="radio">
                                        Досуг и творчество
                                    </li>
                                </label>
                                <label>
                                    <input type="radio" name="radio-group-2" value="2">
                                    <li class="radio">
                                        Книги для родителей
                                    </li>
                                </label>
                                <label>
                                    <input type="radio" name="radio-group-2" value="3">
                                    <li class="radio">
                                        Познавательная литература
                                    </li>
                                </label>
                                <label>
                                    <input type="radio" name="radio-group-2" value="4">
                                    <li class="radio">
                                        Художественная литература
                                    </li>
                                </label>
                            </ul>
                        </li>
                        <li class="rating-filter-group">
                            <h3>Категория 3</h3>
                            <ul class="radios">
                                <label>
                                    <input type="radio" name="radio-group-3" value="1">
                                    <li class="radio">
                                        Досуг и творчество
                                    </li>
                                </label>
                                <label>
                                    <input type="radio" name="radio-group-3" value="2">
                                    <li class="radio">
                                        Книги для родителей
                                    </li>
                                </label>
                                <label>
                                    <input type="radio" name="radio-group-3" value="3">
                                    <li class="radio">
                                        Познавательная литература
                                    </li>
                                </label>
                                <label>
                                    <input type="radio" name="radio-group-3" value="4">
                                    <li class="radio">
                                        Художественная литература
                                    </li>
                                </label>
                            </ul>
                        </li>
                        <li class="rating-filter-group">
                            <h3>Категория 4</h3>
                            <ul class="radios">
                                <label>
                                    <input type="radio" name="radio-group-4" value="1">
                                    <li class="radio">
                                        Дошкольникам
                                    </li>
                                </label>
                                <label>
                                    <input type="radio" name="radio-group-4" value="2">
                                    <li class="radio">
                                        Школьникам и абитуриентам
                                    </li>
                                </label>
                                <label>
                                    <input type="radio" name="radio-group-4" value="3">
                                    <li class="radio">
                                        Студентам и аспирантам
                                    </li>
                                </label>
                                <label>
                                    <input type="radio" name="radio-group-4" value="4">
                                    <li class="radio">
                                        Педагогам
                                    </li>
                                </label>
                            </ul>
                        </li>
                        <li class="rating-filter-group">
                            <h3>Категория 5</h3>
                            <ul class="radios">
                                <label>
                                    <input type="radio" name="radio-group-5" value="1">
                                    <li class="radio">
                                        Досуг и творчество
                                    </li>
                                </label>
                                <label>
                                    <input type="radio" name="radio-group-5" value="2">
                                    <li class="radio">
                                        Книги для родителей
                                    </li>
                                </label>
                                <label>
                                    <input type="radio" name="radio-group-5" value="3">
                                    <li class="radio">
                                        Познавательная литература
                                    </li>
                                </label>
                                <label>
                                    <input type="radio" name="radio-group-5" value="4">
                                    <li class="radio">
                                        Художественная литература
                                    </li>
                                </label>
                            </ul>
                        </li>
                    </ul>
                    <!-- END (Боковой баннер-фильтр "Выберите категорию") -->
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

                    <div class="item author">
                        <div class="serial-number">
                            <span class="text">1</span>
                        </div>

                        <!-- START (Фото автора в маске-обрезалке) -->
                        <div class="author-photo">
                            <img src="resources/vb/img/tmp/photo-1.jpg" width="80" height="80">
                        </div>
                        <!-- END (Фото автора в маске-обрезалке) -->

                        <div class="about">
                            <div class="fullname-rating">
                                <div class="fullname">
                                    <a href="${currentURI}#">Александр Константинопольский</a>
                                </div>

<jsp:include page="components/vb/rating-3-stars.jsp"/>
                            </div>
                            <div class="genres">
                                Жанры:
                                <a href="${currentURI}#">военные</a>,
                                <a href="${currentURI}#">детектив</a>,
                                <a href="${currentURI}#">приключения</a>
                            </div>
                            <div class="description">
                                I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.
                            </div>
                            <div class="footer">
                                <div class="published">
                                    Опубликовано:
                                    <a href="${currentURI}#">
                                        <span>18</span>
                                        книг
                                    </a>
                                </div>
                                <div class="reviews">
                                    <a href="${currentURI}#">
                                        <span>5</span>
                                        отзывов
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="item author">
                        <div class="serial-number">
                            <span class="text">2</span>
                        </div>

                        <!-- START (Фото автора в маске-обрезалке) -->
                        <div class="author-photo">
                            <img src="resources/vb/img/tmp/photo-1.jpg" width="80" height="80">
                        </div>
                        <!-- END (Фото автора в маске-обрезалке) -->

                        <div class="about">
                            <div class="fullname-rating">
                                <div class="fullname">
                                    <a href="${currentURI}#">Александр Константинопольский</a>
                                </div>

<jsp:include page="components/vb/rating-3-stars.jsp"/>
                            </div>
                            <div class="genres">
                                Жанры:
                                <a href="${currentURI}#">военные</a>,
                                <a href="${currentURI}#">детектив</a>,
                                <a href="${currentURI}#">приключения</a>
                            </div>
                            <div class="description">
                                I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.
                            </div>
                            <div class="footer">
                                <div class="published">
                                    Опубликовано:
                                    <a href="${currentURI}#">
                                        <span>18</span>
                                        книг
                                    </a>
                                </div>
                                <div class="reviews">
                                    <a href="${currentURI}#">
                                        <span>5</span>
                                        отзывов
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="item author">
                        <div class="serial-number">
                            <span class="text">3</span>
                        </div>

                        <!-- START (Фото автора в маске-обрезалке) -->
                        <div class="author-photo">
                            <img src="resources/vb/img/tmp/photo-1.jpg" width="80" height="80">
                        </div>
                        <!-- END (Фото автора в маске-обрезалке) -->

                        <div class="about">
                            <div class="fullname-rating">
                                <div class="fullname">
                                    <a href="${currentURI}#">Александр Константинопольский</a>
                                </div>

<jsp:include page="components/vb/rating-3-stars.jsp"/>
                            </div>
                            <div class="genres">
                                Жанры:
                                <a href="${currentURI}#">военные</a>,
                                <a href="${currentURI}#">детектив</a>,
                                <a href="${currentURI}#">приключения</a>
                            </div>
                            <div class="description">
                                I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.
                            </div>
                            <div class="footer">
                                <div class="published">
                                    Опубликовано:
                                    <a href="${currentURI}#">
                                        <span>18</span>
                                        книг
                                    </a>
                                </div>
                                <div class="reviews">
                                    <a href="${currentURI}#">
                                        <span>5</span>
                                        отзывов
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>

<jsp:include page="components/vb/show-more-btn.jsp"/>
                </div>

                <div class="column column-3">

                </div>
            </div>
        </main>

<jsp:include page="fragments/footer.jsp"/>