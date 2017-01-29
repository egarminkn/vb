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
<c:set var="selectAddClass" value="font-name" scope="request"/>
<c:set var="selectName" value="author-font-name" scope="request"/>
<c:set var="selectOptions" value="${['Courier New', 'Times New Roman']}" scope="request"/>
<c:set var="selectedOptionIndex" value="1" scope="request"/>
<c:set var="hiddenOptionIndex" value="-1" scope="request"/>
<jsp:include page="components/vb/skew-select.jsp"/>
                                        </div>
                                        <div class="td">
<c:set var="selectAddClass" value="font-size" scope="request"/>
<c:set var="selectName" value="author-font-size" scope="request"/>
<c:set var="selectOptions" value="${['12', '14']}" scope="request"/>
<c:set var="selectedOptionIndex" value="0" scope="request"/>
<c:set var="hiddenOptionIndex" value="-1" scope="request"/>
<jsp:include page="components/vb/skew-select.jsp"/>
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
<c:set var="selectAddClass" value="font-name" scope="request"/>
<c:set var="selectName" value="title-font-name" scope="request"/>
<c:set var="selectOptions" value="${['Courier New', 'Times New Roman']}" scope="request"/>
<c:set var="selectedOptionIndex" value="1" scope="request"/>
<c:set var="hiddenOptionIndex" value="-1" scope="request"/>
<jsp:include page="components/vb/skew-select.jsp"/>
                                        </div>
                                        <div class="td">
<c:set var="selectAddClass" value="font-size" scope="request"/>
<c:set var="selectName" value="title-font-size" scope="request"/>
<c:set var="selectOptions" value="${['12', '14']}" scope="request"/>
<c:set var="selectedOptionIndex" value="0" scope="request"/>
<c:set var="hiddenOptionIndex" value="-1" scope="request"/>
<jsp:include page="components/vb/skew-select.jsp"/>
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
<c:set var="selectAddClass" value="font-name" scope="request"/>
<c:set var="selectName" value="subtitle-font-name" scope="request"/>
<c:set var="selectOptions" value="${['Courier New', 'Times New Roman']}" scope="request"/>
<c:set var="selectedOptionIndex" value="1" scope="request"/>
<c:set var="hiddenOptionIndex" value="-1" scope="request"/>
<jsp:include page="components/vb/skew-select.jsp"/>
                                        </div>
                                        <div class="td">
<c:set var="selectAddClass" value="font-size" scope="request"/>
<c:set var="selectName" value="subtitle-font-size" scope="request"/>
<c:set var="selectOptions" value="${['12', '14']}" scope="request"/>
<c:set var="selectedOptionIndex" value="0" scope="request"/>
<c:set var="hiddenOptionIndex" value="-1" scope="request"/>
<jsp:include page="components/vb/skew-select.jsp"/>
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
<c:set var="selectAddClass" value="genre" scope="request"/>
<c:set var="selectName" value="genre-1" scope="request"/>
<c:set var="selectOptions" value="${['Выберите жанр 1', '', 'Искусство сочинять детективы', 'Детектив', 'Ужасы', 'Триллер']}" scope="request"/>
<c:set var="selectedOptionIndex" value="0" scope="request"/>
<c:set var="hiddenOptionIndex" value="0" scope="request"/>
<jsp:include page="components/vb/skew-select.jsp"/>

<c:set var="selectAddClass" value="genre" scope="request"/>
<c:set var="selectName" value="genre-2" scope="request"/>
<c:set var="selectOptions" value="${['Выберите жанр 2', '', 'Искусство сочинять детективы', 'Детектив', 'Ужасы', 'Триллер']}" scope="request"/>
<c:set var="selectedOptionIndex" value="0" scope="request"/>
<c:set var="hiddenOptionIndex" value="0" scope="request"/>
<jsp:include page="components/vb/skew-select.jsp"/>

<c:set var="selectAddClass" value="genre" scope="request"/>
<c:set var="selectName" value="genre-3" scope="request"/>
<c:set var="selectOptions" value="${['Выберите жанр 3', '', 'Искусство сочинять детективы', 'Детектив', 'Ужасы', 'Триллер']}" scope="request"/>
<c:set var="selectedOptionIndex" value="0" scope="request"/>
<c:set var="hiddenOptionIndex" value="0" scope="request"/>
<jsp:include page="components/vb/skew-select.jsp"/>
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

<c:set var="isQuestionMarkBlue" value="true" scope="request"/>
<c:set var="bubbleContent" value="Если книга быдет содержать запрещенный контент, а Вы нас не уведомите об этом данной галочкой, то книга не будет допущена к публикации на нашем сервисе." scope="request"/>
<jsp:include page="components/vb/question-mark-bubble.jsp"/>
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

<c:set var="isQuestionMarkBlue" value="true" scope="request"/>
<c:set var="bubbleContent" value="Продуманно составленный список ключевых слов позволит читателям быстрее найти Вашу книгу." scope="request"/>
<jsp:include page="components/vb/question-mark-bubble.jsp"/>
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

<c:set var="isQuestionMarkBlue" value="true" scope="request"/>
<c:set var="bubbleContent" value="Вы вправе предоставить читателю некоторое количество страниц книги для беспланого просмотра с целью ознаколения и повышения заинтересованности в Вашей работе." scope="request"/>
<jsp:include page="components/vb/question-mark-bubble.jsp"/>
                            </div>

                            <div class="year">
                                <label>
                                    <span class="text">Год издания</span>
<c:set var="selectAddClass" value="" scope="request"/>
<c:set var="selectName" value="year" scope="request"/>
<c:set var="selectOptions" value="${['2016', '2015', '2014', '2013', '2012']}" scope="request"/>
<c:set var="selectedOptionIndex" value="0" scope="request"/>
<c:set var="hiddenOptionIndex" value="-1" scope="request"/>
<jsp:include page="components/vb/skew-select.jsp"/>
                                </label>
                            </div>

                            <div class="license">
                                <label>
                                    <span class="text">Лицензия</span>
<c:set var="selectAddClass" value="" scope="request"/>
<c:set var="selectName" value="license" scope="request"/>
<c:set var="selectOptions" value="${['Verybook License v.1', 'Verybook License v.2', 'Verybook License v.3', 'Verybook License v.4', 'Verybook License v.5']}" scope="request"/>
<c:set var="selectedOptionIndex" value="0" scope="request"/>
<c:set var="hiddenOptionIndex" value="-1" scope="request"/>
<jsp:include page="components/vb/skew-select.jsp"/>
                                </label>

<c:set var="isQuestionMarkBlue" value="true" scope="request"/>
<c:set var="bubbleContent" value="Вы можете раздавать свою книгу даром или принять участие в нашей рейтинговой программе раскрутки Вашей книги." scope="request"/>
<jsp:include page="components/vb/question-mark-bubble.jsp"/>
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