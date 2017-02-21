<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="help-slide-content help-slide-2">
    <div class="row">
        <div class="column column-1">
            <a>
                <h3 class="text">
                    Как опубликовать книгу?
                </h3>
            </a>
            <a href="info/book-requirements">
                <h3 class="text">
                    Подготовка рукописи
                </h3>
            </a>
            <a href="info/book-metadata">
                <h3 class="text">
                    Аннотация к книге
                </h3>
            </a>
            <a href="info/book-restrictions">
                <h3 class="text">
                    Возрастные ограничения
                </h3>
            </a>
            <a href="info/book-license">
                <h3 class="text">
                    Выбор типа лицензии
                </h3>
            </a>
            <a href="info/book-upload">
                <h3 class="text">
                    Загрузка книги
                </h3>
            </a>
        </div>

        <%--<div class="column column-2"></div>--%>

        <div class="column column-3">
            <a href="feedback" class="verybook-help-you">
                <div class="wrapper">
                    <h2 class="text">
                        Verybook<br>поможет
                    </h2>
                </div>
                <img src="resources/vb/svg/vb/question-mark-beauty.svg" width="49" height="49">
            </a>
            <p class="verybook-help-you">
                Мы всегда готовы оказать помощь по любым вопросам работы с нашим сервисом
            </p>
        </div>
    </div>
</div>