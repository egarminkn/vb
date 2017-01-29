<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="bodyClass" value="hidden-partners-on-shelf" scope="request"/>
<c:set var="mainClass" value="shop-cart" scope="request"/>
<c:set var="sloganAdditionalClass" value="" scope="request"/>

<jsp:include page="fragments/header.jsp"/>

            <div class="column-1">
                <div class="header">
                    <h1>Оформление заказа</h1>

                    <!-- START (Горизонтальное меню переходов на id-шники той же страницы) -->
                    <ul class="nav">
                        <li class="nav-item">
                            <a href="${currentURI}#main-cart">
                                Корзина
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="${currentURI}#spare-cart">
                                Запасная тележка
                            </a>
                        </li>
                    </ul>
                    <!-- END (Горизонтальное меню переходов на id-шники той же страницы) -->
                </div>

                <div class="main-cart" id="main-cart">
                    <div class="slider-outer">
                        <input type="radio" name="buy-process" class="buy-process select-goods" id="select-goods" checked>
                        <input type="radio" name="buy-process" class="buy-process payment-goods" id="payment-goods" >
                        <input type="radio" name="buy-process" class="buy-process enjoy-goods" id="enjoy-goods" >

                        <div class="slider-inner select-goods">
                            <h2>Корзина</h2>

                            <table class="tbl">
                                <thead class="thead">
                                <tr class="tr">
                                    <th class="th product">
                                        Книга
                                    </th>
                                    <th class="th price">
                                        Цена
                                    </th>
                                    <th class="th to-spare-cart">
                                        Выложить из корзины
                                    </th>
                                </tr>
                                </thead>
                                <tbody class="tbody">
                                <tr class="tr">
                                    <td class="td product">
                                        <!-- START (Триплет ссылок: обложка-название-автор) -->
                                        <div class="book-triplet">
                                            <div class="cover">
                                                <a class="to-book" href="${currentURI}#">
                                                    <img src="resources/vb/img/tmp/book-1.jpg" width="230" height="368">
                                                </a>
                                            </div>
                                            <div class="title-author">
                                                <a class="to-book" href="${currentURI}#">
                                                    <span class="text">
                                                        Полет над гнездом кукушки
                                                    </span>
                                                </a>
                                                <a class="to-author" href="${currentURI}#">
                                                    <span class="text">
                                                        Александр Константинопольский
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                        <!-- END (Триплет ссылок: обложка-название-автор) -->
                                    </td>
                                    <td class="td price">
<c:set var="price" value="415" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                                    </td>
                                    <td class="td to-spare-cart">
                                        <a class="to-spare-cart" href="${currentURI}#" title="Отложить на неопределенный срок"></a>
                                    </td>
                                </tr>
                                <tr class="tr">
                                    <td class="td product">
                                        <!-- START (Триплет ссылок: обложка-название-автор) -->
                                        <div class="book-triplet">
                                            <div class="cover">
                                                <a class="to-book" href="${currentURI}#">
                                                    <img src="resources/vb/img/tmp/book-2.jpg" width="230" height="368">
                                                </a>
                                            </div>
                                            <div class="title-author">
                                                <a class="to-book" href="${currentURI}#">
                                                    <span class="text">
                                                        Как рожать на вершине скалы
                                                    </span>
                                                </a>
                                                <a class="to-author" href="${currentURI}#">
                                                    <span class="text">
                                                        Мария Малиновская
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                        <!-- END (Триплет ссылок: обложка-название-автор) -->
                                    </td>
                                    <td class="td price">
<c:set var="price" value="0" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                                    </td>
                                    <td class="td to-spare-cart">
                                        <a class="to-spare-cart" href="${currentURI}#" title="Отложить на неопределенный срок"></a>
                                    </td>
                                </tr>
                                <tr class="tr">
                                    <td class="td product">
                                        <!-- START (Триплет ссылок: обложка-название-автор) -->
                                        <div class="book-triplet">
                                            <div class="cover">
                                                <a class="to-book" href="${currentURI}#">
                                                    <img src="resources/vb/img/tmp/book-3.jpg" width="230" height="368">
                                                </a>
                                            </div>
                                            <div class="title-author">
                                                <a class="to-book" href="${currentURI}#">
                                                    <span class="text">
                                                        Кто подставил кролика роджера?
                                                    </span>
                                                </a>
                                                <a class="to-author" href="${currentURI}#">
                                                    <span class="text">
                                                        Владимир Вольфович Константинопольский
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                        <!-- END (Триплет ссылок: обложка-название-автор) -->
                                    </td>
                                    <td class="td price">
<c:set var="price" value="230" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                                    </td>
                                    <td class="td to-spare-cart">
                                        <a class="to-spare-cart" href="${currentURI}#" title="Отложить на неопределенный срок"></a>
                                    </td>
                                </tr>
                                </tbody>
                            </table>

                            <div class="buttons">
                                <!--
                                    hidden - это доп.класс для того чтобы,
                                             если общая сумма покупки равно 0, то показывать кнопку "Скачать",
                                             в противном случае показывать кнопку "Перейти к оплате"
                                -->
                                <label class="btn " for="payment-goods">
                                    Перейти к оплате
                                </label>
                                <label class="btn " for="enjoy-goods">
                                    Скачать
                                </label>
                            </div>
                        </div>

                        <div class="slider-inner payment-goods">
                            <h2>Выбор способа оплаты</h2>

                            <!-- START (Группа-радиокнопок-аккордион) -->
                            <!-- Если на странице несколько таких элементов, то нужно обеспечить уникальность имен групп radio-кнопок (name), уникальность их id-ков и соответствующих for-ов у label-ов -->
                            <!-- Доп.кдасс:
                                    1) buy-book - уберет checkbox-group
                                    2) get-money - уберет robokassa-mode
                            -->
                            <div class="payment-modes buy-book">
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

                            <!-- START (Ценник итоговой стоимости) -->
                            <div class="cost">
                                <span class="text">Сумма:</span>
                                <span class="value">800</span>
                                <span class="currency">руб.</span>
                            </div>
                            <!-- END (Ценник итоговой стоимости) -->

                            <!-- Все кнопки должны быть завернуты в тег класса buttons -->
                            <!-- Кнопка, отмеченная классом payment-mode-btn, используется для submit-а одной из форм платежа -->
                            <div class="buttons">
                                <label class="btn" for="select-goods">
                                    Вернуться к списку покупок
                                </label>
                                <label class="btn payment-mode-btn" for="enjoy-goods">
                                    Скачать и оплатить
                                </label>
                            </div>
                            <!-- END (Группа-радиокнопок-аккордион) -->
                        </div>

                        <div class="slider-inner enjoy-goods">
                            <h2>Желаем Вам приятного чтения</h2>

                            <div class="info">
                                <div class="title">
                                    Спасибо, что пользуетесь нашим сервисом!
                                </div>
                                <div class="warn">
                                    <span class="row-1">
                                        Если файлы не начали скачиваться - не беспокойтесь!
                                    </span>
                                    <span class="row-2">
                                        <!-- START (Надпись-предупреждение) -->
                                        <div class="warning">
                                            Просто перейдите в <a class="pa" href="${currentURI}#">личный кабинет</a> и Вы увидите эти книги в списке купленных, где их можно многократно скачивать без каких-либо ограничений.
                                        </div>
                                        <!-- END (Надпись-предупреждение) -->
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- START (Тень под блоком) -->
                    <div class="shadow-under"></div>
                    <!-- END (Тень под блоком) -->
                </div>

                <div class="spare-cart" id="spare-cart">
                    <h2>Книги, которые могут Вас заинтересовать</h2>

                    <table class="tbl">
                        <thead class="thead">
                        <tr class="tr">
                            <th class="th product">
                                Книга
                            </th>
                            <th class="th price">
                                Цена
                            </th>
                            <th class="th to-main-cart">
                                Переложить в корзину
                            </th>
                        </tr>
                        </thead>
                        <tbody class="tbody">
                        <tr class="tr">
                            <td class="td product">
                                <!-- START (Триплет ссылок: обложка-название-автор) -->
                                <div class="book-triplet">
                                    <div class="cover">
                                        <a class="to-book" href="${currentURI}#">
                                            <img src="resources/vb/img/tmp/book-1.jpg" width="230" height="368">
                                        </a>
                                    </div>
                                    <div class="title-author">
                                        <a class="to-book" href="${currentURI}#">
                                            <span class="text">
                                                Полет над гнездом кукушки
                                            </span>
                                        </a>
                                        <a class="to-author" href="${currentURI}#">
                                            <span class="text">
                                                Александр Константинопольский
                                            </span>
                                        </a>
                                    </div>
                                </div>
                                <!-- END (Триплет ссылок: обложка-название-автор) -->
                            </td>
                            <td class="td price">
<c:set var="price" value="415" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                            <td class="td to-main-cart">
                                <a class="to-main-cart" href="${currentURI}#" title="Переложить в корзину"></a>
                            </td>
                        </tr>
                        <tr class="tr">
                            <td class="td product">
                                <!-- START (Триплет ссылок: обложка-название-автор) -->
                                <div class="book-triplet">
                                    <div class="cover">
                                        <a class="to-book" href="${currentURI}#">
                                            <img src="resources/vb/img/tmp/book-2.jpg" width="230" height="368">
                                        </a>
                                    </div>
                                    <div class="title-author">
                                        <a class="to-book" href="${currentURI}#">
                                            <span class="text">
                                                Как рожать на вершине скалы
                                            </span>
                                        </a>
                                        <a class="to-author" href="${currentURI}#">
                                            <span class="text">
                                                Мария Малиновская
                                            </span>
                                        </a>
                                    </div>
                                </div>
                                <!-- END (Триплет ссылок: обложка-название-автор) -->
                            </td>
                            <td class="td price">
<c:set var="price" value="0" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                            <td class="td to-main-cart">
                                <a class="to-main-cart" href="${currentURI}#" title="Переложить в корзину"></a>
                            </td>
                        </tr>
                        <tr class="tr">
                            <td class="td product">
                                <!-- START (Триплет ссылок: обложка-название-автор) -->
                                <div class="book-triplet">
                                    <div class="cover">
                                        <a class="to-book" href="${currentURI}#">
                                            <img src="resources/vb/img/tmp/book-3.jpg" width="230" height="368">
                                        </a>
                                    </div>
                                    <div class="title-author">
                                        <a class="to-book" href="${currentURI}#">
                                            <span class="text">
                                                Кто подставил кролика роджера?
                                            </span>
                                        </a>
                                        <a class="to-author" href="${currentURI}#">
                                            <span class="text">
                                                Владимир Вольфович Константинопольский
                                            </span>
                                        </a>
                                    </div>
                                </div>
                                <!-- END (Триплет ссылок: обложка-название-автор) -->
                            </td>
                            <td class="td price">
<c:set var="price" value="230" scope="request"/>
<jsp:include page="components/vb/price-ruble-sign.jsp"/>
                            </td>
                            <td class="td to-main-cart">
                                <a class="to-main-cart" href="${currentURI}#" title="Переложить в корзину"></a>
                            </td>
                        </tr>
                        </tbody>
                    </table>

<jsp:include page="components/vb/show-more-btn.jsp"/>

                    <!-- START (Тень под блоком) -->
                    <div class="shadow-under"></div>
                    <!-- END (Тень под блоком) -->
                </div>
            </div>

            <div class="column-2 continue-shopping-column">
<jsp:include page="components/vb/to-search-book.jsp"/>

<jsp:include page="components/vb/spec-ebook.jsp"/>
            </div>
        </main>

<jsp:include page="fragments/footer.jsp"/>