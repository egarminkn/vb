<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="bodyClass" value="hidden-partners-on-shelf" scope="request"/>
<c:set var="mainClass" value="author" scope="request"/>
<c:set var="sloganAdditionalClass" value="" scope="request"/>

<jsp:include page="fragments/header.jsp"/>

            <div class="left-column">
                <!-- START (Фото автора в маске-обрезалке) -->
                <div class="author-photo">
                    <img src="resources/vb/img/tmp/photo-1.jpg" width="80" height="80">
                </div>
                <!-- END (Фото автора в маске-обрезалке) -->

<jsp:include page="components/vb/rating-3-stars.jsp"/>

<jsp:include page="components/vb/ratings.jsp"/>

                <!-- START (Пальчики-лайкчики) -->
                <div class="likes">
                    <a class="like" href="${currentURI}#">
                        1022
                    </a>
                    <a class="dislike" href="${currentURI}#">
                        51
                    </a>
                </div>
                <!-- END (Пальчики-лайкчики) -->

                <div class="promo">
                    <div class="title">
                        Are You an Author
                    </div>
                    <div class="body">
                        Help us improve our Author Pages by updating your bibliography and submitting a new or current image and biography Learn more at Author Central
                    </div>
                </div>

                <!-- START (Баннер "Похожие авторы") -->
                <div class="similar-authors">
                    <div class="title">
                        Customers Also Bought Items By
                    </div>
                    <div class="body">
                        <ul class="similar-authors-list">
                            <li class="similar-author">
                                <a href="${currentURI}#">
                                    James Rollins
                                </a>
                            </li>
                            <li class="similar-author">
                                <a href="${currentURI}#">
                                    Jeremy Robinson
                                </a>
                            </li>
                            <li class="similar-author">
                                <a href="${currentURI}#">
                                    Steve Berry
                                </a>
                            </li>
                            <li class="similar-author">
                                <a href="${currentURI}#">
                                    Sean Ellis
                                </a>
                            </li>
                            <li class="similar-author">
                                <a href="${currentURI}#">
                                    David Wood
                                </a>
                            </li>
                            <li class="similar-author">
                                <a href="${currentURI}#">
                                    Lincoln Child
                                </a>
                            </li>
                            <li class="similar-author">
                                <a href="${currentURI}#">
                                    Ben Hammott
                                </a>
                            </li>
                            <li class="similar-author">
                                <a href="${currentURI}#">
                                    Clive Cussler
                                </a>
                            </li>
                            <li class="similar-author">
                                <a href="${currentURI}#">
                                    Rebecca Cantrell
                                </a>
                            </li>
                            <li class="similar-author">
                                <a href="${currentURI}#">
                                    David Baldacci
                                </a>
                            </li>
                            <li class="similar-author">
                                <a href="${currentURI}#">
                                    Scott Mariani
                                </a>
                            </li>
                            <li class="similar-author">
                                <a href="${currentURI}#">
                                    Allison Maruska
                                </a>
                            </li>
                            <li class="similar-author">
                                <a href="${currentURI}#">
                                    Douglas Preston
                                </a>
                            </li>
                            <li class="similar-author">
                                <a href="${currentURI}#">
                                    Fernando Gamboa
                                </a>
                            </li>
                            <li class="similar-author">
                                <a href="${currentURI}#">
                                    Glenn Meade
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- END (Баннер "Похожие авторы") -->
            </div>
            <div class="right-column">
                <div class="author">
                    <div class="nick">
                        AIvanov
                    </div>
                    <div class="fullname">
                        Константин Константинопольский
                    </div>
                </div>
                <div class="description">
                    <!-- START (Кнопки сворачивания-разворачивания информации об авторе) - 1-ая часть из 2-х -->
                    <input class="expand-collapse-block expanded" type="radio" name="expand-collapse-btn" id="expanded" >
                    <input class="expand-collapse-block collapsed" type="radio" name="expand-collapse-btn" id="collapsed" checked>
                    <label class="expand-collapse-block expanded" for="expanded"></label>
                    <label class="expand-collapse-block collapsed" for="collapsed"></label>
                    <!-- END (Кнопки сворачивания-разворачивания информации об авторе) - 1-ая часть из 2-х -->

                    <!-- Два одинаковых абзаца. visible - отображается. hidden - нужен для вычисления высоты раскрытого блока описания автора -->
                    <!-- Для теста длинных описаний автора:
                        JOHAN OLANDER is a firm believer in monsters and aliens and will trust any report of sightings until proven false.As a scholar of unusual and nontraditional subjetc matters, he has also become a trusted caretaker of pseudoscience as in the case of his latest work, "My Robot The Robotic Genius of Lady Regina Bonquers III"nd any report of sightings until proven false.As a scholar of unusual nontraditional subjetc matters, he has also become a trusted JOHAN OLANDER is a firm believer in monsters and aliens and will trust any report of sightings until proven false.As a scholar of unusual and nontraditional subjetc matters, he has also become a trusted caretaker of pseudoscience as in the case of his latest work, "My Robot The Robotic Genius of Lady Regina Bonquers III"nd any report of sightings until proven false.As a scholar of unusual nontraditional subjetc matters, he has also become a trusted JOHAN OLANDER is a firm believer in monsters and aliens and will trust any report of sightings until proven false.As a scholar of unusual and nontraditional subjetc matters, he has also become a trusted caretaker of pseudoscience as in the case of his latest work, "My Robot The Robotic Genius of Lady Regina Bonquers III"nd any report of sightings until proven false.As a scholar of unusual nontraditional subjetc matters, he has also become a trusted JOHAN OLANDER is a firm believer in monsters and aliens and will trust any report of sightings until proven false.As a scholar of unusual and nontraditional subjetc matters, he has also become a trusted caretaker of pseudoscience as in the case of his latest work, "My Robot The Robotic Genius of Lady Regina Bonquers III"nd any report of sightings until proven false.As a scholar of unusual nontraditional subjetc matters, he has also become a trusted JOHAN OLANDER is a firm believer in monsters and aliens and will trust any report of sightings until proven false.As a scholar of unusual and nontraditional subjetc matters, he has also become a trusted caretaker of pseudoscience as in the case of his latest work, "My Robot The Robotic Genius of Lady Regina Bonquers III"nd any report of sightings until proven false.As a scholar of unusual nontraditional subjetc matters, he has also become a trusted
                    -->
                    <div class="paragraph visible">
                        <p class="text">
                            JOHAN OLANDER is a firm believer in monsters and aliens and will trust any report of sightings until proven false.As a scholar of unusual and nontraditional subjetc matters, he has also become a trusted caretaker of pseudoscience as in the case of his latest work, "My Robot The Robotic Genius of Lady Regina Bonquers III"nd any report of sightings until proven false.As a scholar of unusual nontraditional subjetc matters, he has also become a trusted JOHAN OLANDER is a firm believer in monsters and aliens and will trust any report of sightings until proven false.As a scholar of unusual and nontraditional subjetc matters, he has also become a trusted caretaker of pseudoscience as in the case of his latest work, "My Robot The Robotic Genius of Lady Regina Bonquers III"nd any report of sightings until proven false.As a scholar of unusual nontraditional subjetc matters, he has also become a trusted JOHAN OLANDER is a firm believer in monsters and aliens and will trust any report of sightings until proven false.As a scholar of unusual and nontraditional subjetc matters, he has also become a trusted caretaker of pseudoscience as in the case of his latest work, "My Robot The Robotic Genius of Lady Regina Bonquers III"nd any report of sightings until proven false.As a scholar of unusual nontraditional subjetc matters, he has also become a trusted JOHAN OLANDER is a firm believer in monsters and aliens and will trust any report of sightings until proven false.As a scholar of unusual and nontraditional subjetc matters, he has also become a trusted caretaker of pseudoscience as in the case of his latest work, "My Robot The Robotic Genius of Lady Regina Bonquers III"nd any report of sightings until proven false.As a scholar of unusual nontraditional subjetc matters, he has also become a trusted JOHAN OLANDER is a firm believer in monsters and aliens and will trust any report of sightings until proven false.As a scholar of unusual and nontraditional subjetc matters, he has also become a trusted caretaker of pseudoscience as in the case of his latest work, "My Robot The Robotic Genius of Lady Regina Bonquers III"nd any report of sightings until proven false.As a scholar of unusual nontraditional subjetc matters, he has also become a trusted
                        </p>
                        <div class="after"></div>
                    </div>
                    <div class="paragraph hidden">
                        <p class="text">
                            JOHAN OLANDER is a firm believer in monsters and aliens and will trust any report of sightings until proven false.As a scholar of unusual and nontraditional subjetc matters, he has also become a trusted caretaker of pseudoscience as in the case of his latest work, "My Robot The Robotic Genius of Lady Regina Bonquers III"nd any report of sightings until proven false.As a scholar of unusual nontraditional subjetc matters, he has also become a trusted JOHAN OLANDER is a firm believer in monsters and aliens and will trust any report of sightings until proven false.As a scholar of unusual and nontraditional subjetc matters, he has also become a trusted caretaker of pseudoscience as in the case of his latest work, "My Robot The Robotic Genius of Lady Regina Bonquers III"nd any report of sightings until proven false.As a scholar of unusual nontraditional subjetc matters, he has also become a trusted JOHAN OLANDER is a firm believer in monsters and aliens and will trust any report of sightings until proven false.As a scholar of unusual and nontraditional subjetc matters, he has also become a trusted caretaker of pseudoscience as in the case of his latest work, "My Robot The Robotic Genius of Lady Regina Bonquers III"nd any report of sightings until proven false.As a scholar of unusual nontraditional subjetc matters, he has also become a trusted JOHAN OLANDER is a firm believer in monsters and aliens and will trust any report of sightings until proven false.As a scholar of unusual and nontraditional subjetc matters, he has also become a trusted caretaker of pseudoscience as in the case of his latest work, "My Robot The Robotic Genius of Lady Regina Bonquers III"nd any report of sightings until proven false.As a scholar of unusual nontraditional subjetc matters, he has also become a trusted JOHAN OLANDER is a firm believer in monsters and aliens and will trust any report of sightings until proven false.As a scholar of unusual and nontraditional subjetc matters, he has also become a trusted caretaker of pseudoscience as in the case of his latest work, "My Robot The Robotic Genius of Lady Regina Bonquers III"nd any report of sightings until proven false.As a scholar of unusual nontraditional subjetc matters, he has also become a trusted
                        </p>
                    </div>

                    <!-- START (Кнопки сворачивания-разворачивания информации об авторе) - 2-ая часть из 2-х -->
                    <div class="expand-collapse-block"></div>
                    <!-- END (Кнопки сворачивания-разворачивания информации об авторе) - 2-ая часть из 2-х -->

                    <!-- START (Тень под блоком) -->
                    <div class="shadow-under"></div>
                    <!-- END (Тень под блоком) -->
                </div>
                <div class="books">
                    <div class="title">
                        Книги автора
                    </div>

<c:set var="sortName" value="books" scope="request"/>
<jsp:include page="components/vb/sort-by.jsp"/>

                    <div class="list">
                        <!-- START (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->
                        <!-- Доп.класс hidden-author нужен для страницы "Автора" (author), чтобы скрыть имя автора и общее количество его книг -->
                        <div class="book-with-cover-and-summary hidden-author">
                            <a class="book-cover" href="${currentURI}#">
                                <img src="resources/vb/img/tmp/book-1.jpg" width="230" height="368">
                            </a>

                            <div class="book-summary">
                                <div class="book-title-and-author">
                                    <!-- В бабле ниже блок main повторяется один в один (копи-паст) -->
                                    <div class="main">
                                        <a class="book-title" href="${currentURI}#">
                                            <span class="text">
                                                Древняя Русь в картинках
                                            </span>
                                        </a>
                                        <a class="book-author" href="${currentURI}#">
                                            <div class="author-name">
                                                <span class="text">
                                                    А.А. Иванов
                                                </span>
                                            </div>
                                            <div class="book-count">
                                                (<span class="text"><span class="count">40</span>
                                                книг<span class="count-ending"></span></span>)
                                            </div>
                                        </a>
                                    </div>
                                    <div class="bubble-before bubble-before-1"></div>
                                    <div class="bubble-before bubble-before-2"></div>
                                    <div class="bubble" data-init-width="185">
                                        <!-- Выше блок main повторяется один в один (копи-паст) -->
                                        <div class="main">
                                            <a class="book-title" href="${currentURI}#">
                                                <span class="text">
                                                    Древняя Русь в картинках
                                                </span>
                                            </a>
                                            <a class="book-author" href="${currentURI}#">
                                                <div class="author-name">
                                                    <span class="text">
                                                        А.А. Иванов
                                                    </span>
                                                </div>
                                                <div class="book-count">
                                                    (<span class="text"><span class="count">40</span>
                                                    книг<span class="count-ending"></span></span>)
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="book-publish-date">
                                    26 Янв 2016
                                </div>

<jsp:include page="components/vb/rating-5-stars.jsp"/>

                                <!-- START (Пальчики-лайкчики) -->
                                <div class="likes">
                                    <a class="like" href="${currentURI}#">
                                        1022
                                    </a>
                                    <a class="dislike" href="${currentURI}#">
                                        51
                                    </a>
                                </div>
                                <!-- END (Пальчики-лайкчики) -->

                                <!-- START (Ценник под книгой) -->
                                <div class="price-under-book">
                                    <!-- Если книга отдается за даром, то:
                                            1) к div добавляется класс free
                                            2) цена меняется на слово "Бесплатно"
                                            3) содержимое валюты удаляется
                                    -->
                                    <span class="value">20</span>
                                    <span class="currency">руб</span>
                                </div>
                                <!-- END (Ценник под книгой) -->
                            </div>
                        </div>
                        <!-- END (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->

                        <!-- START (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->
                        <!-- Доп.класс hidden-author нужен для страницы "Автора" (author), чтобы скрыть имя автора и общее количество его книг -->
                        <div class="book-with-cover-and-summary hidden-author">
                            <a class="book-cover" href="${currentURI}#">
                                <img src="resources/vb/img/tmp/book-2.jpg" width="230" height="368">
                            </a>

                            <div class="book-summary">
                                <div class="book-title-and-author">
                                    <!-- В бабле ниже блок main повторяется один в один (копи-паст) -->
                                    <div class="main">
                                        <a class="book-title" href="${currentURI}#">
                                            <span class="text">
                                                Древняя Русь в картинках
                                            </span>
                                        </a>
                                        <a class="book-author" href="${currentURI}#">
                                            <div class="author-name">
                                                <span class="text">
                                                    А.А. Иванов
                                                </span>
                                            </div>
                                            <div class="book-count">
                                                (<span class="text"><span class="count">1</span>
                                                книг<span class="count-ending"></span></span>)
                                            </div>
                                        </a>
                                    </div>
                                    <div class="bubble-before bubble-before-1"></div>
                                    <div class="bubble-before bubble-before-2"></div>
                                    <div class="bubble" data-init-width="185">
                                        <!-- Выше блок main повторяется один в один (копи-паст) -->
                                        <div class="main">
                                            <a class="book-title" href="${currentURI}#">
                                                <span class="text">
                                                    Древняя Русь в картинках
                                                </span>
                                            </a>
                                            <a class="book-author" href="${currentURI}#">
                                                <div class="author-name">
                                                    <span class="text">
                                                        А.А. Иванов
                                                    </span>
                                                </div>
                                                <div class="book-count">
                                                    (<span class="text"><span class="count">1</span>
                                                    книг<span class="count-ending"></span></span>)
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="book-publish-date">
                                    26 Янв 2016
                                </div>

<jsp:include page="components/vb/rating-5-stars.jsp"/>

                                <!-- START (Пальчики-лайкчики) -->
                                <div class="likes">
                                    <a class="like" href="${currentURI}#">
                                        1022
                                    </a>
                                    <a class="dislike" href="${currentURI}#">
                                        51
                                    </a>
                                </div>
                                <!-- END (Пальчики-лайкчики) -->

                                <!-- START (Ценник под книгой) -->
                                <div class="price-under-book">
                                    <!-- Если книга отдается за даром, то:
                                            1) к div добавляется класс free
                                            2) цена меняется на слово "Бесплатно"
                                            3) содержимое валюты удаляется
                                    -->
                                    <span class="value">20</span>
                                    <span class="currency">руб</span>
                                </div>
                                <!-- END (Ценник под книгой) -->
                            </div>
                        </div>
                        <!-- END (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->

                        <!-- START (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->
                        <!-- Доп.класс hidden-author нужен для страницы "Автора" (author), чтобы скрыть имя автора и общее количество его книг -->
                        <div class="book-with-cover-and-summary hidden-author">
                            <a class="book-cover" href="${currentURI}#">
                                <img src="resources/vb/img/tmp/book-3.jpg" width="230" height="368">
                            </a>

                            <div class="book-summary">
                                <div class="book-title-and-author">
                                    <!-- В бабле ниже блок main повторяется один в один (копи-паст) -->
                                    <div class="main">
                                        <a class="book-title" href="${currentURI}#">
                                            <span class="text">
                                                Древняя Русь в картинках
                                            </span>
                                        </a>
                                        <a class="book-author" href="${currentURI}#">
                                            <div class="author-name">
                                                <span class="text">
                                                    А.А. Иванов
                                                </span>
                                            </div>
                                            <div class="book-count">
                                                (<span class="text"><span class="count">4</span>
                                                книг<span class="count-ending"></span></span>)
                                            </div>
                                        </a>
                                    </div>
                                    <div class="bubble-before bubble-before-1"></div>
                                    <div class="bubble-before bubble-before-2"></div>
                                    <div class="bubble" data-init-width="185">
                                        <!-- Выше блок main повторяется один в один (копи-паст) -->
                                        <div class="main">
                                            <a class="book-title" href="${currentURI}#">
                                                <span class="text">
                                                    Древняя Русь в картинках
                                                </span>
                                            </a>
                                            <a class="book-author" href="${currentURI}#">
                                                <div class="author-name">
                                                    <span class="text">
                                                        А.А. Иванов
                                                    </span>
                                                </div>
                                                <div class="book-count">
                                                    (<span class="text"><span class="count">4</span>
                                                    книг<span class="count-ending"></span></span>)
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="book-publish-date">
                                    26 Янв 2016
                                </div>

<jsp:include page="components/vb/rating-5-stars.jsp"/>

                                <!-- START (Пальчики-лайкчики) -->
                                <div class="likes">
                                    <a class="like" href="${currentURI}#">
                                        1022
                                    </a>
                                    <a class="dislike" href="${currentURI}#">
                                        51
                                    </a>
                                </div>
                                <!-- END (Пальчики-лайкчики) -->

                                <!-- START (Ценник под книгой) -->
                                <div class="price-under-book free">
                                    <!-- Если книга отдается за даром, то:
                                            1) к div добавляется класс free
                                            2) цена меняется на слово "Бесплатно"
                                            3) содержимое валюты удаляется
                                    -->
                                    <span class="value">Бесплатно</span>
                                    <span class="currency"></span>
                                </div>
                                <!-- END (Ценник под книгой) -->
                            </div>
                        </div>
                        <!-- END (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->

                        <!-- START (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->
                        <!-- Доп.класс hidden-author нужен для страницы "Автора" (author), чтобы скрыть имя автора и общее количество его книг -->
                        <div class="book-with-cover-and-summary hidden-author">
                            <a class="book-cover" href="${currentURI}#">
                                <img src="resources/vb/img/tmp/book-4.jpg" width="230" height="368">
                            </a>

                            <div class="book-summary">
                                <div class="book-title-and-author">
                                    <!-- В бабле ниже блок main повторяется один в один (копи-паст) -->
                                    <div class="main">
                                        <a class="book-title" href="${currentURI}#">
                                            <span class="text">
                                                Древняя Русь в картинках
                                            </span>
                                        </a>
                                        <a class="book-author" href="${currentURI}#">
                                            <div class="author-name">
                                                <span class="text">
                                                    А.А. Иванов
                                                </span>
                                            </div>
                                            <div class="book-count">
                                                (<span class="text"><span class="count">9</span>
                                                книг<span class="count-ending"></span></span>)
                                            </div>
                                        </a>
                                    </div>
                                    <div class="bubble-before bubble-before-1"></div>
                                    <div class="bubble-before bubble-before-2"></div>
                                    <div class="bubble" data-init-width="185">
                                        <!-- Выше блок main повторяется один в один (копи-паст) -->
                                        <div class="main">
                                            <a class="book-title" href="${currentURI}#">
                                                <span class="text">
                                                    Древняя Русь в картинках
                                                </span>
                                            </a>
                                            <a class="book-author" href="${currentURI}#">
                                                <div class="author-name">
                                                    <span class="text">
                                                        А.А. Иванов
                                                    </span>
                                                </div>
                                                <div class="book-count">
                                                    (<span class="text"><span class="count">9</span>
                                                    книг<span class="count-ending"></span></span>)
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="book-publish-date">
                                    26 Янв 2016
                                </div>

<jsp:include page="components/vb/rating-5-stars.jsp"/>

                                <!-- START (Пальчики-лайкчики) -->
                                <div class="likes">
                                    <a class="like" href="${currentURI}#">
                                        1022
                                    </a>
                                    <a class="dislike" href="${currentURI}#">
                                        51
                                    </a>
                                </div>
                                <!-- END (Пальчики-лайкчики) -->

                                <!-- START (Ценник под книгой) -->
                                <div class="price-under-book">
                                    <!-- Если книга отдается за даром, то:
                                            1) к div добавляется класс free
                                            2) цена меняется на слово "Бесплатно"
                                            3) содержимое валюты удаляется
                                    -->
                                    <span class="value">20</span>
                                    <span class="currency">руб</span>
                                </div>
                                <!-- END (Ценник под книгой) -->
                            </div>
                        </div>
                        <!-- END (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->

                        <!-- START (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->
                        <!-- Доп.класс hidden-author нужен для страницы "Автора" (author), чтобы скрыть имя автора и общее количество его книг -->
                        <div class="book-with-cover-and-summary hidden-author">
                            <a class="book-cover" href="${currentURI}#">
                                <img src="resources/vb/img/tmp/book-5.jpg" width="230" height="368">
                            </a>

                            <div class="book-summary">
                                <div class="book-title-and-author">
                                    <!-- В бабле ниже блок main повторяется один в один (копи-паст) -->
                                    <div class="main">
                                        <a class="book-title" href="${currentURI}#">
                                            <span class="text">
                                                Древняя Русь в картинках
                                            </span>
                                        </a>
                                        <a class="book-author" href="${currentURI}#">
                                            <div class="author-name">
                                                <span class="text">
                                                    А.А. Иванов
                                                </span>
                                            </div>
                                            <div class="book-count">
                                                (<span class="text"><span class="count">21</span>
                                                книг<span class="count-ending"></span></span>)
                                            </div>
                                        </a>
                                    </div>
                                    <div class="bubble-before bubble-before-1"></div>
                                    <div class="bubble-before bubble-before-2"></div>
                                    <div class="bubble" data-init-width="185">
                                        <!-- Выше блок main повторяется один в один (копи-паст) -->
                                        <div class="main">
                                            <a class="book-title" href="${currentURI}#">
                                                <span class="text">
                                                    Древняя Русь в картинках
                                                </span>
                                            </a>
                                            <a class="book-author" href="${currentURI}#">
                                                <div class="author-name">
                                                    <span class="text">
                                                        А.А. Иванов
                                                    </span>
                                                </div>
                                                <div class="book-count">
                                                    (<span class="text"><span class="count">21</span>
                                                    книг<span class="count-ending"></span></span>)
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="book-publish-date">
                                    26 Янв 2016
                                </div>

<jsp:include page="components/vb/rating-5-stars.jsp"/>

                                <!-- START (Пальчики-лайкчики) -->
                                <div class="likes">
                                    <a class="like" href="${currentURI}#">
                                        1022
                                    </a>
                                    <a class="dislike" href="${currentURI}#">
                                        51
                                    </a>
                                </div>
                                <!-- END (Пальчики-лайкчики) -->

                                <!-- START (Ценник под книгой) -->
                                <div class="price-under-book">
                                    <!-- Если книга отдается за даром, то:
                                            1) к div добавляется класс free
                                            2) цена меняется на слово "Бесплатно"
                                            3) содержимое валюты удаляется
                                    -->
                                    <span class="value">20</span>
                                    <span class="currency">руб</span>
                                </div>
                                <!-- END (Ценник под книгой) -->
                            </div>
                        </div>
                        <!-- END (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->

                        <!-- START (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->
                        <!-- Доп.класс hidden-author нужен для страницы "Автора" (author), чтобы скрыть имя автора и общее количество его книг -->
                        <div class="book-with-cover-and-summary hidden-author">
                            <a class="book-cover" href="${currentURI}#">
                                <img src="resources/vb/img/tmp/book-3.jpg" width="230" height="368">
                            </a>

                            <div class="book-summary">
                                <div class="book-title-and-author">
                                    <!-- В бабле ниже блок main повторяется один в один (копи-паст) -->
                                    <div class="main">
                                        <a class="book-title" href="${currentURI}#">
                                            <span class="text">
                                                Древняя Русь в картинках
                                            </span>
                                        </a>
                                        <a class="book-author" href="${currentURI}#">
                                            <div class="author-name">
                                                <span class="text">
                                                    А.А. Иванов
                                                </span>
                                            </div>
                                            <div class="book-count">
                                                (<span class="text"><span class="count">14</span>
                                                книг<span class="count-ending"></span></span>)
                                            </div>
                                        </a>
                                    </div>
                                    <div class="bubble-before bubble-before-1"></div>
                                    <div class="bubble-before bubble-before-2"></div>
                                    <div class="bubble" data-init-width="185">
                                        <!-- Выше блок main повторяется один в один (копи-паст) -->
                                        <div class="main">
                                            <a class="book-title" href="${currentURI}#">
                                                <span class="text">
                                                    Древняя Русь в картинках
                                                </span>
                                            </a>
                                            <a class="book-author" href="${currentURI}#">
                                                <div class="author-name">
                                                    <span class="text">
                                                        А.А. Иванов
                                                    </span>
                                                </div>
                                                <div class="book-count">
                                                    (<span class="text"><span class="count">3</span>
                                                    книг<span class="count-ending"></span></span>)
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="book-publish-date">
                                    26 Янв 2016
                                </div>

<jsp:include page="components/vb/rating-5-stars.jsp"/>

                                <!-- START (Пальчики-лайкчики) -->
                                <div class="likes">
                                    <a class="like" href="${currentURI}#">
                                        1022
                                    </a>
                                    <a class="dislike" href="${currentURI}#">
                                        51
                                    </a>
                                </div>
                                <!-- END (Пальчики-лайкчики) -->

                                <!-- START (Ценник под книгой) -->
                                <div class="price-under-book free">
                                    <!-- Если книга отдается за даром, то:
                                            1) к div добавляется класс free
                                            2) цена меняется на слово "Бесплатно"
                                            3) содержимое валюты удаляется
                                    -->
                                    <span class="value">Бесплатно</span>
                                    <span class="currency"></span>
                                </div>
                                <!-- END (Ценник под книгой) -->
                            </div>
                        </div>
                        <!-- END (Обложка и размещенная под ней сводная информация о книге и ее авторе) -->
                    </div>

                    <!-- START (Кнопка "Показать еще") -->
                    <div class="show-more">
                        <a class="btn" href="${currentURI}#">
                            Показать еще
                        </a>
                    </div>
                    <!-- END (Кнопка "Показать еще") -->
                </div>
            </div>
        </main>

<jsp:include page="fragments/footer.jsp"/>