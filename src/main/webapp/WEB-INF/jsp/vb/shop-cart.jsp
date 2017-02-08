<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="bodyClass" value="hidden-partners-on-shelf" scope="request"/>
<c:set var="mainClass" value="shop-cart" scope="request"/>
<c:set var="sloganAdditionalClass" value="" scope="request"/>
<c:set var="isShopCart" value="true" scope="request"/>

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
<c:set var="isCartMain" value="true" scope="request"/>
                                    <c:forEach var="mainShopCartRow" items="${mainShopCartRows}">
                                        <jsp:useBean id="mainShopCartRow" class="org.verygroup.verybook.dto.shopcart.ShopCartRow"/>
<c:set var="bookTripletCoverUrl" value="${mainShopCartRow.bookCoverUrl}" scope="request"/>
<c:set var="bookTripletTitle" value="${mainShopCartRow.bookTitle}" scope="request"/>
<c:set var="bookTripletAuthor" value="${mainShopCartRow.bookAuthor}" scope="request"/>
<c:set var="price" value="${mainShopCartRow.priceValue}" scope="request"/>
<jsp:include page="components/shop-cart/shop-cart-row.jsp"/>
                                    </c:forEach>
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

<c:set var="paymentModesAddClass" value="buy-book" scope="request"/>
<c:set var="totalCostValue" value="800" scope="request"/>
<c:set var="totalCostCurrency" value="руб." scope="request"/>
<c:set var="paymentModesButtons" value='
    <label class="btn" for="select-goods">
        Вернуться к списку покупок
    </label>
    <label class="btn payment-mode-btn" for="enjoy-goods">
        Скачать и оплатить
    </label>
' scope="request"/>
<jsp:include page="components/vb/payment-modes.jsp"/>
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
<c:set var="isCartMain" value="false" scope="request"/>
                            <c:forEach var="spareShopCartRow" items="${spareShopCartRows}">
                                <jsp:useBean id="spareShopCartRow" class="org.verygroup.verybook.dto.shopcart.ShopCartRow"/>
<c:set var="bookTripletCoverUrl" value="${spareShopCartRow.bookCoverUrl}" scope="request"/>
<c:set var="bookTripletTitle" value="${spareShopCartRow.bookTitle}" scope="request"/>
<c:set var="bookTripletAuthor" value="${spareShopCartRow.bookAuthor}" scope="request"/>
<c:set var="price" value="${spareShopCartRow.priceValue}" scope="request"/>
<jsp:include page="components/shop-cart/shop-cart-row.jsp"/>
                            </c:forEach>
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