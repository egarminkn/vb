<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="fn" uri="http://verybook.verygroup.org/functions" %>

<!-- START (Оглавление книги) -->
<!-- Если на странице несколько таких элементов, то нужно обеспечить уникальность имен групп radio-кнопок (name), уникальность их id-ков и соответствующих for-ов у label-ов -->
<div class="book-toc">
    <h2 class="row row-1">Оглавление</h2>

    ${hasTocRadios ? '' : '<!--'}
    <input type="radio" name="chapter" class="chapter chapter-1" value="1" id="chapter-1">
    <input type="radio" name="chapter" class="chapter chapter-2" value="2" id="chapter-2">
    <input type="radio" name="chapter" class="chapter chapter-3" value="3" id="chapter-3">
    <input type="radio" name="chapter" class="chapter chapter-4" value="4" id="chapter-4">
    <input type="radio" name="chapter" class="chapter chapter-5" value="5" id="chapter-5">
    <input type="radio" name="chapter" class="chapter chapter-6" value="6" id="chapter-6">
    <input type="radio" name="chapter" class="chapter chapter-7" value="7" id="chapter-7">
    <input type="radio" name="chapter" class="chapter chapter-8" value="8" id="chapter-8">
    <input type="radio" name="chapter" class="chapter chapter-9" value="9" id="chapter-9">
    <input type="radio" name="chapter" class="chapter chapter-10" value="10" id="chapter-10">
    ${hasTocRadios ? '' : '-->'}

    <ul class="row row-2 level level-1">
        <li>
            <label class="text-dots-page chapter-1" ${hasTocRadios ? 'for="chapter-1"' : ''}>
                <div class="chapter">
                    <span class="text">
                        Рубрикация
                    </span>
                    <span class="page">
                        1
                    </span>
                </div>
            </label>
        </li>
        <li>
            <label class="text-dots-page chapter-2" ${hasTocRadios ? 'for="chapter-2"' : ''}>
                <div class="chapter">
                    <span class="text">
                        Названия (употребление прописных букв, кавычек, слитное, дефисное, раздельное написание)
                    </span>
                    <span class="page">
                        2
                    </span>
                </div>
            </label>
        </li>
        <li>
            <label class="text-dots-page chapter-3" ${hasTocRadios ? 'for="chapter-3"' : ''}>
                <div class="chapter">
                    <span class="text">
                        Текст
                    </span>
                    <span class="page">
                        3
                    </span>
                </div>
            </label>
            <ul class="level level-2">
                <li>
                    <label class="text-dots-page chapter-4" ${hasTocRadios ? 'for="chapter-4"' : ''}>
                        <div class="chapter">
                            <span class="text">
                                Рубрикация
                            </span>
                            <span class="page">
                                4
                            </span>
                        </div>
                    </label>
                </li>
                <li>
                    <label class="text-dots-page chapter-5" ${hasTocRadios ? 'for="chapter-5"' : ''}>
                        <div class="chapter">
                            <span class="text">
                                Названия (употребление прописных букв, кавычек, слитное, дефисное, раздельное написание)
                            </span>
                            <span class="page">
                                5
                            </span>
                        </div>
                    </label>
                </li>
                <li>
                    <label class="text-dots-page chapter-6" ${hasTocRadios ? 'for="chapter-6"' : ''}>
                        <div class="chapter">
                            <span class="text">
                                Числа и знаки
                            </span>
                            <span class="page">
                                6
                            </span>
                        </div>
                    </label>
                    <ul class="level level-3">
                        <li>
                            <label class="text-dots-page chapter-7" ${hasTocRadios ? 'for="chapter-7"' : ''}>
                                <div class="chapter">
                                    <span class="text">
                                        Рубрикация
                                    </span>
                                    <span class="page">
                                        7
                                    </span>
                                </div>
                            </label>
                        </li>
                        <li>
                            <label class="text-dots-page chapter-8" ${hasTocRadios ? 'for="chapter-8"' : ''}>
                                <div class="chapter">
                                    <span class="text">
                                        Названия (употребление прописных букв, кавычек, слитное, дефисное, раздельное написание)
                                    </span>
                                    <span class="page">
                                        8
                                    </span>
                                </div>
                            </label>
                        </li>
                    </ul>
                </li>
                <li>
                    <label class="text-dots-page chapter-9" ${hasTocRadios ? 'for="chapter-9"' : ''}>
                        <div class="chapter">
                            <span class="text">
                                Числа и знаки
                            </span>
                            <span class="page">
                                9
                            </span>
                        </div>
                    </label>
                </li>
            </ul>
        </li>
        <li>
            <label class="text-dots-page chapter-10" ${hasTocRadios ? 'for="chapter-10"' : ''}>
                <div class="chapter">
                    <span class="text">
                        Числа и знаки
                    </span>
                    <span class="page">
                        10
                    </span>
                </div>
            </label>
        </li>
    </ul>
</div>
<!-- END (Оглавление книги) -->