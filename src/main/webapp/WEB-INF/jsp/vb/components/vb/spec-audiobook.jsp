<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page import="org.verygroup.verybook.repository.SearchQueryDictionary" %>
<%@page import="org.verygroup.verybook.BookType" %>
<%@page import="org.verygroup.verybook.BookCategory" %>

<!-- START (Баннер "Специальные предложения" для аудиокниг) -->
<div class="item spec audiobook">
    <div class="header">
        <h3 class="title">
            Специальные предложения
        </h3>
        <div class="arrow-down"></div>
    </div>
    <div class="main">
        <c:forEach var="specAudiobookItem" items="${specAudiobookItems}">
            <jsp:useBean id="specAudiobookItem" class="org.verygroup.verybook.dto.SpecBookItem"/>

            <div class="spec-book">
                <a class="cover-rating" href="audiobook/${specAudiobookItem.specBookId}">
                    <img class="cover" src="${specAudiobookItem.specBookCoverUrl}" width="137" height="137">
                    <div class="rating">
                        <%--
                            Используется локаль браузера, которая получается из реквеста в его хедере:
                            Accept-Language: ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4
                            Но если локаль все же менять, то делается это так:
                                <fmt:setLocale value="en_US" scope="session" />
                                <fmt:setLocale value="ru_RU" scope="session" />
                            где scope="session" - обязательное условие.
                        --%>
                        <fmt:formatNumber pattern="#,#0.0" value="${specAudiobookItem.specBookRating}"/>
                    </div>
                </a>
                <div class="content">
                    <a class="title" href="audiobook/${specAudiobookItem.specBookId}">
                        <span class="text">
                            ${specAudiobookItem.specBookTitle}
                        </span>
                    </a>
                    <a class="author-name" href="author/${specAudiobookItem.specBookAuthorId}">
                        <span class="text">
                            ${specAudiobookItem.specBookAuthorName}
                        </span>
                    </a>
                    <div class="price">
                        <span class="value">
                            ${specAudiobookItem.specBookPriceValue}
                        </span>
                        <span class="currency">
                            ${specAudiobookItem.specBookPriceCurrency}
                        </span>
                    </div>
                </div>
            </div>
        </c:forEach>

        <a class="show-all" href='${"search-book?search-query="
                                        .concat(SearchQueryDictionary.CATEGORY)
                                        .concat(": \"")
                                        .concat(BookCategory.PROMO.value)
                                        .concat("\" ")
                                        .concat(SearchQueryDictionary.TYPE)
                                        .concat(": \"")
                                        .concat(BookType.AUDIOBOOK.value)
                                        .concat("\"")}'>
            <span class="text">
                Показать все предложения
            </span>
        </a>
    </div>
</div>
<!-- END (Баннер "Специальные предложения" для аудиокниг) -->