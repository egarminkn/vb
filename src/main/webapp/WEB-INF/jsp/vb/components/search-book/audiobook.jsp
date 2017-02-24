<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="item search-result-item audiobook">
    <div class="cover-play">
        <a href="audiobook/${audiobookId}">
            <img class="cover" src="${audiobookCoverUrl}" width="137" height="137">
        </a>

        <!-- Сам jPlayer -->
        <div id="jquery-jplayer-${audiobookId}" class="cp-jplayer"></div>
        <!-- Интерфейс jPlayer-а -->
        <div id="cp-container-${audiobookId}" class="cp-container">
            <div class="cp-buffer-holder"> <!-- .cp-gt50 only needed when buffer is > than 50% -->
                <div class="cp-buffer-1"></div>
                <div class="cp-buffer-2"></div>
            </div>
            <div class="cp-progress-holder"> <!-- .cp-gt50 only needed when progress is > than 50% -->
                <div class="cp-progress-1"></div>
                <div class="cp-progress-2"></div>
            </div>
            <div class="cp-circle-control"></div>
            <ul class="cp-controls">
                <li>
                    <a class="cp-play">
                        <span class="text">Прослушать отрывок</span>
                    </a>
                </li>
                <li>
                    <a class="cp-pause">
                        <span class="text">Поставить на паузу</span>
                    </a>
                </li>
            </ul>
        </div>
        <!-- Подключение jPlayer-а -->
        <script type="text/javascript">
            $(function(){
                var myCirclePlayer = new CirclePlayer("#jquery-jplayer-${audiobookId}",
                    {
                        m4a: "http://www.jplayer.org/audio/m4a/Miaow-07-Bubble.m4a",
                        oga: "http://www.jplayer.org/audio/ogg/Miaow-07-Bubble.ogg"
                    },
                    {
                        cssSelectorAncestor: "#cp-container-${audiobookId}",
                        wmode: "window",
                        keyEnabled: true
                    });
            });
        </script>
    </div>
    <div class="about">
        <div class="title">
            <a href="audiobook/${audiobookId}">
                ${audiobookTitle}
            </a>
        </div>
        <div class="author">
            <c:set var="audiobookAuthorsLastIndex" value="${audiobookAuthors.size() - 1}"/>
            <c:forEach var="audiobookAuthor" items="${audiobookAuthors}" varStatus="loop">
                <jsp:useBean id="audiobookAuthor" class="org.verygroup.verybook.dto.searchbook.AudiobookAuthor"/>
                <a href="author/${audiobookAuthor.id}">
                    ${audiobookAuthor.name}
                </a>
                (${audiobookAuthor.type.getName()})${loop.index != audiobookAuthorsLastIndex ? ',' : ''}
            </c:forEach>
        </div>
        <div class="description">
            ${audiobookDescription}
        </div>
        <div class="footer">
            <div class="date">
                Дата выхода:
                <span>${audiobookPublishDate}</span>
                года
            </div>
            <div class="formats">
                Форматы:
                <span>
                    <c:set var="audiobookFormatsLastIndex" value="${audiobookFormats.size() - 1}"/>
                    <c:forEach var="audiobookFormat" items="${audiobookFormats}" varStatus="loop">
                        ${audiobookFormat.getFormatName().toUpperCase()}${loop.index != audiobookFormatsLastIndex ? ',' : ''}
                    </c:forEach>
                </span>
            </div>
        </div>
    </div>
    <div class="actions">
<jsp:include page="../vb/price-cart-btn.jsp"/>
<jsp:include page="../vb/rating-5-stars.jsp"/>

        <div class="reviews">
            <a href="audiobook/${audiobookId}#reviews">
                Отзывы
                (<span>${audiobookReviewsCount}</span>)
            </a>
        </div>
    </div>
</div>