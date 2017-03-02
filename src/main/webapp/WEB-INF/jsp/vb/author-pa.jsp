<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="fn" uri="http://verybook.verygroup.org/functions" %>

<%@page import="org.verygroup.verybook.RatingsType" %>

<c:set var="bodyClass" value="hidden-partners-on-shelf" scope="request"/>
<c:set var="mainClass" value="author-pa" scope="request"/>
<c:set var="sloganAdditionalClass" value="" scope="request"/>

<jsp:include page="fragments/header.jsp"/>

            <div class="author">
                <h1 class="title">
                    Личный кабинет
                </h1>
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
<c:set var="isAuthorPhotoLink" value="false" scope="request"/>
<c:set var="authorPhotoUrl" value="${currentUserConnection.imageUrl}" scope="request"/>
<jsp:include page="components/vb/author-photo.jsp"/>

                                <div class="name">
                                    <div class="fullname">
                                        ${currentUserDisplayName}
                                    </div>
                                    <div class="login">
                                        ${currentUserDisplayName}
                                    </div>
                                </div>
                                <a class="edit" href="${currentURL}#"></a>
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
<c:set var="ratingsType" value="${RatingsType.AUTHOR}" scope="request"/>
<jsp:include page="components/vb/ratings.jsp"/>
                            </div>
                        </div>
                        <div class="column column-2">
                            <div class="row row-1">
                                <div class="title">
                                    Личные данные
                                </div>
                                <a class="edit" href="${currentURL}#"></a>
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
                                <a class="edit" href="${currentURL}#"></a>
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
                                    <a href="${currentURL}#receive-money" class="modal-btn">
                                        Получить деньги
                                    </a>
                                    <!-- END (Модальное окно) - 1-ая часть из 3-х -->
                                </div>
                            </div>
                            <div class="row row-3">
                                <div class="profile-completeness">
                                    <a class="text" href="${currentURL}#">
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
                        <h2 class="title">
                            Мои книги
                        </h2>
                        <a class="create-book" href="${currentURL}#">
                            <span class="plus"></span>
                            <span class="text">
                                Создать новую книгу
                            </span>
                        </a>
                    </label>
                    <label class="read" for="read">
                        <h2 class="title">
                            Купленные книги
                        </h2>
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
                            <c:forEach var="writtenBookRow" items="${writtenBookRows}">
                                <jsp:useBean id="writtenBookRow" class="org.verygroup.verybook.dto.authorpa.WrittenBookRow"/>
<c:set var="bookCoverUrl" value="${writtenBookRow.bookCoverUrl}" scope="request"/>
<c:set var="bookTitle" value="${writtenBookRow.bookTitle}" scope="request"/>
<c:set var="bookStatusAddClass" value="${writtenBookRow.bookStatusAddClass}" scope="request"/>
<c:set var="bookRejectReason" value="${writtenBookRow.bookRejectReason}" scope="request"/>
<c:set var="bookFreeDownloadsCount" value="${writtenBookRow.bookFreeDownloadsCount}" scope="request"/>
<c:set var="bookPaidDownloadsCount" value="${writtenBookRow.bookPaidDownloadsCount}" scope="request"/>
<c:set var="bookLikesCount" value="${writtenBookRow.bookLikesCount}" scope="request"/>
<c:set var="bookDislikesCount" value="${writtenBookRow.bookDislikesCount}" scope="request"/>
<c:set var="bookCurrentPriceValue" value="${writtenBookRow.bookCurrentPriceValue}" scope="request"/>
<c:set var="bookTotalProfitValue" value="${writtenBookRow.bookTotalProfitValue}" scope="request"/>
<c:set var="bookActions" value="${writtenBookRow.bookActions}" scope="request"/>
<jsp:include page="components/author-pa/written-book-row.jsp"/>
                            </c:forEach>
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
                            <c:forEach var="readBookRow" items="${readBookRows}">
                                <jsp:useBean id="readBookRow" class="org.verygroup.verybook.dto.authorpa.ReadBookRow"/>
<c:set var="bookCoverUrl" value="${readBookRow.bookCoverUrl}" scope="request"/>
<c:set var="bookTitle" value="${readBookRow.bookTitle}" scope="request"/>
<c:set var="bookAuthor" value="${readBookRow.bookAuthor}" scope="request"/>
<c:set var="bookPublishDate" value="${fn:formatDateToLongStr(readBookRow.bookPublishDate)}" scope="request"/>
<c:set var="bookLikesCount" value="${readBookRow.bookLikesCount}" scope="request"/>
<c:set var="bookDislikesCount" value="${readBookRow.bookDislikesCount}" scope="request"/>
<c:set var="bookBuyingPriceValue" value="${readBookRow.bookBuyingPriceValue}" scope="request"/>
<c:set var="bookFormats" value="${readBookRow.bookFormats}" scope="request"/>
<jsp:include page="components/author-pa/read-book-row.jsp"/>
                            </c:forEach>
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
                    <a href="${currentURL}#close-modal" title="Закрыть" class="close-btn"></a>

                    <div class="columns">
                        <div class="column column-1">

                        </div>

                        <div class="column column-2">
                            <div class="receive-money">
                                <h2>Укажите, пожалуйста, реквизиты платежа</h2>

<c:set var="paymentModesAddClass" value="get-money" scope="request"/>
<c:set var="totalCostValue" value="517" scope="request"/>
<c:set var="totalCostCurrency" value="руб." scope="request"/>
<c:set var="paymentModesButtons" value='
    <!-- START (Стилизованные кнопки и ссылки, похожие на кнопки) -->
    <button class="btn payment-mode-btn" type="submit" id="submit">
        Получить деньги
    </button>
    <!-- END (Стилизованные кнопки и ссылки, похожие на кнопки) -->

    <!-- START (Стилизованные кнопки и ссылки, похожие на кнопки) -->
    <a class="btn close-btn" href="${currentURL}#close-modal">
        Отменить
    </a>
    <!-- END (Стилизованные кнопки и ссылки, похожие на кнопки) -->
' scope="request"/>
<jsp:include page="components/vb/payment-modes.jsp"/>
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