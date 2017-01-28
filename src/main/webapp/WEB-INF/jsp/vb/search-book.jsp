<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="bodyClass" value="hidden-partners-on-shelf" scope="request"/>
<c:set var="mainClass" value="search-book" scope="request"/>
<c:set var="sloganAdditionalClass" value="" scope="request"/>

<jsp:include page="fragments/header.jsp"/>

            <div class="extended-search">
                <a href="${currentURI}#">Расширенный поиск</a>
            </div>

            <div class="search-results-summary">
                <div class="header">
                    <span class="title">Результаты поиска по запросу:</span>
                    <span class="query">книга о войне</span> <!-- Сюда будет динамически вставляться текст строки поиска -->
                </div>
                <div class="summary">
                    Найдено <span class="total-count">11</span> совпаден<span class="total-count-ending">ий</span>, из них:
                    <a href="${currentURI}#ebooks"><span class="ebooks-count">12</span> электронн<span class="ebooks-count-ending-1">ых</span> книг<span class="ebooks-count-ending-2"></span></a>,
                    <a href="${currentURI}#audiobooks"><span class="audiobooks-count">11</span> аудиокниг<span class="audiobooks-count-ending"></span></a>,
                    <a href="${currentURI}#authors"><span class="authors-count">13</span> автор<span class="authors-count-ending">а</span></a>
                </div>

                <!-- Выбор типа отображения результатов поиска -->
                <div class="search-results-show-type">
                    <input type="radio" name="show-type" id="show-type-list" class="show-type-list" checked>
                    <input type="radio" name="show-type" id="show-type-tiles" class="show-type-tiles" >

                    <label class="list" for="show-type-list" title="Отобразить списком">
                        <div></div>
                        <div></div>
                        <div></div>
                    </label>
                    <label class="tiles" for="show-type-tiles" title="Отобразить плиткой">
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                    </label>
                </div>
            </div>

            <div class="search-results ebooks" id="ebooks">
                <div class="column left-column">
                    <div class="item header">
                        <span class="title">Электнонные книги</span>
                        <span class="summary">
                            показано <span class="show-range">1-15</span> книг из
                            <span class="count ebooks-count">12</span> найденн<span class="count-ending ebooks-count-ending">ых</span>
                            по запросу "<span class="query">книга о войне</span>"
                        </span>
                    </div>

                    <!-- START (Выбор типа сортировки) -->
                    <!-- Если на странице несколько таких элементов, то нужно обеспечить уникальность имен групп radio-кнопок (name), уникальность их id-ков и соответствующих for-ов у label-ов -->
                    <div class="item sort-by">
                        <span class="title">Сортировать:</span>
                        <input type="radio" name="ebooks-sort-link" class="sort-link-1" id="ebooks-sort-link-1" checked />
                        <input type="radio" name="ebooks-sort-link" class="sort-link-2" id="ebooks-sort-link-2" />
                        <input type="radio" name="ebooks-sort-link" class="sort-link-3" id="ebooks-sort-link-3" />
                        <input type="radio" name="ebooks-sort-link" class="sort-link-4" id="ebooks-sort-link-4" />
                        <div class="sort-links">
                            <label class="sort-link sort-link-1" for="ebooks-sort-link-1">
                                <span class="text">по популярности</span>
                                <input type="radio" name="ebooks-sort-direction-1" class="asc" id="ebooks-asc-sort-direction-1" >
                                <input type="radio" name="ebooks-sort-direction-1" class="desc" id="ebooks-desc-sort-direction-1" checked>
                                <div class="asc-desc">
                                    <label class="asc" for="ebooks-asc-sort-direction-1"></label>
                                    <label class="desc" for="ebooks-desc-sort-direction-1"></label>
                                </div>
                            </label>
                            <label class="sort-link sort-link-2" for="ebooks-sort-link-2">
                                <span class="text">по рейтингу</span>
                                <input type="radio" name="ebooks-sort-direction-2" class="asc" id="ebooks-asc-sort-direction-2" >
                                <input type="radio" name="ebooks-sort-direction-2" class="desc" id="ebooks-desc-sort-direction-2" checked>
                                <div class="asc-desc">
                                    <label class="asc" for="ebooks-asc-sort-direction-2"></label>
                                    <label class="desc" for="ebooks-desc-sort-direction-2"></label>
                                </div>
                            </label>
                            <label class="sort-link sort-link-3" for="ebooks-sort-link-3">
                                <span class="text">по дате публикации</span>
                                <input type="radio" name="ebooks-sort-direction-3" class="asc" id="ebooks-asc-sort-direction-3" >
                                <input type="radio" name="ebooks-sort-direction-3" class="desc" id="ebooks-desc-sort-direction-3" checked>
                                <div class="asc-desc">
                                    <label class="asc" for="ebooks-asc-sort-direction-3"></label>
                                    <label class="desc" for="ebooks-desc-sort-direction-3"></label>
                                </div>
                            </label>
                            <label class="sort-link sort-link-4" for="ebooks-sort-link-4">
                                <span class="text">по цене</span>
                                <input type="radio" name="ebooks-sort-direction-4" class="asc" id="ebooks-asc-sort-direction-4" checked>
                                <input type="radio" name="ebooks-sort-direction-4" class="desc" id="ebooks-desc-sort-direction-4" >
                                <div class="asc-desc">
                                    <label class="asc" for="ebooks-asc-sort-direction-4"></label>
                                    <label class="desc" for="ebooks-desc-sort-direction-4"></label>
                                </div>
                            </label>
                        </div>
                    </div>
                    <!-- END (Выбор типа сортировки) -->

                    <div class="item search-result-item ebook">
                        <div class="cover">
                            <img src="resources/vb/img/tmp/book-1.jpg" width="100" height="160">
                        </div>
                        <div class="about">
                            <div class="title">
                                <a href="${currentURI}#">The ultimate players guide to minecraft</a>
                            </div>
                            <div class="author">
                                <a href="${currentURI}#">Владимир Иванов</a>
                            </div>
                            <div class="description">
                                "Инноваторы" - история о разных этапах цифровой революции и людях, без которых не было бы ни компьютеров, ни интернета: от Ады Лавлейс, дочери лорда Байрона, первой нащупавшей принципы компьютерного программирования, до Билла Гейтса, Алана Тьюринга, Стива Джобса, Стива Возняка, Ларри Пейджа. Это книга о том, что такое инновации и как сотрудничество увеличивает творческий потенциал.
                            </div>
                            <div class="footer">
                                <div class="date">Дата выхода: <span>26 сентября 2015 года</span></div>
                                <div class="formats">Форматы: <span>EPUB, PDF</span></div>
                            </div>
                        </div>
                        <div class="actions">
                            <!-- START (Кнопка "В корзину" с ценником) -->
                            <div class="buy">
                                <div class="item price">
                                    <span class="value">112</span>
                                    <span class="currency">р.</span>
                                </div>
                                <a class="item cart-btn" href="${currentURI}#">
                                    <span class="text">В корзину</span>
                                </a>
                            </div>
                            <!-- END (Кнопка "В корзину" с ценником) -->

                            <!-- START (5 звезд рейтинга книги) -->
                            <div class="rating-5-stars">
                                <div class="rating-stars"></div>
                                <div class="rating-number">2,3</div>
                            </div>
                            <!-- END (5 звезд рейтинга книги) -->

                            <div class="reviews">
                                <a href="${currentURI}#">Рецензии (<span>15</span>)</a>
                            </div>
                        </div>
                    </div>

                    <div class="item search-result-item ebook">
                        <div class="cover">
                            <img src="resources/vb/img/tmp/book-2.jpg" width="100" height="160">
                        </div>
                        <div class="about">
                            <div class="title">
                                <a href="${currentURI}#">The ultimate players guide to minecraft</a>
                            </div>
                            <div class="author">
                                <a href="${currentURI}#">Владимир Иванов</a>
                            </div>
                            <div class="description">
                                "Инноваторы" - история о разных этапах цифровой революции и людях, без которых не было бы ни компьютеров, ни интернета: от Ады Лавлейс, дочери лорда Байрона, первой нащупавшей принципы компьютерного программирования, до Билла Гейтса, Алана Тьюринга, Стива Джобса, Стива Возняка, Ларри Пейджа. Это книга о том, что такое инновации и как сотрудничество увеличивает творческий потенциал.
                            </div>
                            <div class="footer">
                                <div class="date">Дата выхода: <span>26 сентября 2015 года</span></div>
                                <div class="formats">Форматы: <span>EPUB, PDF</span></div>
                            </div>
                        </div>
                        <div class="actions">
                            <!-- START (Кнопка "В корзину" с ценником) -->
                            <div class="buy">
                                <div class="item price">
                                    <span class="value">112</span>
                                    <span class="currency">р.</span>
                                </div>
                                <a class="item cart-btn" href="${currentURI}#">
                                    <span class="text">В корзину</span>
                                </a>
                            </div>
                            <!-- END (Кнопка "В корзину" с ценником) -->

                            <!-- START (5 звезд рейтинга книги) -->
                            <div class="rating-5-stars">
                                <div class="rating-stars"></div>
                                <div class="rating-number">2,3</div>
                            </div>
                            <!-- END (5 звезд рейтинга книги) -->

                            <div class="reviews">
                                <a href="${currentURI}#">Рецензии (<span>15</span>)</a>
                            </div>
                        </div>
                    </div>

                    <div class="item search-result-item ebook">
                        <div class="cover">
                            <img src="resources/vb/img/tmp/book-3.jpg" width="100" height="160">
                        </div>
                        <div class="about">
                            <div class="title">
                                <a href="${currentURI}#">The ultimate players guide to minecraft</a>
                            </div>
                            <div class="author">
                                <a href="${currentURI}#">Владимир Иванов</a>
                            </div>
                            <div class="description">
                                "Инноваторы" - история о разных этапах цифровой революции и людях, без которых не было бы ни компьютеров, ни интернета: от Ады Лавлейс, дочери лорда Байрона, первой нащупавшей принципы компьютерного программирования, до Билла Гейтса, Алана Тьюринга, Стива Джобса, Стива Возняка, Ларри Пейджа. Это книга о том, что такое инновации и как сотрудничество увеличивает творческий потенциал.
                            </div>
                            <div class="footer">
                                <div class="date">Дата выхода: <span>26 сентября 2015 года</span></div>
                                <div class="formats">Форматы: <span>EPUB, PDF</span></div>
                            </div>
                        </div>
                        <div class="actions">
                            <!-- START (Кнопка "В корзину" с ценником) -->
                            <div class="buy">
                                <div class="item price">
                                    <span class="value">112</span>
                                    <span class="currency">р.</span>
                                </div>
                                <a class="item cart-btn" href="${currentURI}#">
                                    <span class="text">В корзину</span>
                                </a>
                            </div>
                            <!-- END (Кнопка "В корзину" с ценником) -->

                            <!-- START (5 звезд рейтинга книги) -->
                            <div class="rating-5-stars">
                                <div class="rating-stars"></div>
                                <div class="rating-number">2,3</div>
                            </div>
                            <!-- END (5 звезд рейтинга книги) -->

                            <div class="reviews">
                                <a href="${currentURI}#">Рецензии (<span>15</span>)</a>
                            </div>
                        </div>
                    </div>

                    <div class="item search-result-item ebook">
                        <div class="cover">
                            <img src="resources/vb/img/tmp/book-4.jpg" width="100" height="160">
                        </div>
                        <div class="about">
                            <div class="title">
                                <a href="${currentURI}#">The ultimate players guide to minecraft</a>
                            </div>
                            <div class="author">
                                <a href="${currentURI}#">Владимир Иванов</a>
                            </div>
                            <div class="description">
                                "Инноваторы" - история о разных этапах цифровой революции и людях, без которых не было бы ни компьютеров, ни интернета: от Ады Лавлейс, дочери лорда Байрона, первой нащупавшей принципы компьютерного программирования, до Билла Гейтса, Алана Тьюринга, Стива Джобса, Стива Возняка, Ларри Пейджа. Это книга о том, что такое инновации и как сотрудничество увеличивает творческий потенциал.
                            </div>
                            <div class="footer">
                                <div class="date">Дата выхода: <span>26 сентября 2015 года</span></div>
                                <div class="formats">Форматы: <span>EPUB, PDF</span></div>
                            </div>
                        </div>
                        <div class="actions">
                            <!-- START (Кнопка "В корзину" с ценником) -->
                            <div class="buy">
                                <div class="item price">
                                    <span class="value">112</span>
                                    <span class="currency">р.</span>
                                </div>
                                <a class="item cart-btn" href="${currentURI}#">
                                    <span class="text">В корзину</span>
                                </a>
                            </div>
                            <!-- END (Кнопка "В корзину" с ценником) -->

                            <!-- START (5 звезд рейтинга книги) -->
                            <div class="rating-5-stars">
                                <div class="rating-stars"></div>
                                <div class="rating-number">2,3</div>
                            </div>
                            <!-- END (5 звезд рейтинга книги) -->

                            <div class="reviews">
                                <a href="${currentURI}#">Рецензии (<span>15</span>)</a>
                            </div>
                        </div>
                    </div>

                    <div class="item search-result-item ebook">
                        <div class="cover">
                            <img src="resources/vb/img/tmp/book-5.jpg" width="100" height="160">
                        </div>
                        <div class="about">
                            <div class="title">
                                <a href="${currentURI}#">The ultimate players guide to minecraft</a>
                            </div>
                            <div class="author">
                                <a href="${currentURI}#">Владимир Иванов</a>
                            </div>
                            <div class="description">
                                "Инноваторы" - история о разных этапах цифровой революции и людях, без которых не было бы ни компьютеров, ни интернета: от Ады Лавлейс, дочери лорда Байрона, первой нащупавшей принципы компьютерного программирования, до Билла Гейтса, Алана Тьюринга, Стива Джобса, Стива Возняка, Ларри Пейджа. Это книга о том, что такое инновации и как сотрудничество увеличивает творческий потенциал.
                            </div>
                            <div class="footer">
                                <div class="date">Дата выхода: <span>26 сентября 2015 года</span></div>
                                <div class="formats">Форматы: <span>EPUB, PDF</span></div>
                            </div>
                        </div>
                        <div class="actions">
                            <!-- START (Кнопка "В корзину" с ценником) -->
                            <div class="buy">
                                <div class="item price">
                                    <span class="value">112</span>
                                    <span class="currency">р.</span>
                                </div>
                                <a class="item cart-btn" href="${currentURI}#">
                                    <span class="text">В корзину</span>
                                </a>
                            </div>
                            <!-- END (Кнопка "В корзину" с ценником) -->

                            <!-- START (5 звезд рейтинга книги) -->
                            <div class="rating-5-stars">
                                <div class="rating-stars"></div>
                                <div class="rating-number">2,3</div>
                            </div>
                            <!-- END (5 звезд рейтинга книги) -->

                            <div class="reviews">
                                <a href="${currentURI}#">Рецензии (<span>15</span>)</a>
                            </div>
                        </div>
                    </div>

                    <div class="item search-result-item ebook">
                        <div class="cover">
                            <img src="resources/vb/img/tmp/book-1.jpg" width="100" height="160">
                        </div>
                        <div class="about">
                            <div class="title">
                                <a href="${currentURI}#">The ultimate players guide to minecraft</a>
                            </div>
                            <div class="author">
                                <a href="${currentURI}#">Владимир Иванов</a>
                            </div>
                            <div class="description">
                                "Инноваторы" - история о разных этапах цифровой революции и людях, без которых не было бы ни компьютеров, ни интернета: от Ады Лавлейс, дочери лорда Байрона, первой нащупавшей принципы компьютерного программирования, до Билла Гейтса, Алана Тьюринга, Стива Джобса, Стива Возняка, Ларри Пейджа. Это книга о том, что такое инновации и как сотрудничество увеличивает творческий потенциал.
                            </div>
                            <div class="footer">
                                <div class="date">Дата выхода: <span>26 сентября 2015 года</span></div>
                                <div class="formats">Форматы: <span>EPUB, PDF</span></div>
                            </div>
                        </div>
                        <div class="actions">
                            <!-- START (Кнопка "В корзину" с ценником) -->
                            <div class="buy">
                                <div class="item price">
                                    <span class="value">112</span>
                                    <span class="currency">р.</span>
                                </div>
                                <a class="item cart-btn" href="${currentURI}#">
                                    <span class="text">В корзину</span>
                                </a>
                            </div>
                            <!-- END (Кнопка "В корзину" с ценником) -->

                            <!-- START (5 звезд рейтинга книги) -->
                            <div class="rating-5-stars">
                                <div class="rating-stars"></div>
                                <div class="rating-number">2,3</div>
                            </div>
                            <!-- END (5 звезд рейтинга книги) -->

                            <div class="reviews">
                                <a href="${currentURI}#">Рецензии (<span>15</span>)</a>
                            </div>
                        </div>
                    </div>

                    <!-- START (Кнопка "Показать еще") -->
                    <div class="show-more">
                        <a class="btn" href="${currentURI}#">
                            Показать еще
                        </a>
                    </div>
                    <!-- END (Кнопка "Показать еще") -->
                </div>

                <div class="column right-column">
                    <div class="item shifter">
                    </div>

<jsp:include page="components/vb/to-search-book.jsp"/>

<jsp:include page="components/vb/spec-ebook.jsp"/>
                </div>

                <!-- START (Тень под блоком) -->
                <div class="shadow-under"></div>
                <!-- END (Тень под блоком) -->
            </div>

            <div class="search-results audiobooks" id="audiobooks">
                <div class="column left-column">
                    <div class="item header">
                        <span class="title">Аудио-книги</span>
                        <span class="summary">
                            показано <span class="show-range">1-15</span> аудиокниг из
                            <span class="count audiobooks-count">1</span> найденн<span class="count-ending audiobooks-count-ending">ых</span>
                            по запросу "<span class="query">книга о войне</span>"
                        </span>
                    </div>

                    <!-- START (Выбор типа сортировки) -->
                    <!-- Если на странице несколько таких элементов, то нужно обеспечить уникальность имен групп radio-кнопок (name), уникальность их id-ков и соответствующих for-ов у label-ов -->
                    <div class="item sort-by">
                        <span class="title">Сортировать:</span>
                        <input type="radio" name="audiobooks-sort-link" class="sort-link-1" id="audiobooks-sort-link-1" checked />
                        <input type="radio" name="audiobooks-sort-link" class="sort-link-2" id="audiobooks-sort-link-2" />
                        <input type="radio" name="audiobooks-sort-link" class="sort-link-3" id="audiobooks-sort-link-3" />
                        <input type="radio" name="audiobooks-sort-link" class="sort-link-4" id="audiobooks-sort-link-4" />
                        <div class="sort-links">
                            <label class="sort-link sort-link-1" for="audiobooks-sort-link-1">
                                <span class="text">по популярности</span>
                                <input type="radio" name="audiobooks-sort-direction-1" class="asc" id="audiobooks-asc-sort-direction-1" >
                                <input type="radio" name="audiobooks-sort-direction-1" class="desc" id="audiobooks-desc-sort-direction-1" checked>
                                <div class="asc-desc">
                                    <label class="asc" for="audiobooks-asc-sort-direction-1"></label>
                                    <label class="desc" for="audiobooks-desc-sort-direction-1"></label>
                                </div>
                            </label>
                            <label class="sort-link sort-link-2" for="audiobooks-sort-link-2">
                                <span class="text">по рейтингу</span>
                                <input type="radio" name="audiobooks-sort-direction-2" class="asc" id="audiobooks-asc-sort-direction-2" >
                                <input type="radio" name="audiobooks-sort-direction-2" class="desc" id="audiobooks-desc-sort-direction-2" checked>
                                <div class="asc-desc">
                                    <label class="asc" for="audiobooks-asc-sort-direction-2"></label>
                                    <label class="desc" for="audiobooks-desc-sort-direction-2"></label>
                                </div>
                            </label>
                            <label class="sort-link sort-link-3" for="audiobooks-sort-link-3">
                                <span class="text">по дате публикации</span>
                                <input type="radio" name="audiobooks-sort-direction-3" class="asc" id="audiobooks-asc-sort-direction-3" >
                                <input type="radio" name="audiobooks-sort-direction-3" class="desc" id="audiobooks-desc-sort-direction-3" checked>
                                <div class="asc-desc">
                                    <label class="asc" for="audiobooks-asc-sort-direction-3"></label>
                                    <label class="desc" for="audiobooks-desc-sort-direction-3"></label>
                                </div>
                            </label>
                            <label class="sort-link sort-link-4" for="audiobooks-sort-link-4">
                                <span class="text">по цене</span>
                                <input type="radio" name="audiobooks-sort-direction-4" class="asc" id="audiobooks-asc-sort-direction-4" checked>
                                <input type="radio" name="audiobooks-sort-direction-4" class="desc" id="audiobooks-desc-sort-direction-4" >
                                <div class="asc-desc">
                                    <label class="asc" for="audiobooks-asc-sort-direction-4"></label>
                                    <label class="desc" for="audiobooks-desc-sort-direction-4"></label>
                                </div>
                            </label>
                        </div>
                    </div>
                    <!-- END (Выбор типа сортировки) -->

                    <div class="item search-result-item audiobook">
                        <div class="cover-play">
                            <img class="cover" src="resources/vb/img/tmp/audiobook-1.jpg" width="137" height="137">
                            <a class="play" href="${currentURI}#">Прослушать отрывок</a>
                        </div>
                        <div class="about">
                            <div class="title">
                                <a href="${currentURI}#">Harry Potter and the Sorcerer's Stone, Book 1</a>
                            </div>
                            <div class="author">
                                <a href="${currentURI}#">J. K. Rowling</a> (автор), <a href="${currentURI}#">Roger Allam</a> (рассказчик), <a href="${currentURI}#">Emilia Fox</a> (рассказчик)
                            </div>
                            <div class="description">
                                Harry Potter has never even heard of Hogwarts when the letters start dropping on the doormat at number four, Privet Drive. Addressed in green ink on yellowish parchment with a purple seal, they are swiftly confiscated by his grisly aunt and uncle. Then, on Harry's eleventh birthday, a great beetle-eyed giant of a man called Rubeus Hagrid bursts in with some astonishing news: Harry Potter
                            </div>
                            <div class="footer">
                                <div class="date">Дата выхода: <span>26 сентября 2015 года</span></div>
                                <div class="formats">Форматы: <span>MP3</span></div>
                            </div>
                        </div>
                        <div class="actions">
                            <!-- START (Кнопка "В корзину" с ценником) -->
                            <div class="buy">
                                <div class="item price">
                                    <span class="value">112</span>
                                    <span class="currency">р.</span>
                                </div>
                                <a class="item cart-btn" href="${currentURI}#">
                                    <span class="text">В корзину</span>
                                </a>
                            </div>
                            <!-- END (Кнопка "В корзину" с ценником) -->

                            <!-- START (5 звезд рейтинга книги) -->
                            <div class="rating-5-stars">
                                <div class="rating-stars"></div>
                                <div class="rating-number">2,3</div>
                            </div>
                            <!-- END (5 звезд рейтинга книги) -->

                            <div class="reviews">
                                <a href="${currentURI}#">Рецензии (<span>15</span>)</a>
                            </div>
                        </div>
                    </div>

                    <div class="item search-result-item audiobook">
                        <div class="cover-play">
                            <img class="cover" src="resources/vb/img/tmp/audiobook-1.jpg" width="137" height="137">
                            <a class="play" href="${currentURI}#">Прослушать отрывок</a>
                        </div>
                        <div class="about">
                            <div class="title">
                                <a href="${currentURI}#">Harry Potter and the Sorcerer's Stone, Book 1</a>
                            </div>
                            <div class="author">
                                <a href="${currentURI}#">J. K. Rowling</a> (автор), <a href="${currentURI}#">Roger Allam</a> (рассказчик), <a href="${currentURI}#">Emilia Fox</a> (рассказчик)
                            </div>
                            <div class="description">
                                Harry Potter has never even heard of Hogwarts when the letters start dropping on the doormat at number four, Privet Drive. Addressed in green ink on yellowish parchment with a purple seal, they are swiftly confiscated by his grisly aunt and uncle. Then, on Harry's eleventh birthday, a great beetle-eyed giant of a man called Rubeus Hagrid bursts in with some astonishing news: Harry Potter
                            </div>
                            <div class="footer">
                                <div class="date">Дата выхода: <span>26 сентября 2015 года</span></div>
                                <div class="formats">Форматы: <span>MP3</span></div>
                            </div>
                        </div>
                        <div class="actions">
                            <!-- START (Кнопка "В корзину" с ценником) -->
                            <div class="buy">
                                <div class="item price">
                                    <span class="value">112</span>
                                    <span class="currency">р.</span>
                                </div>
                                <a class="item cart-btn" href="${currentURI}#">
                                    <span class="text">В корзину</span>
                                </a>
                            </div>
                            <!-- END (Кнопка "В корзину" с ценником) -->

                            <!-- START (5 звезд рейтинга книги) -->
                            <div class="rating-5-stars">
                                <div class="rating-stars"></div>
                                <div class="rating-number">2,3</div>
                            </div>
                            <!-- END (5 звезд рейтинга книги) -->

                            <div class="reviews">
                                <a href="${currentURI}#">Рецензии (<span>15</span>)</a>
                            </div>
                        </div>
                    </div>

                    <div class="item search-result-item audiobook">
                        <div class="cover-play">
                            <img class="cover" src="resources/vb/img/tmp/audiobook-1.jpg" width="137" height="137">
                            <a class="play" href="${currentURI}#">Прослушать отрывок</a>
                        </div>
                        <div class="about">
                            <div class="title">
                                <a href="${currentURI}#">Harry Potter and the Sorcerer's Stone, Book 1</a>
                            </div>
                            <div class="author">
                                <a href="${currentURI}#">J. K. Rowling</a> (автор), <a href="${currentURI}#">Roger Allam</a> (рассказчик), <a href="${currentURI}#">Emilia Fox</a> (рассказчик)
                            </div>
                            <div class="description">
                                Harry Potter has never even heard of Hogwarts when the letters start dropping on the doormat at number four, Privet Drive. Addressed in green ink on yellowish parchment with a purple seal, they are swiftly confiscated by his grisly aunt and uncle. Then, on Harry's eleventh birthday, a great beetle-eyed giant of a man called Rubeus Hagrid bursts in with some astonishing news: Harry Potter
                            </div>
                            <div class="footer">
                                <div class="date">Дата выхода: <span>26 сентября 2015 года</span></div>
                                <div class="formats">Форматы: <span>MP3</span></div>
                            </div>
                        </div>
                        <div class="actions">
                            <!-- START (Кнопка "В корзину" с ценником) -->
                            <div class="buy">
                                <div class="item price">
                                    <span class="value">112</span>
                                    <span class="currency">р.</span>
                                </div>
                                <a class="item cart-btn" href="${currentURI}#">
                                    <span class="text">В корзину</span>
                                </a>
                            </div>
                            <!-- END (Кнопка "В корзину" с ценником) -->

                            <!-- START (5 звезд рейтинга книги) -->
                            <div class="rating-5-stars">
                                <div class="rating-stars"></div>
                                <div class="rating-number">2,3</div>
                            </div>
                            <!-- END (5 звезд рейтинга книги) -->

                            <div class="reviews">
                                <a href="${currentURI}#">Рецензии (<span>15</span>)</a>
                            </div>
                        </div>
                    </div>

                    <!-- START (Кнопка "Показать еще") -->
                    <div class="show-more">
                        <a class="btn" href="${currentURI}#">
                            Показать еще
                        </a>
                    </div>
                    <!-- END (Кнопка "Показать еще") -->
                </div>

                <div class="column right-column">
                    <div class="item shifter">
                    </div>

                    <!-- START (Баннер "Специальные предложения" для аудиокниг) -->
                    <div class="item spec audiobook">
                        <div class="header">
                            <div class="title">
                                Специальные предложения
                            </div>
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
                </div>

                <!-- START (Тень под блоком) -->
                <div class="shadow-under"></div>
                <!-- END (Тень под блоком) -->
            </div>
            <div class="search-results authors" id="authors">
                <div class="column left-column">
                    <div class="item header">
                        <span class="title">Авторы</span>
                        <span class="summary">
                            показано <span class="show-range">1-15</span> авторов из
                            <span class="count authors-count">1</span> найденн<span class="count-ending authors-count-ending">ых</span>
                            по запросу "<span class="query">книга о войне</span>"
                        </span>
                    </div>

                    <div class="item search-result-item author">
                        <!-- START (Фото автора в маске-обрезалке) -->
                        <div class="author-photo">
                            <img src="resources/vb/img/tmp/photo-1.jpg" width="80" height="80">
                        </div>
                        <!-- END (Фото автора в маске-обрезалке) -->

                        <div class="about">
                            <div class="fullname-rating">
                                <div class="fullname">
                                    <a href="${currentURI}#">Александр Константинопольский</a>
                                </div>

                                <!-- START (3 звезды рейтинга автора) -->
                                <div class="rating-3-stars">
                                    <div class="rating-stars"></div>
                                    <div class="rating-number">2,3</div>
                                </div>
                                <!-- END (3 звезды рейтинга автора) -->
                            </div>
                            <div class="genres">
                                Жанры:
                                <a href="${currentURI}#">военные</a>,
                                <a href="${currentURI}#">детектив</a>,
                                <a href="${currentURI}#">приключения</a>
                            </div>
                            <div class="description">
                                I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.
                            </div>
                            <div class="footer">
                                <div class="published">
                                    Опубликовано:
                                    <a href="${currentURI}#">
                                        <span>18</span>
                                        книг
                                    </a>
                                </div>
                                <div class="reviews">
                                    <a href="${currentURI}#">
                                        <span>5</span>
                                        отзывов
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="item search-result-item author">
                        <!-- START (Фото автора в маске-обрезалке) -->
                        <div class="author-photo">
                            <img src="resources/vb/img/tmp/photo-1.jpg" width="80" height="80">
                        </div>
                        <!-- END (Фото автора в маске-обрезалке) -->

                        <div class="about">
                            <div class="fullname-rating">
                                <div class="fullname">
                                    <a href="${currentURI}#">Александр Константинопольский</a>
                                </div>

                                <!-- START (3 звезды рейтинга автора) -->
                                <div class="rating-3-stars">
                                    <div class="rating-stars"></div>
                                    <div class="rating-number">2,3</div>
                                </div>
                                <!-- END (3 звезды рейтинга автора) -->
                            </div>
                            <div class="genres">
                                Жанры:
                                <a href="${currentURI}#">военные</a>,
                                <a href="${currentURI}#">детектив</a>,
                                <a href="${currentURI}#">приключения</a>
                            </div>
                            <div class="description">
                                I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.
                            </div>
                            <div class="footer">
                                <div class="published">
                                    Опубликовано:
                                    <a href="${currentURI}#">
                                        <span>18</span>
                                        книг
                                    </a>
                                </div>
                                <div class="reviews">
                                    <a href="${currentURI}#">
                                        <span>5</span>
                                        отзывов
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="item search-result-item author">
                        <!-- START (Фото автора в маске-обрезалке) -->
                        <div class="author-photo">
                            <img src="resources/vb/img/tmp/photo-1.jpg" width="80" height="80">
                        </div>
                        <!-- END (Фото автора в маске-обрезалке) -->

                        <div class="about">
                            <div class="fullname-rating">
                                <div class="fullname">
                                    <a href="${currentURI}#">Александр Константинопольский</a>
                                </div>

                                <!-- START (3 звезды рейтинга автора) -->
                                <div class="rating-3-stars">
                                    <div class="rating-stars"></div>
                                    <div class="rating-number">2,3</div>
                                </div>
                                <!-- END (3 звезды рейтинга автора) -->
                            </div>
                            <div class="genres">
                                Жанры:
                                <a href="${currentURI}#">военные</a>,
                                <a href="${currentURI}#">детектив</a>,
                                <a href="${currentURI}#">приключения</a>
                            </div>
                            <div class="description">
                                I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.
                            </div>
                            <div class="footer">
                                <div class="published">
                                    Опубликовано:
                                    <a href="${currentURI}#">
                                        <span>18</span>
                                        книг
                                    </a>
                                </div>
                                <div class="reviews">
                                    <a href="${currentURI}#">
                                        <span>5</span>
                                        отзывов
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- START (Кнопка "Показать еще") -->
                    <div class="show-more">
                        <a class="btn" href="${currentURI}#">
                            Показать еще
                        </a>
                    </div>
                    <!-- END (Кнопка "Показать еще") -->
                </div>

                <div class="column right-column">
                    <div class="item shifter">
                    </div>
                </div>
            </div>
        </main>

<jsp:include page="fragments/footer.jsp"/>