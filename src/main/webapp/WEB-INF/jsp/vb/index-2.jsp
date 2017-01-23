<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="bodyClass" value="hidden-partners-on-shelf" scope="request"/>
<c:set var="mainClass" value="index-2" scope="request"/>
<c:set var="sloganAdditionalClass" value="help-page" scope="request"/>

<jsp:include page="fragments/header.jsp"/>

            <!-- START (Слайдер цитат вверху страницы) -->
            <input type="radio" name="slide" class="slider-button slider-button-1" id="slider-button-1" checked>
            <input type="radio" name="slide" class="slider-button slider-button-2" id="slider-button-2" >
            <input type="radio" name="slide" class="slider-button slider-button-3" id="slider-button-3" >
            <div class="quotes-slider">
                <a class="arrow-btn left-arrow-btn" href="${currentURI}#">
                    <div class="corner"></div>
                </a>

                <div class="quotes">
                    <p class="quote quote-1">
                        Harry Potter 1 has never even heard of Hogwarts when the letters  start dropping on the doormat at number four, Privet  Drive. Addressed in green ink on yellowish parchment with a purple seal, they are swiftly confiscated by his grisly
                    </p>
                    <p class="quote quote-2">
                        Harry Potter 2 Plastics are inexpensive, lightweight and durable materials, which can readily be moulded into a variety of products that find use in a wide range of applications. As a consequence, the production of plastics has increased
                    </p>
                    <p class="quote quote-3">
                        Harry Potter 3 Recycling is one of the most important actions currently available to reduce these impacts and represents one of the most dynamic areas in the plastics industry today. Recycling provides opportunities to reduce oil usage
                    </p>
                </div>

                <a class="arrow-btn right-arrow-btn" href="${currentURI}#">
                    <div class="corner"></div>
                </a>
            </div>
            <div class="slider-buttons">
                <label class="slider-button slider-button-1" for="slider-button-1"></label>
                <label class="slider-button slider-button-2" for="slider-button-2"></label>
                <label class="slider-button slider-button-3" for="slider-button-3"></label>
            </div>
            <!-- END (Слайдер цитат вверху страницы) -->

            <!-- START (Слайды помощи) -->
            <input type="radio" name="help-slide" class="help-slide-1" id="help-slide-1" checked>
            <input type="radio" name="help-slide" class="help-slide-2" id="help-slide-2" >
            <input type="radio" name="help-slide" class="help-slide-3" id="help-slide-3" >
            <div class="help-slide-marks">
                <label class="help-slide-mark help-slide-mark-1" for="help-slide-1">
                    <p>
                        Отформатируй и подготовь книгу к публикации
                    </p>
                </label>
                <label class="help-slide-mark help-slide-mark-2" for="help-slide-2">
                    <img src="resources/vb/img/index-2/paper-plane.png" width="109" height="111">
                    <p>
                        Создай проект, загрузи книгу
                    </p>
                </label>
                <label class="help-slide-mark help-slide-mark-3" for="help-slide-3">
                    <img src="resources/vb/img/index-2/yandex-money.jpg" width="91" height="77">
                    <p>
                        Опубликуй книгу и начни зарабатывать
                    </p>
                </label>
            </div>

            <!-- Слайд помощи 1 -->
            <div class="help-slide-content help-slide-1">
                <div class="row row-1">
                    <div class="column column-1">
                        <a href="${currentURI}#">
                            <span class="text">
                                Как отформатировать книгу
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Сколько стоит моя книга?
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                На какой бумаге печатать книгу и обложку?
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Переплет и количество страниц
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Твердый переплет
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Как определить цену?
                            </span>
                        </a>
                    </div>

                    <div class="column column-2">
                        <a href="${currentURI}#">
                            <span class="text">
                                Заголовки
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Досуг и творчество
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Книги для родителей
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Познавательная литература
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Художественная литература
                            </span>
                        </a>
                    </div>

                    <div class="column column-3">
                        <a href="${currentURI}#">
                            <span class="text">
                                Форматирование электронных книг
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Досуг и творчество
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Книги для родителей
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Познавательная литература
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Художественная литература
                            </span>
                        </a>
                    </div>
                </div>

                <div class="row row-2">
                    <div class="column column-1">
                        <a href="${currentURI}#">
                            <span class="text">
                                Процесс публикации
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Досуг и творчество
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Книги для родителей
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Познавательная литература
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Художественная литература
                            </span>
                        </a>
                    </div>

                    <div class="column column-2">
                        <a href="${currentURI}#">
                            <span class="text">
                                Текст, страницы, шрифт
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Дошкольникам
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Школьникам и абитуриентам
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Студентам и аспирантам
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Педагогам
                            </span>
                        </a>
                    </div>

                    <div class="column column-3">
                        <a href="${currentURI}#" class="verybook-help-you">
                            <div class="wrapper">
                                <span class="text">
                                    Verybook<br>поможет 1
                                </span>
                            </div>
                            <img src="resources/vb/svg/vb/question-mark-beauty.svg" width="49" height="49">
                        </a>
                        <p class="verybook-help-you">
                            Ever even heard of Hogwarts when the letters start dropping on the doormat
                        </p>
                    </div>
                </div>
            </div>

            <!-- Слайд помощи 2 -->
            <div class="help-slide-content help-slide-2">
                <div class="row row-1">
                    <div class="column column-1">
                        <a href="${currentURI}#">
                            <span class="text">
                                Как отформатировать книгу
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Сколько стоит моя книга?
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                На какой бумаге печатать книгу и обложку?
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Переплет и количество страниц
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Твердый переплет
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Как определить цену?
                            </span>
                        </a>
                    </div>

                    <div class="column column-2">
                        <a href="${currentURI}#">
                            <span class="text">
                                Заголовки
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Досуг и творчество
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Книги для родителей
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Познавательная литература
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Художественная литература
                            </span>
                        </a>
                    </div>

                    <div class="column column-3">
                        <a href="${currentURI}#">
                            <span class="text">
                                Форматирование электронных книг
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Досуг и творчество
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Книги для родителей
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Познавательная литература
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Художественная литература
                            </span>
                        </a>
                    </div>
                </div>

                <div class="row row-2">
                    <div class="column column-1">
                        <a href="${currentURI}#">
                            <span class="text">
                                Процесс публикации
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Досуг и творчество
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Книги для родителей
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Познавательная литература
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Художественная литература
                            </span>
                        </a>
                    </div>

                    <div class="column column-2">
                        <a href="${currentURI}#">
                            <span class="text">
                                Текст, страницы, шрифт
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Дошкольникам
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Школьникам и абитуриентам
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Студентам и аспирантам
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Педагогам
                            </span>
                        </a>
                    </div>

                    <div class="column column-3">
                        <a href="${currentURI}#" class="verybook-help-you">
                            <div class="wrapper">
                                <span class="text">
                                    Verybook<br>поможет 2
                                </span>
                            </div>
                            <img src="resources/vb/svg/vb/question-mark-beauty.svg" width="49" height="49">
                        </a>
                        <p class="verybook-help-you">
                            Ever even heard of Hogwarts when the letters start dropping on the doormat
                        </p>
                    </div>
                </div>
            </div>

            <!-- Слайд помощи 3 -->
            <div class="help-slide-content help-slide-3">
                <div class="row row-1">
                    <div class="column column-1">
                        <a href="${currentURI}#">
                            <span class="text">
                                Как отформатировать книгу
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Сколько стоит моя книга?
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                На какой бумаге печатать книгу и обложку?
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Переплет и количество страниц
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Твердый переплет
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Как определить цену?
                            </span>
                        </a>
                    </div>

                    <div class="column column-2">
                        <a href="${currentURI}#">
                            <span class="text">
                                Заголовки
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Досуг и творчество
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Книги для родителей
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Познавательная литература
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Художественная литература
                            </span>
                        </a>
                    </div>

                    <div class="column column-3">
                        <a href="${currentURI}#">
                            <span class="text">
                                Форматирование электронных книг
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Досуг и творчество
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Книги для родителей
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Познавательная литература
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Художественная литература
                            </span>
                        </a>
                    </div>
                </div>

                <div class="row row-2">
                    <div class="column column-1">
                        <a href="${currentURI}#">
                            <span class="text">
                                Процесс публикации
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Досуг и творчество
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Книги для родителей
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Познавательная литература
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Художественная литература
                            </span>
                        </a>
                    </div>

                    <div class="column column-2">
                        <a href="${currentURI}#">
                            <span class="text">
                                Текст, страницы, шрифт
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Дошкольникам
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Школьникам и абитуриентам
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Студентам и аспирантам
                            </span>
                        </a>
                        <a href="${currentURI}#">
                            <span class="text">
                                Педагогам
                            </span>
                        </a>
                    </div>

                    <div class="column column-3">
                        <a href="${currentURI}#" class="verybook-help-you">
                            <div class="wrapper">
                                <span class="text">
                                    Verybook<br>поможет 3
                                </span>
                            </div>
                            <img src="resources/vb/svg/vb/question-mark-beauty.svg" width="49" height="49">
                        </a>
                        <p class="verybook-help-you">
                            Ever even heard of Hogwarts when the letters start dropping on the doormat
                        </p>
                    </div>
                </div>
            </div>
            <!-- END (Слайды помощи) -->

            <div class="btn-wrapper">
                <a class="btn" href="${currentURI}#">
                    Хочу создать книгу
                </a>
            </div>
        </main>

<jsp:include page="fragments/footer.jsp"/>