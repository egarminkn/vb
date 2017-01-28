<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="bodyClass" value="hidden-partners-on-shelf" scope="request"/>
<c:set var="mainClass" value="create-ebook" scope="request"/>
<c:set var="sloganAdditionalClass" value="" scope="request"/>

<jsp:include page="fragments/header.jsp"/>

            <div class="column-1">
<jsp:include page="components/vb/useful-info.jsp"/>

                <div class="own-cover">
                    <a href="${currentURI}#">Как создать свою обложку</a>
                </div>
            </div>

            <div class="column-2">
                <div class="header">
                    <h1>Создай книгу</h1>

                    <!-- START (Горизонтальное меню переходов на id-шники той же страницы) -->
                    <ul class="nav">
                        <li class="nav-item">
                            <a href="${currentURI}#upload">
                                Загрузить файл
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="${currentURI}#cover">
                                Создать обложку
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="${currentURI}#description">
                                Описать книгу
                            </a>
                        </li>
                    </ul>
                    <!-- END (Горизонтальное меню переходов на id-шники той же страницы) -->
                </div>

                <form class="book" method="post" action="/">
                    <fieldset id="upload">
                        <div class="upload">
                            <h2>Загрузи файл для конвертации в форматы EPUB и PDF</h2>

                            <!-- START (Надпись-предупреждение) -->
                            <div class="warning">
                                Перед загрузкой и конвертацией файлов не забудьте ознакомиться с <a class="rules" href="${currentURI}#">правилами оформления</a> документов
                            </div>
                            <!-- END (Надпись-предупреждение) -->

                            <div class="content">
                                <div class="title">
                                    Загрузить файл
                                </div>
                                <div class="drag-or-choose">
                                    Перетащи сюда или <span class="pseudo-link">выбери</span>
                                </div>
                                <input type="file" name="file" class="file">
                            </div>
                            <div class="test-file">
                                <div class="file">
                                    <span class="file-name">
                                        prestupleniya_i_nakazaniya.doc
                                    </span>
                                    <span class="file-size">
                                        <span class="parenthesis left-parenthesis">(</span>
                                        <span class="size">52 мб</span>
                                        <span class="parenthesis right-parenthesis">)</span>
                                    </span>
                                    <a class="remove-file" href="${currentURI}#" title="Удалить файл из списка загруженных">+</a>
                                </div>
                                <button class="test-file-btn btn">Проверить загруженный файл</button>
                            </div>
                        </div>

                        <!-- START (Тень под блоком) -->
                        <div class="shadow-under"></div>
                        <!-- END (Тень под блоком) -->
                    </fieldset>

                    <fieldset id="cover">
                        <div class="cover">
                            <h2>Создай обложку, задай имя автора и название книги</h2>

                            <ul class="types">
                                <li class="type color-cover">
                                    <div class="title">
                                        Цветная обложка
                                    </div>
                                    <div class="color-pickers">
                                        <div class="background">
                                            <div class="color-picker" data-color="#950019" data-close="true">
                                                <label class="text" for="background-color">
                                                    Цвет обложки
                                                </label>
                                                <div class="color-picker-toggle">
                                                    <div class="color-picker-icon" >
                                                    </div>
                                                    <input type="hidden" name="background-color" id="background-color">
                                                </div>
                                                <div class="color-picker-popover">
                                                    <canvas class="color-picker-palette" width="384" height="256">
                                                    </canvas>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="border">
                                            <div class="color-picker" data-color="#d79ea8" data-close="true">
                                                <label class="text" for="border-color">
                                                    Цвет окантовки
                                                </label>
                                                <div class="color-picker-toggle">
                                                    <div class="color-picker-icon">
                                                    </div>
                                                    <input type="hidden" name="border-color" id="border-color">
                                                </div>
                                                <div class="color-picker-popover">
                                                    <canvas class="color-picker-palette" width="384" height="256">
                                                    </canvas>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="type select-cover">
                                    <a href="${currentURI}#">Выбрать готовый фон</a>
                                </li>
                                <li class="type upload-cover">
                                    <a href="${currentURI}#">Загрузить свою обложку</a>
                                </li>
                            </ul>

                            <div class="text-on-cover-and-preview">
                                <div class="table text-on-cover">
                                    <div class="tr author">
                                        <div class="td">
                                            <!-- START (Наклонные input-ы) -->
                                            <!-- Для использования этого input-а в форме, нужно заполнить поле name -->
                                            <div class="skew-outer">
                                                <input class="skew-inner" type="text" name="author-name" placeholder="Автор">
                                            </div>
                                            <!-- END (Наклонные input-ы) -->
                                        </div>
                                        <div class="td">
                                            <!-- START (Наклонные select-ы) -->
                                            <!-- Для использования этого select-а в форме, нужно заполнить поле name -->
                                            <div class="skew-outer select">
                                                <select class="skew-inner font-name" name="author-font-name">
                                                    <option value="Courier New">Courier New</option>
                                                    <option value="Times New Roman" selected>Times New Roman</option>
                                                </select>
                                            </div>
                                            <!-- END (Наклонные select-ы) -->
                                        </div>
                                        <div class="td">
                                            <!-- START (Наклонные select-ы) -->
                                            <!-- Для использования этого select-а в форме, нужно заполнить поле name -->
                                            <div class="skew-outer select">
                                                <select class="skew-inner font-size" name="author-font-size">
                                                    <option value="12" selected>12</option>
                                                    <option value="14">14</option>
                                                </select>
                                            </div>
                                            <!-- END (Наклонные select-ы) -->
                                        </div>
                                        <div class="td">
                                            <div class="color-picker" data-color="#950019" data-close="true">
                                                <div class="color-picker-toggle">
                                                    <div class="color-picker-icon">
                                                    </div>
                                                    <input type="hidden" name="author-color">
                                                </div>
                                                <div class="color-picker-popover">
                                                    <canvas class="color-picker-palette" width="384" height="256">
                                                    </canvas>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tr ebook-title">
                                        <div class="td">
                                            <!-- START (Наклонные input-ы) -->
                                            <!-- Для использования этого input-а в форме, нужно заполнить поле name -->
                                            <div class="skew-outer">
                                                <input class="skew-inner" type="text" name="title" placeholder="Заголовок">
                                            </div>
                                            <!-- END (Наклонные input-ы) -->
                                        </div>
                                        <div class="td">
                                            <!-- START (Наклонные select-ы) -->
                                            <!-- Для использования этого select-а в форме, нужно заполнить поле name -->
                                            <div class="skew-outer select">
                                                <select class="skew-inner font-name" name="title-font-name">
                                                    <option value="Courier New">Courier New</option>
                                                    <option value="Times New Roman" selected>Times New Roman</option>
                                                </select>
                                            </div>
                                            <!-- END (Наклонные select-ы) -->
                                        </div>
                                        <div class="td">
                                            <!-- START (Наклонные select-ы) -->
                                            <!-- Для использования этого select-а в форме, нужно заполнить поле name -->
                                            <div class="skew-outer select">
                                                <select class="skew-inner font-size" name="title-font-size">
                                                    <option value="12" selected>12</option>
                                                    <option value="14">14</option>
                                                </select>
                                            </div>
                                            <!-- END (Наклонные select-ы) -->
                                        </div>
                                        <div class="td">
                                            <div class="color-picker" data-color="#030674" data-close="true">
                                                <div class="color-picker-toggle">
                                                    <div class="color-picker-icon">
                                                    </div>
                                                    <input type="hidden" name="title-color">
                                                </div>
                                                <div class="color-picker-popover">
                                                    <canvas class="color-picker-palette" width="384" height="256">
                                                    </canvas>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tr ebook-subtitle">
                                        <div class="td">
                                            <!-- START (Наклонные input-ы) -->
                                            <!-- Для использования этого input-а в форме, нужно заполнить поле name -->
                                            <div class="skew-outer">
                                                <input class="skew-inner" type="text" name="subtitle" placeholder="Подзаголовок">
                                            </div>
                                            <!-- END (Наклонные input-ы) -->
                                        </div>
                                        <div class="td">
                                            <!-- START (Наклонные select-ы) -->
                                            <!-- Для использования этого select-а в форме, нужно заполнить поле name -->
                                            <div class="skew-outer select">
                                                <select class="skew-inner font-name" name="subtitle-font-name">
                                                    <option value="Courier New">Courier New</option>
                                                    <option value="Times New Roman" selected>Times New Roman</option>
                                                </select>
                                            </div>
                                            <!-- END (Наклонные select-ы) -->
                                        </div>
                                        <div class="td">
                                            <!-- START (Наклонные select-ы) -->
                                            <!-- Для использования этого select-а в форме, нужно заполнить поле name -->
                                            <div class="skew-outer select">
                                                <select class="skew-inner font-size" name="subtitle-font-size">
                                                    <option value="12" selected>12</option>
                                                    <option value="14">14</option>
                                                </select>
                                            </div>
                                            <!-- END (Наклонные select-ы) -->
                                        </div>
                                        <div class="td">
                                            <div class="color-picker" data-color="#393939" data-close="true">
                                                <div class="color-picker-toggle">
                                                    <div class="color-picker-icon">
                                                    </div>
                                                    <input type="hidden" name="subtitle-color">
                                                </div>
                                                <div class="color-picker-popover">
                                                    <canvas class="color-picker-palette" width="384" height="256">
                                                    </canvas>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="preview">
                                    <div class="canvas">
                                        <div class="frame">
                                            <div class="author">
                                                Александр Иванов
                                            </div>
                                            <div class="title">
                                                Сочинения
                                            </div>
                                            <div class="subtitle">
                                                Часть I
                                            </div>
                                        </div>
                                    </div>

                                    <a class="magnify" href="${currentURI}#"></a>
                                </div>
                            </div>
                        </div>

                        <!-- START (Тень под блоком) -->
                        <div class="shadow-under"></div>
                        <!-- END (Тень под блоком) -->
                    </fieldset>

                    <fieldset id="description">
                        <div class="description">
                            <h2>Описание проекта</h2>

                            <!-- START (Надпись-предупреждение) -->
                            <div class="warning">
                                Качественно и полноценно составленное описание книги поможет читателям находить ее проще
                            </div>
                            <!-- END (Надпись-предупреждение) -->

                            <div class="genres">
                                <!-- START (Наклонные select-ы) -->
                                <!-- Для использования этого select-а в форме, нужно заполнить поле name -->
                                <div class="skew-outer select">
                                    <select class="skew-inner genre" name="genre-1">
                                        <option value="" selected hidden>Выберите жанр 1</option>
                                        <option value=""></option>

                                        <option value="Искусство сочинять детективы">Искусство сочинять детективы</option>
                                        <option value="Детектив">Детектив</option>
                                        <option value="Ужасы">Ужасы</option>
                                        <option value="Триллер">Триллер</option>
                                    </select>
                                </div>
                                <!-- END (Наклонные select-ы) -->

                                <!-- START (Наклонные select-ы) -->
                                <!-- Для использования этого select-а в форме, нужно заполнить поле name -->
                                <div class="skew-outer select">
                                    <select class="skew-inner genre" name="genre-2">
                                        <option value="" selected hidden>Выберите жанр 2</option>
                                        <option value=""></option>

                                        <option value="Искусство сочинять детективы">Искусство сочинять детективы</option>
                                        <option value="Детектив">Детектив</option>
                                        <option value="Ужасы">Ужасы</option>
                                        <option value="Триллер">Триллер</option>
                                    </select>
                                </div>
                                <!-- END (Наклонные select-ы) -->

                                <!-- START (Наклонные select-ы) -->
                                <!-- Для использования этого select-а в форме, нужно заполнить поле name -->
                                <div class="skew-outer select">
                                    <select class="skew-inner genre" name="genre-3">
                                        <option value="" selected hidden>Выберите жанр 3</option>
                                        <option value=""></option>

                                        <option value="Искусство сочинять детективы">Искусство сочинять детективы</option>
                                        <option value="Детектив">Детектив</option>
                                        <option value="Ужасы">Ужасы</option>
                                        <option value="Триллер">Триллер</option>
                                    </select>
                                </div>
                                <!-- END (Наклонные select-ы) -->
                            </div>

                            <div class="forbidden">
                                <!-- START (Стилизованный checkbox) -->
                                <!-- Для использования этого чекбокса в форме, нужно заполнить поле name -->
                                <label class="text-checkbox">
                                    <span class="item text">
                                        Запрещенный контент
                                    </span>
                                    <input class="item" type="checkbox" name="is-forbidden">
                                    <span class="item checkbox"></span>
                                </label>
                                <!-- END (Стилизованный checkbox) -->

                                <span class="explanation">
                                    This project contains explicit content of an adult nature. It is intended for a mature audience of readers 18 or older
                                </span>

                                <!-- START (Значок-вопросика с всплывающей подсказкой) -->
                                <div class="hint">
                                    <!-- Если убрать доп.класс blue, то знак вопросмка будет черного цвета -->
                                    <div class="question-mark blue"></div>
                                    <div class="bubble-before bubble-before-1"></div>
                                    <div class="bubble-before bubble-before-2"></div>
                                    <div class="bubble" data-init-width="355">
                                        <span class="content">
                                            Если книга быдет содержать запрещенный контент, а Вы нас не уведомите об этом данной галочкой, то книга не будет допущена к публикации на нашем сервисе.
                                        </span>
                                    </div>
                                </div>
                                <!-- END (Значок-вопросика с всплывающей подсказкой) -->
                            </div>

                            <div class="tags">
                                <label for="tags">
                                    Ключевые слова
                                </label>

                                <!-- START (Наклонные input-ы) -->
                                <!-- Для использования этого input-а в форме, нужно заполнить поле name -->
                                <div class="skew-outer">
                                    <input class="skew-inner" type="text" name="tags" id="tags">
                                </div>
                                <!-- END (Наклонные input-ы) -->

                                <!-- START (Значок-вопросика с всплывающей подсказкой) -->
                                <div class="hint">
                                    <!-- Если убрать доп.класс blue, то знак вопросмка будет черного цвета -->
                                    <div class="question-mark blue"></div>
                                    <div class="bubble-before bubble-before-1"></div>
                                    <div class="bubble-before bubble-before-2"></div>
                                    <div class="bubble" data-init-width="355">
                                        <span class="content">
                                            Продуманно составленный список ключевых слов позволит читателям быстрее найти Вашу книгу.
                                        </span>
                                    </div>
                                </div>
                                <!-- END (Значок-вопросика с всплывающей подсказкой) -->
                            </div>

                            <div class="annotation">
                                <label for="annotation">
                                    Аннотация
                                </label>

                                <div class="annotation-with-comments">
                                    <!-- START (Наклонный textarea) -->
                                    <div class="textarea">
                                        <div class="skew-outer">
                                            <!--
                                                Открывающий и закрывающий теги textarea должны быть на одной строке, т.к. иначе placeholder не отображается:
                                                http://stackoverflow.com/questions/10186913/html5-textarea-placeholder-not-appearing
                                            -->
                                            <!-- Для использования этого textarea в форме, нужно заполнить поле name -->
                                            <textarea class="skew-inner" name="annotation" id="annotation" maxlength="4000" required></textarea>
                                        </div>
                                        <div class="textarea-info">
                                            Использован<span class="using-ending">о</span>
                                            <span class="size">0</span> символ<span class="symbol-ending">ов</span>
                                            из 4000 возможных
                                        </div>
                                    </div>
                                    <!-- END (Наклонный textarea) -->

                                    <ul class="comments">
                                        <li class="comment">
                                            Your description must be at least 50 characters not including spaces and no more than 1000 characters including spaces
                                        </li>
                                        <li class="comment">
                                            The gauge above will help you to know when you fall within these parameters
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="preview-pages-count">
                                <label for="preview-pages-count">
                                    Количество страниц, доступное читателям для предпросмотра
                                </label>

                                <!-- START (Наклонные input-ы) -->
                                <!-- Для использования этого input-а в форме, нужно заполнить поле name -->
                                <div class="skew-outer">
                                    <input class="skew-inner" type="number" name="preview-pages-count" id="preview-pages-count">
                                </div>
                                <!-- END (Наклонные input-ы) -->

                                <!-- START (Значок-вопросика с всплывающей подсказкой) -->
                                <div class="hint">
                                    <!-- Если убрать доп.класс blue, то знак вопросмка будет черного цвета -->
                                    <div class="question-mark blue"></div>
                                    <div class="bubble-before bubble-before-1"></div>
                                    <div class="bubble-before bubble-before-2"></div>
                                    <div class="bubble" data-init-width="355">
                                        <span class="content">
                                            Вы вправе предоставить читателю некоторое количество страниц книги для беспланого просмотра с целью ознаколения и повышения заинтересованности в Вашей работе.
                                        </span>
                                    </div>
                                </div>
                                <!-- END (Значок-вопросика с всплывающей подсказкой) -->
                            </div>

                            <div class="year">
                                <label for="year">
                                    Год издания
                                </label>

                                <!-- START (Наклонные select-ы) -->
                                <!-- Для использования этого select-а в форме, нужно заполнить поле name -->
                                <div class="skew-outer select">
                                    <select class="skew-inner" name="year" id="year">
                                        <option value="2016" selected>2016</option>
                                        <option value="2015">2015</option>
                                        <option value="2014">2014</option>
                                        <option value="2013">2013</option>
                                        <option value="2012">2012</option>
                                    </select>
                                </div>
                                <!-- END (Наклонные select-ы) -->
                            </div>

                            <div class="license">
                                <label for="license">
                                    Лицензия
                                </label>

                                <!-- START (Наклонные select-ы) -->
                                <!-- Для использования этого select-а в форме, нужно заполнить поле name -->
                                <div class="skew-outer select">
                                    <select class="skew-inner" name="license" id="license" required>
                                        <option value="verybook-1" selected>Verybook License v.1</option>
                                        <option value="verybook-2">Verybook License v.2</option>
                                        <option value="verybook-3">Verybook License v.3</option>
                                        <option value="verybook-4">Verybook License v.4</option>
                                        <option value="verybook-5">Verybook License v.5</option>
                                    </select>
                                </div>
                                <!-- END (Наклонные select-ы) -->

                                <!-- START (Значок-вопросика с всплывающей подсказкой) -->
                                <div class="hint">
                                    <!-- Если убрать доп.класс blue, то знак вопросмка будет черного цвета -->
                                    <div class="question-mark blue"></div>
                                    <div class="bubble-before bubble-before-1"></div>
                                    <div class="bubble-before bubble-before-2"></div>
                                    <div class="bubble" data-init-width="355">
                                        <span class="content">
                                            Вы можете раздавать свою книгу даром или принять участие в нашей рейтинговой программе раскрутки Вашей книги.
                                        </span>
                                    </div>
                                </div>
                                <!-- END (Значок-вопросика с всплывающей подсказкой) -->
                            </div>
                        </div>

                        <!-- START (Тень под блоком) -->
                        <div class="shadow-under"></div>
                        <!-- END (Тень под блоком) -->
                    </fieldset>

                    <fieldset>
                        <div class="consent">
                            <!-- START (Стилизованный checkbox) -->
                            <!-- Для использования этого чекбокса в форме, нужно заполнить поле name -->
                            <label class="text-checkbox">
                                <span class="item text">
                                    С <a href="${currentURI}#">правилами сервиса</a> Verybook ознакомлен(а) и согласен(а)
                                </span>
                                <input class="item" type="checkbox" name="is-consent">
                                <span class="item checkbox"></span>
                            </label>
                            <!-- END (Стилизованный checkbox) -->

                            <!-- START (Стилизованные кнопки и ссылки, похожие на кнопки) -->
                            <button class="btn" type="submit">
                                Создать книгу
                            </button>
                            <!-- END (Стилизованные кнопки и ссылки, похожие на кнопки) -->
                        </div>
                    </fieldset>
                </form>
            </div>
        </main>

<jsp:include page="fragments/footer.jsp"/>