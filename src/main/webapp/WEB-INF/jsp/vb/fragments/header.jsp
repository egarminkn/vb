<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="currentURI" value="${requestScope['javax.servlet.forward.request_uri']}" scope="request"/>

<!DOCTYPE html>
<html lang="ru">
    <head>
        <meta charset="UTF-8" />
        <title>Verybook - стань автором уже сейчас</title>
        <base href="${pageContext.request.contextPath}/"/>
        <meta name="description" content="Простейший способ опубликовать книгу" />
        <meta name="keywords" content="читать новые книги, бесплатно, решать судьбу книг, публиковать книги" />

        <!--
        <meta name="google" content="notranslate" />
        <meta http-equiv="refresh" content="30" />
        <meta http-equiv="refresh" content="30;URL='http://website.com'" />
        <meta name="robots" content="noindex, nofollow" />
        -->

        <!-- PNG-иконки -->
        <link href="resources/vb/img/favicon/favicon-16x16.png" type="image/png" rel="icon" sizes="16x16">
        <link href="resources/vb/img/favicon/favicon-32x32.png" type="image/png" rel="icon" sizes="32x32">
        <link href="resources/vb/img/favicon/favicon-48x48.png" type="image/png" rel="icon" sizes="48x48">
        <link href="resources/vb/img/favicon/favicon-96x96.png" type="image/png" rel="icon" sizes="96x96">
        <link href="resources/vb/img/favicon/favicon-128x128.png" type="image/png" rel="icon" sizes="128x128">
        <link href="resources/vb/img/favicon/favicon-160x160.png" type="image/png" rel="icon" sizes="160x160">
        <link href="resources/vb/img/favicon/favicon-196x196.png" type="image/png" rel="icon" sizes="196x196">
        <link href="resources/vb/img/favicon/favicon-228x228.png" type="image/png" rel="icon" sizes="228x228">

        <!-- Apple Touch-иконки -->
        <link href="resources/vb/img/apple-touch-icon/apple-touch-icon-57x57.png" type="image/png" rel="apple-touch-icon" sizes="57x57">
        <link href="resources/vb/img/apple-touch-icon/apple-touch-icon-60x60.png" type="image/png" rel="apple-touch-icon" sizes="60x60">
        <link href="resources/vb/img/apple-touch-icon/apple-touch-icon-72x72.png" type="image/png" rel="apple-touch-icon" sizes="72x72">
        <link href="resources/vb/img/apple-touch-icon/apple-touch-icon-76x76.png" type="image/png" rel="apple-touch-icon" sizes="76x76">
        <link href="resources/vb/img/apple-touch-icon/apple-touch-icon-114x114.png" type="image/png" rel="apple-touch-icon" sizes="114x114">
        <link href="resources/vb/img/apple-touch-icon/apple-touch-icon-120x120.png" type="image/png" rel="apple-touch-icon" sizes="120x120">
        <link href="resources/vb/img/apple-touch-icon/apple-touch-icon-152x152.png" type="image/png" rel="apple-touch-icon" sizes="152x152">
        <link href="resources/vb/img/apple-touch-icon/apple-touch-icon-180x180.png" type="image/png" rel="apple-touch-icon" sizes="180x180">

        <!-- MS Tile-плитки (Windows 8 и IE 10) -->
        <meta name="msapplication-TileColor" content="#d3be4a">
        <meta name="msapplication-TileImage" content="resources/vb/img/mstile/mstile-144x144.png">

        <!-- MS Tile-плитки (Windows 8.1 и IE 11) -->
        <meta name="msapplication-config" content="resources/vb/xml/vb/browserconfig.xml" />

        <!--
            Подключение стилей
        -->
        <link href="resources/vb/css/vb/vb.css" type="text/css" rel="stylesheet" />
        <link href="resources/vb/css/author/author.css" type="text/css" rel="stylesheet" />
        <link href="resources/vb/css/author-pa/author-pa.css" type="text/css" rel="stylesheet" />
        <link href="resources/vb/css/author-pa/datatables.css" type="text/css" rel="stylesheet" />
        <link href="resources/vb/css/author-rating/author-rating.css" type="text/css" rel="stylesheet" />
        <link href="resources/vb/css/book/book.css" type="text/css" rel="stylesheet" />
        <link href="resources/vb/css/create-ebook/create-ebook.css" type="text/css" rel="stylesheet" />
        <link href="resources/vb/css/feedback/feedback.css" type="text/css" rel="stylesheet" />
        <link href="resources/vb/css/index/index.css" type="text/css" rel="stylesheet" />
        <link href="resources/vb/css/index-2/index-2.css" type="text/css" rel="stylesheet" />
        <link href="resources/vb/css/search-book/search-book.css" type="text/css" rel="stylesheet" />
        <link href="resources/vb/css/shop-cart/shop-cart.css" type="text/css" rel="stylesheet" />

        <!--
            jQuery нужно подключать в теге head, а не после тега body,
            т.к. иначе в Firefox-е некоторые страницы после загрузки проматываются в конец,
            а модальные окна изначально видны и только потом плавно исчезают
        -->
        <script type="text/javascript" src="resources/vb/js/jquery/jquery-2.2.3.min.js"></script>
        <!--<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.3.min.js"></script>-->
    </head>

    <body class="${bodyClass}">
        <!-- У body доп.класс:
            1) hidden-partners-on-shelf - скрывает ссылки на партнеров в футере
            2) hidden-books-on-shelf - скрывает книги на полке в футере
        -->

        <header>
            <div class="header header-1">
                <a href="${currentURI}#" class="logo">
                    <span class="logo-word logo-line logo-line1"></span>
                    <span class="logo-word logo-line logo-line2"></span>
                    <span class="logo-word logo-v">V</span>
                    <span class="logo-word logo-erybook">erybook</span>
                </a>
                <div class="search">
                    <input type="search" name="search" autocomplete>
                    <button class="search-btn"></button>
                </div>

                <!-- Для того, чтобы подчеркнуть, что выбран один из следующих пунктов, к div добавляется класс header-item-selected -->
                <div class="ask ">
                    <a href="${currentURI}#">
                        <span class="text"><h3>Задать вопрос</h3></span>
                        <span class="figure"></span>
                    </a>
                </div>
                <div class="cart ">
                    <a href="${currentURI}#">
                        <span class="figure"></span>
                        <span class="text"><h3>Корзина</h3></span>
                        <span class="count">222</span>
                    </a>
                </div>
            </div>
            <nav class="header header-2">
                <div class="menu">
                    <!-- Для того, чтобы подчеркнуть страницу, которая выбрана, к div добавляется класс menu-item-selected -->
                    <div class="shop menu-item-selected">
                        <a href="${currentURI}#"><h3>Книжный магазин</h3></a>
                    </div>
                    <div class="help ">
                        <a href="${currentURI}#"><h3>Помощь автору</h3></a>
                    </div>
                    <div class="authors-rating ">
                        <a href="${currentURI}#"><h3>Рейтинг авторов</h3></a>
                    </div>
                    <div class="about ">
                        <a href="${currentURI}#"><h3>О проекте</h3></a>
                    </div>
                </div>
                <div class="entrance "> <!-- для залогиненого пользователя нужно добавить класс nick -->
                    <a href="${currentURI}#">
                        <span class="figure-1"></span>
                        <span class="text">
                            <!-- для залогиненого пользователя нужно поменять Войти на Логин -->
                            Войти
                        </span>
                        <span class="figure-2"></span>
                    </a>
                </div>
            </nav>
        </header>

        <main class="${mainClass}">
            <div class="slogan ${sloganAdditionalClass}">
                <!--
                    Доп.класс help-page у slogan-а нужен для переключения стиля слогана между Главной страницей и страницей Помощи автору
                -->
                Читай
                <a href="${currentURI}#" class="new-books-free"><h3>новые книги бесплатно</h3></a>,
                решай их судьбу и
                <a href="${currentURI}#" class="publish-own"><h3>публикуй</h3></a>
                собственные
            </div>

        <!-- START (Тело страницы) -------------------------------------------------------------------------------------------- -->