<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!-- START (Баннер "Специальные предложения" для аудиокниг) -->
<div class="item spec audiobook">
    <div class="header">
        <h3 class="title">
            Специальные предложения
        </h3>
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