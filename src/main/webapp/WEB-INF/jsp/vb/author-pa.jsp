<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="bodyClass" value="hidden-partners-on-shelf" scope="request"/>
<c:set var="mainClass" value="author-pa" scope="request"/>
<c:set var="sloganAdditionalClass" value="" scope="request"/>

<jsp:include page="fragments/header.jsp"/>

            <div class="author">
                <div class="title">
                    Личный кабинет
                </div>
                <div class="about">
                    <!-- START (Кнопки сворачивания-разворачивания информации об авторе) - 1-ая часть из 2-х -->
                    <input class="expand-collapse-block expanded" type="radio" name="expand-collapse-btn" id="expanded" checked>
                    <input class="expand-collapse-block collapsed" type="radio" name="expand-collapse-btn" id="collapsed">
                    <label class="expand-collapse-block expanded" for="expanded"></label>
                    <label class="expand-collapse-block collapsed" for="collapsed"></label>
                    <!-- END (Кнопки сворачивания-разворачивания информации об авторе) - 1-ая часть из 2-х -->

                    <div class="columns">
                        <div class="column column-1">
                            <div class="row row-1">
                                <!-- START (Фото автора в маске-обрезалке) -->
                                <div class="author-photo">
                                    <img src="resources/vb/img/tmp/photo-1.jpg" width="80" height="80">
                                </div>
                                <!-- END (Фото автора в маске-обрезалке) -->

                                <div class="name">
                                    <div class="fullname">
                                        Александр Иванов
                                    </div>
                                    <div class="login">
                                        AIvanov
                                    </div>
                                </div>
                                <a class="edit" href="${currentURI}#"></a>
                            </div>
                            <div class="row row-2">
                                <div class="mark gold">
                                    <!--
                                        Авторы будут переходить из категории
                                            новичков NEW (цвет - бронза, доп.класс bronze) в
                                            специалисты SPEC (цвет - серебро, доп.класс silver) и далее в
                                            профессионалы PRO (цвет - золото, доп.класс gold)
                                    -->
                                    <span>PRO</span>
                                </div>

<jsp:include page="components/vb/rating-3-stars.jsp"/>
                            </div>
                            <div class="row row-3">
<jsp:include page="components/vb/ratings.jsp"/>
                            </div>
                        </div>
                        <div class="column column-2">
                            <div class="row row-1">
                                <div class="title">
                                    Личные данные
                                </div>
                                <a class="edit" href="${currentURI}#"></a>
                            </div>
                            <div class="row row-2">
                                <div class="city">
                                    Город:
                                    <span>Москва</span>
                                </div>
                            </div>
                            <div class="row row-3">
                                <div class="phone">
                                    +7 (000) 000-00-00
                                </div>
                                <div class="email">
                                    <a href="mailto:sobaka@mail.com">Sobaka@mail.com</a>
                                </div>
                                <div class="skype">
                                    <a href="skype:sobaka?chat">sobaka</a>
                                </div>
                            </div>
                        </div>
                        <div class="column column-3">
                            <div class="row row-1">
                                <div class="title">
                                    Обо мне
                                </div>
                                <a class="edit" href="${currentURI}#"></a>
                            </div>
                            <div class="row row-2">
                                <div class="description">
                                    Последние 15 лет я был в поисках. В поисках того дела, которое можно было бы назвать делом моей жизни того занятия, которое отвечало бы моим глубинным ценностям помогало реализовывать потребности и проявляло способности а это должно пропасть
                                </div>
                            </div>
                        </div>
                        <div class="column column-4">
                            <div class="row row-1">
                                <div class="title">
                                    Кошелек
                                </div>
                            </div>
                            <div class="row row-2">
                                <div class="wallet-icon">
                                </div>
                                <div class="wallet">
                                    <div class="balance">
                                        Баланс:
                                        <span class="number">517</span>
                                        <span class="currency">руб.</span>
                                    </div>

                                    <!-- START (Модальное окно) - 1-ая часть из 3-х -->
                                    <!-- Само модальное окно размещается в конце тега main, а здесь идет ссылка на id-шник (modal-name) этого окна -->
                                    <a href="${currentURI}#receive-money" class="modal-btn">
                                        Получить деньги
                                    </a>
                                    <!-- END (Модальное окно) - 1-ая часть из 3-х -->
                                </div>
                            </div>
                            <div class="row row-3">
                                <div class="profile-completeness">
                                    <a class="text" href="${currentURI}#">
                                        Профиль заполнен на <span>73</span>%
                                    </a>
                                    <div class="progress-bar"></div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- START (Кнопки сворачивания-разворачивания информации об авторе) - 2-ая часть из 2-х -->
                    <div class="expand-collapse-block"></div>
                    <!-- END (Кнопки сворачивания-разворачивания информации об авторе) - 2-ая часть из 2-х -->

                    <!-- START (Тень под блоком) -->
                    <div class="shadow-under"></div>
                    <!-- END (Тень под блоком) -->
                </div>
            </div>

            <div class="books">
                <input type="radio" name="write-read" class="write" id="write" checked>
                <input type="radio" name="write-read" class="read" id="read">
                <div class="header">
                    <label class="write" for="write">
                        <div class="title">
                            Мои книги
                        </div>
                        <a class="create-book" href="${currentURI}#">
                            <span class="plus"></span>
                            <span class="text">
                                Создать новую книгу
                            </span>
                        </a>
                    </label>
                    <label class="read" for="read">
                        <div class="title">
                            Купленные книги
                        </div>
                    </label>
                </div>

                <div class="table-with-shadow write">
                    <table class="table write">
                        <thead class="thead">
                        <tr class="tr">
                            <th class="th cover">
                                Обложка
                            </th>
                            <th class="th title">
                                Название
                            </th>
                            <th class="th status">
                                Статус
                            </th>
                            <th class="th rating">
                                Рейтинг
                            </th>
                            <th class="th download">
                                <div class="th-1">
                                    Скачали
                                </div>
                                <div class="th-2">
                                    <span class="free">Бесплатно</span> / <span class="paid">платно</span>
                                </div>
                            </th>
                            <th class="th likes">
                                <span class="like"></span> / <span class="dislike"></span>
                            </th>
                            <th class="th price">
                                <span>Текущая цена</span>
                            </th>
                            <th class="th profit">
                                <span>Прибыль</span>
                            </th>
                        </tr>
                        </thead>
                        <tbody class="tbody">
                        <tr class="tr">
                            <td class="td cover">
                                <img src="resources/vb/img/tmp/book-1.jpg" width="100" height="160">
                            </td>
                            <td class="td title">
                                <a class="book" href="${currentURI}#">
                                    Летящие в облаках
                                </a>
                                <a class="edit" href="${currentURI}#"></a>
                            </td>
                            <td class="td status">
                                <div class="current-status published">
                                    <!--
                                        published - это доп.класс для статуса Опубликовано
                                        rejected - это доп.класс для статуса Отклонено
                                        on-moderation - это доп.класс для статуса На модерации
                                        not-published - это доп.класс для статуса Не опубликовано
                                    -->
                                    <span class="text">Опубликовано</span>
                                </div>
                                <ul class="actions">
                                    <li class="action withdraw">
                                        <!--
                                            withdraw - действия, связанные с отзывом или снятием с публикации
                                            publish  - действия, связанные с отправкой на модерацию
                                        -->
                                        <a href="${currentURI}#">Снять с публикации</a>
                                    </li>
                                </ul>
                            </td>
                            <td class="td rating">
<jsp:include page="components/vb/rating-5-stars.jsp"/>
                            </td>
                            <td class="td download">
                                <span class="free">1152</span> / <span class="paid">152</span>
                            </td>
                            <td class="td likes">
                                <span class="like">793</span> / <span class="dislike">111</span>
                            </td>
                            <td class="td price">
<c:set var="price" value="51" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                            <td class="td profit">
<c:set var="price" value="501" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                        </tr>
                        <tr class="tr">
                            <td class="td cover">
                                <img src="resources/vb/img/tmp/book-2.jpg" width="100" height="160">
                            </td>
                            <td class="td title">
                                <a class="book" href="${currentURI}#">
                                    С широко открытыми глазами
                                </a>
                                <a class="edit" href="${currentURI}#"></a>
                            </td>
                            <td class="td status">
                                <div class="current-status rejected">
                                    <!--
                                        published - это доп.класс для статуса Опубликовано
                                        rejected - это доп.класс для статуса Отклонено
                                        on-moderation - это доп.класс для статуса На модерации
                                        not-published - это доп.класс для статуса Не опубликовано
                                    -->
                                    <span class="text">Отклонено</span>

                                    <!-- START (Значок-вопросика с всплывающей подсказкой) -->
                                    <div class="hint">
                                        <!-- Если убрать доп.класс blue, то знак вопросмка будет черного цвета -->
                                        <div class="question-mark "></div>
                                        <div class="bubble-before bubble-before-1"></div>
                                        <div class="bubble-before bubble-before-2"></div>
                                        <div class="bubble" data-init-width="355">
                                            <span class="content">
                                                Запрос на публикацию был отклонен из-за массового насилия в тексте вашей рукописи.
                                            </span>
                                        </div>
                                    </div>
                                    <!-- END (Значок-вопросика с всплывающей подсказкой) -->
                                </div>
                                <ul class="actions">
                                    <li class="action publish">
                                        <!--
                                            withdraw - действия, связанные с отзывом или снятием с публикации
                                            publish  - действия, связанные с отправкой на модерацию
                                        -->
                                        <a href="${currentURI}#">Отправить на модерацию повторно</a>
                                    </li>
                                </ul>
                            </td>
                            <td class="td rating">
<jsp:include page="components/vb/rating-5-stars.jsp"/>
                            </td>
                            <td class="td download">
                                <span class="free">12</span> / <span class="paid">0</span>
                            </td>
                            <td class="td likes">
                                <span class="like">11</span> / <span class="dislike">3</span>
                            </td>
                            <td class="td price">
<c:set var="price" value="501" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                            <td class="td profit">
<c:set var="price" value="0" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                        </tr>
                        <tr class="tr">
                            <td class="td cover">
                                <img src="resources/vb/img/tmp/book-3.jpg" width="100" height="160">
                            </td>
                            <td class="td title">
                                <a class="book" href="${currentURI}#">
                                    Далеко за горизонтом
                                </a>
                                <a class="edit" href="${currentURI}#"></a>
                            </td>
                            <td class="td status">
                                <div class="current-status on-moderation">
                                    <!--
                                        published - это доп.класс для статуса Опубликовано
                                        rejected - это доп.класс для статуса Отклонено
                                        on-moderation - это доп.класс для статуса На модерации
                                        not-published - это доп.класс для статуса Не опубликовано
                                    -->
                                    <span class="text">На модерации</span>
                                </div>
                                <ul class="actions">
                                    <li class="action withdraw">
                                        <!--
                                            withdraw - действия, связанные с отзывом или снятием с публикации
                                            publish  - действия, связанные с отправкой на модерацию
                                        -->
                                        <a href="${currentURI}#">Отозвать</a>
                                    </li>
                                </ul>
                            </td>
                            <td class="td rating">
<jsp:include page="components/vb/rating-5-stars.jsp"/>
                            </td>
                            <td class="td download">
                                <span class="free">86</span> / <span class="paid">0</span>
                            </td>
                            <td class="td likes">
                                <span class="like">53</span> / <span class="dislike">0</span>
                            </td>
                            <td class="td price">
<c:set var="price" value="5111" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                            <td class="td profit">
<c:set var="price" value="150" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                        </tr>
                        <tr class="tr">
                            <td class="td cover">
                                <img src="resources/vb/img/tmp/book-4.jpg" width="100" height="160">
                            </td>
                            <td class="td title">
                                <a class="book" href="${currentURI}#">
                                    Как отравили Сталина
                                </a>
                                <a class="edit" href="${currentURI}#"></a>
                            </td>
                            <td class="td status">
                                <div class="current-status not-published">
                                    <!--
                                        published - это доп.класс для статуса Опубликовано
                                        rejected - это доп.класс для статуса Отклонено
                                        on-moderation - это доп.класс для статуса На модерации
                                        not-published - это доп.класс для статуса Не опубликовано
                                    -->
                                    <span class="text">Не опубликовано</span>
                                </div>
                                <ul class="actions">
                                    <li class="action publish">
                                        <!--
                                            withdraw - действия, связанные с отзывом или снятием с публикации
                                            publish  - действия, связанные с отправкой на модерацию
                                        -->
                                        <a href="${currentURI}#">Отправить на модерацию</a>
                                    </li>
                                </ul>
                            </td>
                            <td class="td rating">
<jsp:include page="components/vb/rating-5-stars.jsp"/>
                            </td>
                            <td class="td download">
                                <span class="free">86</span> / <span class="paid">0</span>
                            </td>
                            <td class="td likes">
                                <span class="like">77</span> / <span class="dislike">111</span>
                            </td>
                            <td class="td price">
<c:set var="price" value="51" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                            <td class="td profit">
<c:set var="price" value="0" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                        </tr>
                        <tr class="tr">
                            <td class="td cover">
                                <img src="resources/vb/img/tmp/book-1.jpg" width="100" height="160">
                            </td>
                            <td class="td title">
                                <a class="book" href="${currentURI}#">
                                    Летящие в облаках
                                </a>
                                <a class="edit" href="${currentURI}#"></a>
                            </td>
                            <td class="td status">
                                <div class="current-status published">
                                    <!--
                                        published - это доп.класс для статуса Опубликовано
                                        rejected - это доп.класс для статуса Отклонено
                                        on-moderation - это доп.класс для статуса На модерации
                                        not-published - это доп.класс для статуса Не опубликовано
                                    -->
                                    <span class="text">Опубликовано</span>
                                </div>
                                <ul class="actions">
                                    <li class="action withdraw">
                                        <!--
                                            withdraw - действия, связанные с отзывом или снятием с публикации
                                            publish  - действия, связанные с отправкой на модерацию
                                        -->
                                        <a href="${currentURI}#">Снять с публикации</a>
                                    </li>
                                </ul>
                            </td>
                            <td class="td rating">
<jsp:include page="components/vb/rating-5-stars.jsp"/>
                            </td>
                            <td class="td download">
                                <span class="free">1152</span> / <span class="paid">152</span>
                            </td>
                            <td class="td likes">
                                <span class="like">793</span> / <span class="dislike">111</span>
                            </td>
                            <td class="td price">
<c:set var="price" value="48" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                            <td class="td profit">
<c:set var="price" value="517" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                        </tr>
                        <tr class="tr">
                            <td class="td cover">
                                <img src="resources/vb/img/tmp/book-2.jpg" width="100" height="160">
                            </td>
                            <td class="td title">
                                <a class="book" href="${currentURI}#">
                                    С широко открытыми глазами
                                </a>
                                <a class="edit" href="${currentURI}#"></a>
                            </td>
                            <td class="td status">
                                <div class="current-status rejected">
                                    <!--
                                        published - это доп.класс для статуса Опубликовано
                                        rejected - это доп.класс для статуса Отклонено
                                        on-moderation - это доп.класс для статуса На модерации
                                        not-published - это доп.класс для статуса Не опубликовано
                                    -->
                                    <span class="text">Отклонено</span>

                                    <!-- START (Значок-вопросика с всплывающей подсказкой) -->
                                    <div class="hint">
                                        <!-- Если убрать доп.класс blue, то знак вопросмка будет черного цвета -->
                                        <div class="question-mark "></div>
                                        <div class="bubble-before bubble-before-1"></div>
                                        <div class="bubble-before bubble-before-2"></div>
                                        <div class="bubble" data-init-width="355">
                                            <span class="content">
                                                Запрос на публикацию был отклонен из-за порнографии в вашей рукописи.
                                            </span>
                                        </div>
                                    </div>
                                    <!-- END (Значок-вопросика с всплывающей подсказкой) -->
                                </div>
                                <ul class="actions">
                                    <li class="action publish">
                                        <!--
                                            withdraw - действия, связанные с отзывом или снятием с публикации
                                            publish  - действия, связанные с отправкой на модерацию
                                        -->
                                        <a href="${currentURI}#">Отправить на модерацию повторно</a>
                                    </li>
                                </ul>
                            </td>
                            <td class="td rating">
<jsp:include page="components/vb/rating-5-stars.jsp"/>
                            </td>
                            <td class="td download">
                                <span class="free">12</span> / <span class="paid">0</span>
                            </td>
                            <td class="td likes">
                                <span class="like">11</span> / <span class="dislike">3</span>
                            </td>
                            <td class="td price">
<c:set var="price" value="51" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                            <td class="td profit">
<c:set var="price" value="0" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                        </tr>
                        <tr class="tr">
                            <td class="td cover">
                                <img src="resources/vb/img/tmp/book-3.jpg" width="100" height="160">
                            </td>
                            <td class="td title">
                                <a class="book" href="${currentURI}#">
                                    Далеко за горизонтом
                                </a>
                                <a class="edit" href="${currentURI}#"></a>
                            </td>
                            <td class="td status">
                                <div class="current-status on-moderation">
                                    <!--
                                        published - это доп.класс для статуса Опубликовано
                                        rejected - это доп.класс для статуса Отклонено
                                        on-moderation - это доп.класс для статуса На модерации
                                        not-published - это доп.класс для статуса Не опубликовано
                                    -->
                                    <span class="text">На модерации</span>
                                </div>
                                <ul class="actions">
                                    <li class="action withdraw">
                                        <!--
                                            withdraw - действия, связанные с отзывом или снятием с публикации
                                            publish  - действия, связанные с отправкой на модерацию
                                        -->
                                        <a href="${currentURI}#">Отозвать</a>
                                    </li>
                                </ul>
                            </td>
                            <td class="td rating">
<jsp:include page="components/vb/rating-5-stars.jsp"/>
                            </td>
                            <td class="td download">
                                <span class="free">86</span> / <span class="paid">0</span>
                            </td>
                            <td class="td likes">
                                <span class="like">53</span> / <span class="dislike">0</span>
                            </td>
                            <td class="td price">
<c:set var="price" value="158" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                            <td class="td profit">
<c:set var="price" value="150" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                        </tr>
                        <tr class="tr">
                            <td class="td cover">
                                <img src="resources/vb/img/tmp/book-4.jpg" width="100" height="160">
                            </td>
                            <td class="td title">
                                <a class="book" href="${currentURI}#">
                                    Как отравили Сталина
                                </a>
                                <a class="edit" href="${currentURI}#"></a>
                            </td>
                            <td class="td status">
                                <div class="current-status not-published">
                                    <!--
                                        published - это доп.класс для статуса Опубликовано
                                        rejected - это доп.класс для статуса Отклонено
                                        on-moderation - это доп.класс для статуса На модерации
                                        not-published - это доп.класс для статуса Не опубликовано
                                    -->
                                    <span class="text">Не опубликовано</span>
                                </div>
                                <ul class="actions">
                                    <li class="action publish">
                                        <!--
                                            withdraw - действия, связанные с отзывом или снятием с публикации
                                            publish  - действия, связанные с отправкой на модерацию
                                        -->
                                        <a href="${currentURI}#">Отправить на модерацию</a>
                                    </li>
                                </ul>
                            </td>
                            <td class="td rating">
<jsp:include page="components/vb/rating-5-stars.jsp"/>
                            </td>
                            <td class="td download">
                                <span class="free">86</span> / <span class="paid">0</span>
                            </td>
                            <td class="td likes">
                                <span class="like">77</span> / <span class="dislike">111</span>
                            </td>
                            <td class="td price">
<c:set var="price" value="51" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                            <td class="td profit">
<c:set var="price" value="0" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                        </tr>
                        <tr class="tr">
                            <td class="td cover">
                                <img src="resources/vb/img/tmp/book-1.jpg" width="100" height="160">
                            </td>
                            <td class="td title">
                                <a class="book" href="${currentURI}#">
                                    Летящие в облаках
                                </a>
                                <a class="edit" href="${currentURI}#"></a>
                            </td>
                            <td class="td status">
                                <div class="current-status published">
                                    <!--
                                        published - это доп.класс для статуса Опубликовано
                                        rejected - это доп.класс для статуса Отклонено
                                        on-moderation - это доп.класс для статуса На модерации
                                        not-published - это доп.класс для статуса Не опубликовано
                                    -->
                                    <span class="text">Опубликовано</span>
                                </div>
                                <ul class="actions">
                                    <li class="action withdraw">
                                        <!--
                                            withdraw - действия, связанные с отзывом или снятием с публикации
                                            publish  - действия, связанные с отправкой на модерацию
                                        -->
                                        <a href="${currentURI}#">Снять с публикации</a>
                                    </li>
                                </ul>
                            </td>
                            <td class="td rating">
<jsp:include page="components/vb/rating-5-stars.jsp"/>
                            </td>
                            <td class="td download">
                                <span class="free">1152</span> / <span class="paid">152</span>
                            </td>
                            <td class="td likes">
                                <span class="like">793</span> / <span class="dislike">111</span>
                            </td>
                            <td class="td price">
<c:set var="price" value="121" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                            <td class="td profit">
<c:set var="price" value="517" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                        </tr>
                        <tr class="tr">
                            <td class="td cover">
                                <img src="resources/vb/img/tmp/book-2.jpg" width="100" height="160">
                            </td>
                            <td class="td title">
                                <a class="book" href="${currentURI}#">
                                    С широко открытыми глазами
                                </a>
                                <a class="edit" href="${currentURI}#"></a>
                            </td>
                            <td class="td status">
                                <div class="current-status rejected">
                                    <!--
                                        published - это доп.класс для статуса Опубликовано
                                        rejected - это доп.класс для статуса Отклонено
                                        on-moderation - это доп.класс для статуса На модерации
                                        not-published - это доп.класс для статуса Не опубликовано
                                    -->
                                    <span class="text">Отклонено</span>

                                    <!-- START (Значок-вопросика с всплывающей подсказкой) -->
                                    <div class="hint">
                                        <!-- Если убрать доп.класс blue, то знак вопросмка будет черного цвета -->
                                        <div class="question-mark "></div>
                                        <div class="bubble-before bubble-before-1"></div>
                                        <div class="bubble-before bubble-before-2"></div>
                                        <div class="bubble" data-init-width="355">
                                            <span class="content">
                                                Запрос на публикацию был отклонен из-за обильной любви ко всему человечеству в тексте вашей книги.
                                            </span>
                                        </div>
                                    </div>
                                    <!-- END (Значок-вопросика с всплывающей подсказкой) -->
                                </div>
                                <ul class="actions">
                                    <li class="action publish">
                                        <!--
                                            withdraw - действия, связанные с отзывом или снятием с публикации
                                            publish  - действия, связанные с отправкой на модерацию
                                        -->
                                        <a href="${currentURI}#">Отправить на модерацию повторно</a>
                                    </li>
                                </ul>
                            </td>
                            <td class="td rating">
<jsp:include page="components/vb/rating-5-stars.jsp"/>
                            </td>
                            <td class="td download">
                                <span class="free">12</span> / <span class="paid">0</span>
                            </td>
                            <td class="td likes">
                                <span class="like">11</span> / <span class="dislike">3</span>
                            </td>
                            <td class="td price">
<c:set var="price" value="51" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                            <td class="td profit">
<c:set var="price" value="0" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                        </tr>
                        <tr class="tr">
                            <td class="td cover">
                                <img src="resources/vb/img/tmp/book-3.jpg" width="100" height="160">
                            </td>
                            <td class="td title">
                                <a class="book" href="${currentURI}#">
                                    Далеко за горизонтом
                                </a>
                                <a class="edit" href="${currentURI}#"></a>
                            </td>
                            <td class="td status">
                                <div class="current-status on-moderation">
                                    <!--
                                        published - это доп.класс для статуса Опубликовано
                                        rejected - это доп.класс для статуса Отклонено
                                        on-moderation - это доп.класс для статуса На модерации
                                        not-published - это доп.класс для статуса Не опубликовано
                                    -->
                                    <span class="text">На модерации</span>
                                </div>
                                <ul class="actions">
                                    <li class="action withdraw">
                                        <!--
                                            withdraw - действия, связанные с отзывом или снятием с публикации
                                            publish  - действия, связанные с отправкой на модерацию
                                        -->
                                        <a href="${currentURI}#">Отозвать</a>
                                    </li>
                                </ul>
                            </td>
                            <td class="td rating">
<jsp:include page="components/vb/rating-5-stars.jsp"/>
                            </td>
                            <td class="td download">
                                <span class="free">86</span> / <span class="paid">0</span>
                            </td>
                            <td class="td likes">
                                <span class="like">53</span> / <span class="dislike">0</span>
                            </td>
                            <td class="td price">
<c:set var="price" value="175" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                            <td class="td profit">
<c:set var="price" value="150" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                        </tr>
                        <tr class="tr">
                            <td class="td cover">
                                <img src="resources/vb/img/tmp/book-4.jpg" width="100" height="160">
                            </td>
                            <td class="td title">
                                <a class="book" href="${currentURI}#">
                                    Как отравили Сталина
                                </a>
                                <a class="edit" href="${currentURI}#"></a>
                            </td>
                            <td class="td status">
                                <div class="current-status not-published">
                                    <!--
                                        published - это доп.класс для статуса Опубликовано
                                        rejected - это доп.класс для статуса Отклонено
                                        on-moderation - это доп.класс для статуса На модерации
                                        not-published - это доп.класс для статуса Не опубликовано
                                    -->
                                    <span class="text">Не опубликовано</span>
                                </div>
                                <ul class="actions">
                                    <li class="action publish">
                                        <!--
                                            withdraw - действия, связанные с отзывом или снятием с публикации
                                            publish  - действия, связанные с отправкой на модерацию
                                        -->
                                        <a href="${currentURI}#">Отправить на модерацию</a>
                                    </li>
                                </ul>
                            </td>
                            <td class="td rating">
<jsp:include page="components/vb/rating-5-stars.jsp"/>
                            </td>
                            <td class="td download">
                                <span class="free">86</span> / <span class="paid">0</span>
                            </td>
                            <td class="td likes">
                                <span class="like">77</span> / <span class="dislike">111</span>
                            </td>
                            <td class="td price">
<c:set var="price" value="1151" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                            <td class="td profit">
<c:set var="price" value="0" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                        </tr>
                        </tbody>
                    </table>

                    <!-- START (Тень под блоком) -->
                    <div class="shadow-under"></div>
                    <!-- END (Тень под блоком) -->
                </div>

                <div class="table-with-shadow read">
                    <table class="table read">
                        <thead class="thead">
                        <tr class="tr">
                            <th class="th product">
                                Книга
                            </th>
                            <th class="th date">
                                Дата публикации
                            </th>
                            <th class="th likes">
                                <span>Проголосовать</span>
                            </th>
                            <th class="th price">
                                <span>Цена покупки</span>
                            </th>
                            <th class="th download">
                                <span>Скачать</span>
                            </th>
                        </tr>
                        </thead>
                        <tbody class="tbody">
                        <tr class="tr">
                            <td class="td product">
<c:set var="bookTripletCoverUrl" value="resources/vb/img/tmp/book-1.jpg" scope="request"/>
<c:set var="bookTripletTitle" value="Полет над гнездом кукушки" scope="request"/>
<c:set var="bookTripletAuthor" value="Александр Иванов" scope="request"/>
<jsp:include page="components/vb/book-triplet.jsp"/>
                            </td>
                            <td class="td date">
                                <span>
                                    12 сентября 2015 года
                                </span>
                            </td>
                            <td class="td likes">
<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>
                            </td>
                            <td class="td price">
<c:set var="price" value="5140" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                            <td class="td download">
                                <span>Форматы:</span>
                                <ul class="formats">
                                    <li class="format">
                                        <button>epub</button>
                                    </li>
                                    <li class="format">
                                        <button>pdf</button>
                                    </li>
                                </ul>
                            </td>
                        </tr>
                        <tr class="tr">
                            <td class="td product">
<c:set var="bookTripletCoverUrl" value="resources/vb/img/tmp/book-2.jpg" scope="request"/>
<c:set var="bookTripletTitle" value="Как отравили Сталина" scope="request"/>
<c:set var="bookTripletAuthor" value="Александр Константинопольский" scope="request"/>
<jsp:include page="components/vb/book-triplet.jsp"/>
                            </td>
                            <td class="td date">
                                <span>
                                    26 июня 2015 года
                                </span>
                            </td>
                            <td class="td likes">
<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>
                            </td>
                            <td class="td price">
<c:set var="price" value="651" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                            <td class="td download">
                                <span>Форматы:</span>
                                <ul class="formats">
                                    <li class="format">
                                        <button>pdf</button>
                                    </li>
                                    <li class="format">
                                        <button>fb2</button>
                                    </li>
                                </ul>
                            </td>
                        </tr>
                        <tr class="tr">
                            <td class="td product">
<c:set var="bookTripletCoverUrl" value="resources/vb/img/tmp/book-3.jpg" scope="request"/>
<c:set var="bookTripletTitle" value="Полет над гнездом кукушки" scope="request"/>
<c:set var="bookTripletAuthor" value="Александр Иванов" scope="request"/>
<jsp:include page="components/vb/book-triplet.jsp"/>
                            </td>
                            <td class="td date">
                                <span>
                                    16 ноября 2014 года
                                </span>
                            </td>
                            <td class="td likes">
<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>
                            </td>
                            <td class="td price">
<c:set var="price" value="501" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                            <td class="td download">
                                <span>Форматы:</span>
                                <ul class="formats">
                                    <li class="format">
                                        <button>epub</button>
                                    </li>
                                </ul>
                            </td>
                        </tr>
                        <tr class="tr">
                            <td class="td product">
<c:set var="bookTripletCoverUrl" value="resources/vb/img/tmp/book-4.jpg" scope="request"/>
<c:set var="bookTripletTitle" value="С широко открытыми глазами" scope="request"/>
<c:set var="bookTripletAuthor" value="Александр Иванов" scope="request"/>
<jsp:include page="components/vb/book-triplet.jsp"/>
                            </td>
                            <td class="td date">
                                <span>
                                    6 сентября 2013 года
                                </span>
                            </td>
                            <td class="td likes">
<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>
                            </td>
                            <td class="td price">
<c:set var="price" value="5551" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                            <td class="td download">
                                <span>Форматы:</span>
                                <ul class="formats">
                                    <li class="format">
                                        <button>epub</button>
                                    </li>
                                    <li class="format">
                                        <button>pdf</button>
                                    </li>
                                </ul>
                            </td>
                        </tr>
                        <tr class="tr">
                            <td class="td product">
<c:set var="bookTripletCoverUrl" value="resources/vb/img/tmp/book-5.jpg" scope="request"/>
<c:set var="bookTripletTitle" value="Полет над гнездом кукушки" scope="request"/>
<c:set var="bookTripletAuthor" value="Владимир Рудольфович" scope="request"/>
<jsp:include page="components/vb/book-triplet.jsp"/>
                            </td>
                            <td class="td date">
                                <span>
                                    11 марта 2015 года
                                </span>
                            </td>
                            <td class="td likes">
<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>
                            </td>
                            <td class="td price">
<c:set var="price" value="5" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                            <td class="td download">
                                <span>Форматы:</span>
                                <ul class="formats">
                                    <li class="format">
                                        <button>fb2</button>
                                    </li>
                                </ul>
                            </td>
                        </tr>
                        <tr class="tr">
                            <td class="td product">
<c:set var="bookTripletCoverUrl" value="resources/vb/img/tmp/book-1.jpg" scope="request"/>
<c:set var="bookTripletTitle" value="Как отравили Сталина" scope="request"/>
<c:set var="bookTripletAuthor" value="Александр Константинопольский" scope="request"/>
<jsp:include page="components/vb/book-triplet.jsp"/>
                            </td>
                            <td class="td date">
                                <span>
                                    7 октября 2016 года
                                </span>
                            </td>
                            <td class="td likes">
<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>
                            </td>
                            <td class="td price">
<c:set var="price" value="501" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                            <td class="td download">
                                <span>Форматы:</span>
                                <ul class="formats">
                                    <li class="format">
                                        <button>pdf</button>
                                    </li>
                                    <li class="format">
                                        <button>fb2</button>
                                    </li>
                                </ul>
                            </td>
                        </tr>
                        <tr class="tr">
                            <td class="td product">
<c:set var="bookTripletCoverUrl" value="resources/vb/img/tmp/book-2.jpg" scope="request"/>
<c:set var="bookTripletTitle" value="Далеко за горизонтом" scope="request"/>
<c:set var="bookTripletAuthor" value="Владимир Рудольфович" scope="request"/>
<jsp:include page="components/vb/book-triplet.jsp"/>
                            </td>
                            <td class="td date">
                                <span>
                                    1 января 2010 года
                                </span>
                            </td>
                            <td class="td likes">
<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>
                            </td>
                            <td class="td price">
<c:set var="price" value="515" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                            <td class="td download">
                                <span>Форматы:</span>
                                <ul class="formats">
                                    <li class="format">
                                        <button>epub</button>
                                    </li>
                                    <li class="format">
                                        <button>pdf</button>
                                    </li>
                                </ul>
                            </td>
                        </tr>
                        <tr class="tr">
                            <td class="td product">
<c:set var="bookTripletCoverUrl" value="resources/vb/img/tmp/book-3.jpg" scope="request"/>
<c:set var="bookTripletTitle" value="С широко открытыми глазами" scope="request"/>
<c:set var="bookTripletAuthor" value="Александр Иванов" scope="request"/>
<jsp:include page="components/vb/book-triplet.jsp"/>
                            </td>
                            <td class="td date">
                                <span>
                                    14 февраля 2012 года
                                </span>
                            </td>
                            <td class="td likes">
<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>
                            </td>
                            <td class="td price">
<c:set var="price" value="151" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                            <td class="td download">
                                <span>Форматы:</span>
                                <ul class="formats">
                                    <li class="format">
                                        <button>epub</button>
                                    </li>
                                </ul>
                            </td>
                        </tr>
                        <tr class="tr">
                            <td class="td product">
<c:set var="bookTripletCoverUrl" value="resources/vb/img/tmp/book-4.jpg" scope="request"/>
<c:set var="bookTripletTitle" value="Полет над гнездом кукушки" scope="request"/>
<c:set var="bookTripletAuthor" value="Александр Константинопольский" scope="request"/>
<jsp:include page="components/vb/book-triplet.jsp"/>
                            </td>
                            <td class="td date">
                                <span>
                                    6 мая 2009 года
                                </span>
                            </td>
                            <td class="td likes">
<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>
                            </td>
                            <td class="td price">
<c:set var="price" value="2251" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                            <td class="td download">
                                <span>Форматы:</span>
                                <ul class="formats">
                                    <li class="format">
                                        <button>epub</button>
                                    </li>
                                    <li class="format">
                                        <button>fb2</button>
                                    </li>
                                </ul>
                            </td>
                        </tr>
                        <tr class="tr">
                            <td class="td product">
<c:set var="bookTripletCoverUrl" value="resources/vb/img/tmp/book-5.jpg" scope="request"/>
<c:set var="bookTripletTitle" value="Летящие в облаках" scope="request"/>
<c:set var="bookTripletAuthor" value="Владимир Рудольфович" scope="request"/>
<jsp:include page="components/vb/book-triplet.jsp"/>
                            </td>
                            <td class="td date">
                                <span>
                                    26 сентября 2015 года
                                </span>
                            </td>
                            <td class="td likes">
<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>
                            </td>
                            <td class="td price">
<c:set var="price" value="511" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                            <td class="td download">
                                <span>Форматы:</span>
                                <ul class="formats">
                                    <li class="format">
                                        <button>epub</button>
                                    </li>
                                    <li class="format">
                                        <button>fb2</button>
                                    </li>
                                </ul>
                            </td>
                        </tr>
                        </tbody>
                    </table>

                    <!-- START (Тень под блоком) -->
                    <div class="shadow-under"></div>
                    <!-- END (Тень под блоком) -->
                </div>
            </div>

            <!-- START (Модальное окно) - 2-ая часть из 3-х (размещается в конце тега main) -->
            <!-- Имя modal-name класса и id поменять на свое -->
            <div class="modal receive-money" id="receive-money">
                <div class="body">
                    <a href="${currentURI}#close-modal" title="Закрыть" class="close-btn"></a>

                    <div class="columns">
                        <div class="column column-1">

                        </div>

                        <div class="column column-2">
                            <div class="receive-money">
                                <h2>Укажите, пожалуйста, реквизиты платежа</h2>

                                <!-- START (Группа-радиокнопок-аккордион) -->
                                <!-- Если на странице несколько таких элементов, то нужно обеспечить уникальность имен групп radio-кнопок (name), уникальность их id-ков и соответствующих for-ов у label-ов -->
                                <!-- Доп.кдасс:
                                        1) buy-book - уберет checkbox-group
                                        2) get-money - уберет robokassa-mode
                                -->
                                <div class="payment-modes get-money">
                                    <div class="payment-modes-accordion" id="pay-1">
                                        <input type="radio" name="payment-mode" class="radio-payment-mode radio-yandex-money-wallet-mode" id="yandex-money-wallet" value="yandex-money-wallet-mode" checked>
                                        <input type="radio" name="payment-mode" class="radio-payment-mode radio-yandex-money-card-mode" id="yandex-money-card" value="yandex-money-card-mode">
                                        <input type="radio" name="payment-mode" class="radio-payment-mode radio-webmoney-mode" id="webmoney" value="webmoney-mode">
                                        <input type="radio" name="payment-mode" class="radio-payment-mode radio-robokassa-mode" id="robokassa" value="robokassa-mode">

                                        <div class="payment-mode yandex-money-wallet-mode">
                                            <label class="figure" for="yandex-money-wallet"></label>
                                            <label class="text" for="yandex-money-wallet">
                                                Яндекс.Деньги Кошелек
                                            </label>
                                            <div class="info yandex-money-wallet-info">
                                                <form method="post" action="${currentURI}#">
                                                    <input type="hidden" name="payment-mode" value="yandex-money-wallet">
                                                    <div class="row">
                                                        <div class="cell yandex-money-wallet-id">
                                                            <label for="yandex-money-wallet-id">
                                                                <span class="text">
                                                                    Номер кошелька
                                                                </span>
                                                            </label>

                                                            <!-- START (Наклонные input-ы) -->
                                                            <!-- Для использования этого input-а в форме, нужно заполнить поле name -->
                                                            <div class="skew-outer">
                                                                <input class="skew-inner"
                                                                       type="text"
                                                                       id="yandex-money-wallet-id"
                                                                       name="yandex-money-wallet-id"
                                                                       required>
                                                            </div>
                                                            <!-- END (Наклонные input-ы) -->
                                                        </div>
                                                    </div>
                                                    <button type="submit" style="display: none;">
                                                        <!--
                                                            Перед тем как сабмитить форму по событию клик кнопки будет идти проверка
                                                            required полей и прочая валидация по паттернам, если таковая имеется
                                                        -->
                                                    </button>
                                                </form>
                                            </div>
                                        </div>

                                        <div class="payment-mode yandex-money-card-mode">
                                            <label class="figure" for="yandex-money-card"></label>
                                            <label class="text" for="yandex-money-card">
                                                Яндекс.Деньги Банковская карта
                                            </label>
                                            <div class="info card-info">
                                                <form method="post" action="${currentURI}#">
                                                    <input type="hidden" name="payment-mode" value="yandex-money-card">
                                                    <div class="row">
                                                        <div class="cell card-holder">
                                                            <label for="card-holder">
                                                                <span class="text">
                                                                    Имя владельца карты
                                                                </span>

                                                                <!-- START (Значок-вопросика с всплывающей подсказкой) -->
                                                                <div class="hint">
                                                                    <!-- Если убрать доп.класс blue, то знак вопросмка будет черного цвета -->
                                                                    <div class="question-mark blue"></div>
                                                                    <div class="bubble-before bubble-before-1"></div>
                                                                    <div class="bubble-before bubble-before-2"></div>
                                                                    <div class="bubble" data-init-width="355">
                                                                        <span class="content">
                                                                            Имя владельца карты должно быть введено в латинской транскрипции именно так, как оно указано на Вашей карте
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                                <!-- END (Значок-вопросика с всплывающей подсказкой) -->
                                                            </label>

                                                            <!-- START (Наклонные input-ы) -->
                                                            <!-- Для использования этого input-а в форме, нужно заполнить поле name -->
                                                            <div class="skew-outer">
                                                                <input class="skew-inner"
                                                                       type="text"
                                                                       id="card-holder"
                                                                       maxlength="26"
                                                                       name="card-holder"
                                                                       autofocus
                                                                       required
                                                                       placeholder="как оно указано на Вашей карте">
                                                            </div>
                                                            <!-- END (Наклонные input-ы) -->
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="cell card-num">
                                                            <label for="card-num">
                                                                <span class="text">
                                                                    Номер карты
                                                                </span>
                                                                <span id="card-type" class="card-type"></span>
                                                            </label>

                                                            <!-- START (Наклонные input-ы) -->
                                                            <!-- Для использования этого input-а в форме, нужно заполнить поле name -->
                                                            <div class="skew-outer">
                                                                <input class="skew-inner"
                                                                       type="text"
                                                                       id="card-num"
                                                                       name="card-cvc"
                                                                       required
                                                                       placeholder="16 цифр указанных на лицевой стороне">
                                                            </div>
                                                            <!-- END (Наклонные input-ы) -->
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="cell card-cvc">
                                                            <label for="card-cvc">
                                                                <span class="text">
                                                                    CVV
                                                                </span>

                                                                <!-- START (Значок-вопросика с всплывающей подсказкой) -->
                                                                <div class="hint">
                                                                    <!-- Если убрать доп.класс blue, то знак вопросмка будет черного цвета -->
                                                                    <div class="question-mark blue"></div>
                                                                    <div class="bubble-before bubble-before-1"></div>
                                                                    <div class="bubble-before bubble-before-2"></div>
                                                                    <div class="bubble" data-init-width="355">
                                                                        <span class="content">
                                                                            Код CVV - это трехзначное число, узнать которое Вы можете посмотрев на обратную сторону банковской карты. Обычно CVV напечатано на полосе для подписи
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                                <!-- END (Значок-вопросика с всплывающей подсказкой) -->
                                                            </label>

                                                            <!-- START (Наклонные input-ы) -->
                                                            <!-- Для использования этого input-а в форме, нужно заполнить поле name -->
                                                            <div class="skew-outer">
                                                                <input class="skew-inner"
                                                                       type="text"
                                                                       id="card-cvc"
                                                                       name="card-cvc"
                                                                       pattern="\d*"
                                                                       required
                                                                       placeholder="xxx">
                                                            </div>
                                                            <!-- END (Наклонные input-ы) -->
                                                        </div>
                                                        <div class="cell card-expired">
                                                            <label for="card-expired">
                                                                <span class="text">
                                                                    Срок действия
                                                                </span>
                                                            </label>

                                                            <!-- START (Наклонные input-ы) -->
                                                            <!-- Для использования этого input-а в форме, нужно заполнить поле name -->
                                                            <div class="skew-outer">
                                                                <input class="skew-inner"
                                                                       type="text"
                                                                       id="card-expired"
                                                                       maxlength="9"
                                                                       name="card-expired"
                                                                       required
                                                                       placeholder="MM / YY">
                                                            </div>
                                                            <!-- END (Наклонные input-ы) -->
                                                        </div>
                                                    </div>
                                                    <button type="submit" style="display: none;">
                                                        <!--
                                                            Перед тем как сабмитить форму по событию клик кнопки будет идти проверка
                                                            required полей и прочая валидация по паттернам, если таковая имеется
                                                        -->
                                                    </button>
                                                </form>
                                            </div>
                                        </div>

                                        <div class="payment-mode webmoney-mode">
                                            <label class="figure" for="webmoney"></label>
                                            <label class="text" for="webmoney">
                                                WebMoney
                                            </label>
                                            <div class="info webmoney-info">
                                                <form method="post" action="${currentURI}#">
                                                    <input type="hidden" name="payment-mode" value="webmoney">
                                                    <div class="row">
                                                        <div class="cell webmoney-wallet-id">
                                                            <label for="webmoney-wallet-id">
                                                                <span class="text">
                                                                    Номер кошелька
                                                                </span>
                                                            </label>

                                                            <!-- START (Наклонные input-ы) -->
                                                            <!-- Для использования этого input-а в форме, нужно заполнить поле name -->
                                                            <div class="skew-outer">
                                                                <input class="skew-inner"
                                                                       type="text"
                                                                       id="webmoney-wallet-id"
                                                                       name="webmoney-wallet-id"
                                                                       required>
                                                            </div>
                                                            <!-- END (Наклонные input-ы) -->
                                                        </div>
                                                    </div>
                                                    <button type="submit" style="display: none;">
                                                        <!--
                                                            Перед тем как сабмитить форму по событию клик кнопки будет идти проверка
                                                            required полей и прочая валидация по паттернам, если таковая имеется
                                                        -->
                                                    </button>
                                                </form>
                                            </div>
                                        </div>

                                        <div class="payment-mode robokassa-mode">
                                            <label class="figure" for="robokassa"></label>
                                            <label class="text" for="robokassa">
                                                RoboKassa
                                            </label>
                                            <div class="info robokassa-info">
                                                <form method="post" action="${currentURI}#">
                                                    <input type="hidden" name="payment-mode" value="robokassa">
                                                    <button type="submit" style="display: none;">
                                                        <!--
                                                            Перед тем как сабмитить форму по событию клик кнопки будет идти проверка
                                                            required полей и прочая валидация по паттернам, если таковая имеется
                                                        -->
                                                    </button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="checkbox-group">
                                        <input type="checkbox" class="save-payment-details" name="save-payment-details" id="save-payment-details">
                                        <input type="checkbox" class="allow-auto-payment" name="allow-auto-payment" id="allow-auto-payment">
                                        <label class="text-checkbox save-payment-details" for="save-payment-details">
                                            <span class="item checkbox"></span>
                                            <span class="item text">
                                                Сохранить реквизиты платежа
                                            </span>
                                        </label>
                                        <label class="text-checkbox allow-auto-payment" for="allow-auto-payment">
                                            <span class="item checkbox"></span>
                                            <span class="item text">
                                                Разрешить автоплатеж
                                            </span>
                                        </label>
                                    </div>
                                </div>

<c:set var="totalCostValue" value="517" scope="request"/>
<c:set var="totalCostCurrency" value="руб." scope="request"/>
<jsp:include page="components/vb/total-cost.jsp"/>

                                <!-- Все кнопки должны быть завернуты в тег класса buttons -->
                                <!-- Кнопка, отмеченная классом payment-mode-btn, используется для submit-а одной из форм платежа -->
                                <div class="buttons">
                                    <!-- START (Стилизованные кнопки и ссылки, похожие на кнопки) -->
                                    <button class="btn payment-mode-btn" type="submit" id="submit">
                                        Получить деньги
                                    </button>
                                    <!-- END (Стилизованные кнопки и ссылки, похожие на кнопки) -->

                                    <!-- START (Стилизованные кнопки и ссылки, похожие на кнопки) -->
                                    <a class="btn close-btn" href="${currentURI}#close-modal">
                                        Отменить
                                    </a>
                                    <!-- END (Стилизованные кнопки и ссылки, похожие на кнопки) -->
                                </div>
                                <!-- END (Группа-радиокнопок-аккордион) -->
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