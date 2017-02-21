<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="bodyClass" value="hidden-partners-on-shelf" scope="request"/>
<c:set var="mainClass" value="index-2" scope="request"/>
<c:set var="sloganAdditionalClass" value="help-page" scope="request"/>
<c:set var="isHelp" value="true" scope="request"/>

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
                    <c:forEach var="quoteItem" items="${quoteItems}" varStatus="loop">
                        <jsp:useBean id="quoteItem" class="org.verygroup.verybook.dto.index2.QuoteItem"/>
<c:set var="quoteNumber" value="${loop.index + 1}" scope="request"/>
<c:set var="quoteContent" value="${quoteItem.quoteContent}" scope="request"/>
<c:set var="quoteAuthor" value="${quoteItem.quoteAuthor}" scope="request"/>
<jsp:include page="components/index-2/block-quote.jsp"/>
                    </c:forEach>
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
                    <img src="resources/vb/img/index-2/handshake.png" width="110" height="110">
                    <h2>
                        Стань автором
                    </h2>
                </label>
                <label class="help-slide-mark help-slide-mark-2" for="help-slide-2">
                    <img src="resources/vb/img/index-2/paper-plane.png" width="109" height="111">
                    <h2>
                        Опубликуй книгу
                    </h2>
                </label>
                <label class="help-slide-mark help-slide-mark-3" for="help-slide-3">
                    <img src="resources/vb/img/index-2/yandex-money.jpg" width="91" height="77">
                    <h2>
                        Начни зарабатывать
                    </h2>
                </label>
            </div>

<jsp:include page="components/index-2/help-slide-1.jsp"/>
<jsp:include page="components/index-2/help-slide-2.jsp"/>
<jsp:include page="components/index-2/help-slide-3.jsp"/>
            <!-- END (Слайды помощи) -->

            <div class="btn-wrapper">
                <a class="btn" href="create-ebook">
                    Хочу создать книгу
                </a>
            </div>
        </main>

<jsp:include page="fragments/footer.jsp"/>