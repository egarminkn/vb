<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!-- START (Группа-радиокнопок-аккордион) -->
<!-- Если на странице несколько таких элементов, то нужно обеспечить уникальность имен групп radio-кнопок (name), уникальность их id-ков и соответствующих for-ов у label-ов -->
<!-- Доп.кдасс:
        1) buy-book - уберет checkbox-group
        2) get-money - уберет robokassa-mode
-->
<div class="payment-modes ${paymentModesAddClass}">
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

<c:set var="isQuestionMarkBlue" value="true" scope="request"/>
<c:set var="bubbleContent" value="Имя владельца карты должно быть введено в латинской транскрипции именно так, как оно указано на Вашей карте" scope="request"/>
<jsp:include page="question-mark-bubble.jsp"/>
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

<c:set var="isQuestionMarkBlue" value="true" scope="request"/>
<c:set var="bubbleContent" value="Код CVV - это трехзначное число, узнать которое Вы можете посмотрев на обратную сторону банковской карты. Обычно CVV напечатано на полосе для подписи" scope="request"/>
<jsp:include page="question-mark-bubble.jsp"/>
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

<jsp:include page="total-cost.jsp"/>

<!-- Все кнопки должны быть завернуты в тег класса buttons -->
<!-- Кнопка, отмеченная классом payment-mode-btn, используется для submit-а одной из форм платежа -->
<div class="buttons">
    ${paymentModesButtons}
</div>
<!-- END (Группа-радиокнопок-аккордион) -->