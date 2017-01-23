<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="bodyClass" value="hidden-partners-on-shelf" scope="request"/>
<c:set var="mainClass" value="feedback" scope="request"/>
<c:set var="sloganAdditionalClass" value="" scope="request"/>

<jsp:include page="fragments/header.jsp"/>

            <div class="columns">
                <div class="column-1">
                    <!-- START (Боковой баннер ссылок на страницу "Поиска книги") -->
                    <ul class="item top-level">
                        <li class="top-level-link">
                            <a href="${currentURI}#">Бест-селлеры</a>
                        </li>
                        <li class="top-level-link">
                            <a href="${currentURI}#">Новинки</a>
                        </li>
                        <li class="top-level-link">
                            <a href="${currentURI}#">Акции</a>
                        </li>
                        <li class="top-level-link">
                            <a href="${currentURI}#">Детям и родителям</a>
                        </li>
                        <ul class="bottom-level">
                            <li class="bottom-level-link">
                                <a href="${currentURI}#">Досуг и творчество</a>
                            </li>
                            <li class="bottom-level-link">
                                <a href="${currentURI}#">Книги для родителей</a>
                            </li>
                            <li class="bottom-level-link">
                                <a href="${currentURI}#">Познавательная литература</a>
                            </li>
                            <li class="bottom-level-link">
                                <a href="${currentURI}#">Художественная литература</a>
                            </li>
                        </ul>
                        <li class="top-level-link">
                            <a href="${currentURI}#">Учебная литература</a>
                        </li>
                        <ul class="bottom-level">
                            <li class="bottom-level-link">
                                <a href="${currentURI}#">Дошкольникам</a>
                            </li>
                            <li class="bottom-level-link">
                                <a href="${currentURI}#">Школьникам и абитуриентам</a>
                            </li>
                            <li class="bottom-level-link">
                                <a href="${currentURI}#">Студентам и аспирантам</a>
                            </li>
                            <li class="bottom-level-link">
                                <a href="${currentURI}#">Педагогам</a>
                            </li>
                        </ul>
                        <li class="top-level-link">
                            <a href="${currentURI}#">Бизнес-литература</a>
                        </li>
                        <ul class="bottom-level">
                            <li class="bottom-level-link">
                                <a href="${currentURI}#">Деловая литература. Право. Психология</a>
                            </li>
                            <li class="bottom-level-link">
                                <a href="${currentURI}#">Маркетинг. Реклама</a>
                            </li>
                            <li class="bottom-level-link">
                                <a href="${currentURI}#">Менеджмент</a>
                            </li>
                            <li class="bottom-level-link">
                                <a href="${currentURI}#">Финансы. Банковское дело. Инвестиции</a>
                            </li>
                        </ul>
                        <li class="top-level-link">
                            <a href="${currentURI}#">Нехудожественная литература</a>
                        </li>
                        <ul class="bottom-level">
                            <li class="bottom-level-link">
                                <a href="${currentURI}#">Искусство. Культура</a>
                            </li>
                            <li class="bottom-level-link">
                                <a href="${currentURI}#">Компьютеры. Интернет</a>
                            </li>
                            <li class="bottom-level-link">
                                <a href="${currentURI}#">Кулинария. Напитки</a>
                            </li>
                            <li class="bottom-level-link">
                                <a href="${currentURI}#">Медицина</a>
                            </li>
                            <li class="bottom-level-link">
                                <a href="${currentURI}#">Наука.Техника</a>
                            </li>
                            <li class="bottom-level-link">
                                <a href="${currentURI}#">Общественные и гуманитарные науки</a>
                            </li>
                            <li class="bottom-level-link">
                                <a href="${currentURI}#">Психология</a>
                            </li>
                            <li class="bottom-level-link">
                                <a href="${currentURI}#">Публицистика</a>
                            </li>
                            <li class="bottom-level-link">
                                <a href="${currentURI}#">Путешествия. Хобби. Фото. Спорт</a>
                            </li>
                            <li class="bottom-level-link">
                                <a href="${currentURI}#">Религии мира</a>
                            </li>
                            <li class="bottom-level-link">
                                <a href="${currentURI}#">Рукоделие. Творчество</a>
                            </li>
                            <li class="bottom-level-link">
                                <a href="${currentURI}#">Эзотерика</a>
                            </li>
                        </ul>
                    </ul>
                    <!-- END (Боковой баннер ссылок на страницу "Поиска книги") -->
                </div>

                <div class="column-2">
                    <div class="header">
                        <h1>Обратная связь</h1>
                    </div>

                    <div class="feedback" id="feedback">
                        <h2>Для того чтобы задать нам вопрос, необходимо заполнить форму</h2>

                        <!-- START (Надпись-предупреждение) -->
                        <div class="warning">
                            Все поля обязательны для заполнения
                        </div>
                        <!-- END (Надпись-предупреждение) -->

                        <form method="post">
                            <div class="row">
                                <div class="fullname">
                                    <label for="fullname" class="fullname">
                                        <span class="text">
                                            Ваше имя
                                        </span>
                                    </label>

                                    <!-- START (Наклонные input-ы) -->
                                    <!-- Для использования этого input-а в форме, нужно заполнить поле name -->
                                    <div class="skew-outer">
                                        <input class="skew-inner"
                                               type="text"
                                               id="fullname"
                                               name="fullname"
                                               autofocus
                                               required>
                                    </div>
                                    <!-- END (Наклонные input-ы) -->
                                </div>
                            </div>
                            <div class="row">
                                <div class="email">
                                    <label for="email" class="email">
                                        <span class="text">
                                            E-mail
                                        </span>
                                    </label>

                                    <!-- START (Наклонные input-ы) -->
                                    <!-- Для использования этого input-а в форме, нужно заполнить поле name -->
                                    <div class="skew-outer">
                                        <input class="skew-inner"
                                               type="email"
                                               id="email"
                                               name="email"
                                               required>
                                    </div>
                                    <!-- END (Наклонные input-ы) -->
                                </div>
                            </div>
                            <div class="row">
                                <div class="topic">
                                    <label for="topic" class="topic">
                                        <span class="text">
                                            Тема
                                        </span>
                                    </label>

                                    <!-- START (Наклонные input-ы) -->
                                    <!-- Для использования этого input-а в форме, нужно заполнить поле name -->
                                    <div class="skew-outer">
                                        <input class="skew-inner"
                                               type="text"
                                               id="topic"
                                               name="topic"
                                               required>
                                    </div>
                                    <!-- END (Наклонные input-ы) -->
                                </div>
                            </div>
                            <div class="row">
                                <div class="content">
                                    <label for="content">
                                        <span class="text">
                                            Текст сообщения
                                        </span>
                                    </label>

                                    <!-- START (Наклонный textarea) -->
                                    <div class="textarea">
                                        <div class="skew-outer">
                                            <!--
                                                Открывающий и закрывающий теги textarea должны быть на одной строке, т.к. иначе placeholder не отображается:
                                                http://stackoverflow.com/questions/10186913/html5-textarea-placeholder-not-appearing
                                            -->
                                            <!-- Для использования этого textarea в форме, нужно заполнить поле name -->
                                            <textarea class="skew-inner" name="content" id="content" maxlength="4000" required></textarea>
                                        </div>
                                        <div class="textarea-info">
                                            Использован<span class="using-ending">о</span>
                                            <span class="size">0</span> символ<span class="symbol-ending">ов</span>
                                            из 4000 возможных
                                        </div>
                                    </div>
                                    <!-- END (Наклонный textarea) -->
                                </div>
                            </div>

                            <div class="g-recaptcha" data-sitekey="6Lfs2Q8UAAAAAAuxtZw_1ZgZpysvifNq64GRjw6M"></div>

                            <!-- START (Стилизованные кнопки и ссылки, похожие на кнопки) -->
                            <button class="btn" type="submit">
                                Задать вопрос
                            </button>
                            <!-- END (Стилизованные кнопки и ссылки, похожие на кнопки) -->
                        </form>

                        <!-- START (Тень под блоком) -->
                        <div class="shadow-under"></div>
                        <!-- END (Тень под блоком) -->
                    </div>
                </div>

                <div class="column-3">
                    <!-- START (Баннер "Специальные предложения" для электронных книг) -->
                    <div class="item spec ebook">
                        <div class="header">
                            <div class="title">
                                Специальные предложения
                            </div>
                            <div class="arrow-down"></div>
                        </div>
                        <div class="main">
                            <div class="spec-book spec-book-1">
                                <a class="cover-rating" href="${currentURI}#">
                                    <img class="cover" src="resources/vb/img/tmp/book-1.jpg" width="230" height="368">
                                    <div class="rating">3,8</div>
                                </a>
                                <div class="content">
                                    <a class="title" href="${currentURI}#">
                                        <span class="text">
                                            Энциклопедия Marvel Heroes
                                        </span>
                                    </a>
                                    <a class="author-name" href="${currentURI}#">
                                        <span class="text">
                                            Дмитрий Глуховский
                                        </span>
                                    </a>
                                    <div class="price">
                                        <span class="value">599</span>
                                        <span class="currency">р.</span>
                                    </div>
                                </div>
                            </div>
                            <div class="spec-book spec-book-2">
                                <a class="cover-rating" href="${currentURI}#">
                                    <img class="cover" src="resources/vb/img/tmp/book-5.jpg" width="230" height="368">
                                    <div class="rating">3,8</div>
                                </a>
                                <div class="content">
                                    <a class="title" href="${currentURI}#">
                                        <span class="text">
                                            Непобежденные
                                        </span>
                                    </a>
                                    <a class="author-name" href="${currentURI}#">
                                        <span class="text">
                                            А.П. Константинов
                                        </span>
                                    </a>
                                    <div class="price">
                                        <span class="value">99</span>
                                        <span class="currency">р.</span>
                                    </div>
                                </div>
                            </div>
                            <div class="spec-book spec-book-3">
                                <a class="cover-rating" href="${currentURI}#">
                                    <img class="cover" src="resources/vb/img/tmp/book-4.jpg" width="230" height="368">
                                    <div class="rating">3,8</div>
                                </a>
                                <div class="content">
                                    <a class="title" href="${currentURI}#">
                                        <span class="text">
                                            Энциклопедия Marvel Heroes
                                        </span>
                                    </a>
                                    <a class="author-name" href="${currentURI}#">
                                        <span class="text">
                                            Дмитрий Глуховский
                                        </span>
                                    </a>
                                    <div class="price">
                                        <span class="value">99</span>
                                        <span class="currency">р.</span>
                                    </div>
                                </div>
                            </div>
                            <a class="show-all" href="${currentURI}#">
                                <span class="text">
                                    Показать все предложения
                                </span>
                            </a>
                        </div>
                    </div>
                    <!-- END (Баннер "Специальные предложения" для электронных книг) -->

                    <!-- START (Баннер "Специальные предложения" для аудиокниг) -->
                    <div class="item spec audiobook">
                        <div class="header">
                            <div class="title">
                                Специальные предложения
                            </div>
                            <div class="arrow-down"></div>
                        </div>
                        <div class="main">
                            <div class="spec-book spec-book-1">
                                <a class="cover-rating" href="${currentURI}#">
                                    <img class="cover" src="resources/vb/img/tmp/audiobook-1.jpg" width="137" height="137">
                                    <div class="rating">3,8</div>
                                </a>
                                <div class="content">
                                    <a class="title" href="${currentURI}#">
                                        <span class="text">
                                            Энциклопедия Marvel Heroes
                                        </span>
                                    </a>
                                    <a class="author-name" href="${currentURI}#">
                                        <span class="text">
                                            Дмитрий Глуховский
                                        </span>
                                    </a>
                                    <div class="price">
                                        <span class="value">599</span>
                                        <span class="currency">р.</span>
                                    </div>
                                </div>
                            </div>
                            <div class="spec-book spec-book-2">
                                <a class="cover-rating" href="${currentURI}#">
                                    <img class="cover" src="resources/vb/img/tmp/audiobook-1.jpg" width="137" height="137">
                                    <div class="rating">3,8</div>
                                </a>
                                <div class="content">
                                    <a class="title" href="${currentURI}#">
                                        <span class="text">
                                            Непобежденные
                                        </span>
                                    </a>
                                    <a class="author-name" href="${currentURI}#">
                                        <span class="text">
                                            А.П. Константинов
                                        </span>
                                    </a>
                                    <div class="price">
                                        <span class="value">99</span>
                                        <span class="currency">р.</span>
                                    </div>
                                </div>
                            </div>
                            <div class="spec-book spec-book-3">
                                <a class="cover-rating" href="${currentURI}#">
                                    <img class="cover" src="resources/vb/img/tmp/audiobook-1.jpg" width="137" height="137">
                                    <div class="rating">3,8</div>
                                </a>
                                <div class="content">
                                    <a class="title" href="${currentURI}#">
                                        <span class="text">
                                            Энциклопедия Marvel Heroes
                                        </span>
                                    </a>
                                    <a class="author-name" href="${currentURI}#">
                                        <span class="text">
                                            Дмитрий Глуховский
                                        </span>
                                    </a>
                                    <div class="price">
                                        <span class="value">99</span>
                                        <span class="currency">р.</span>
                                    </div>
                                </div>
                            </div>
                            <a class="show-all" href="${currentURI}#">
                                <span class="text">
                                    Показать все предложения
                                </span>
                            </a>
                        </div>
                    </div>
                    <!-- END (Баннер "Специальные предложения" для аудиокниг) -->
                </div>
            </div>
        </main>

<jsp:include page="fragments/footer.jsp"/>