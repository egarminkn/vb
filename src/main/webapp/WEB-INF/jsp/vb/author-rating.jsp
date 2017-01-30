<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="bodyClass" value="hidden-partners-on-shelf" scope="request"/>
<c:set var="mainClass" value="author-rating" scope="request"/>
<c:set var="sloganAdditionalClass" value="" scope="request"/>

<jsp:include page="fragments/header.jsp"/>

            <div class="columns">
                <div class="column column-1">
<jsp:include page="components/vb/rating-category-filter.jsp"/>
                </div>

                <div class="column column-2">
                    <div class="item header">
                        <h1>Рейтинг авторов</h1>

                        <div class="categories">
                            <span class="title">
                                в категории:
                            </span>
                            <span class="query"> <!-- Сюда будет динамически вставляться текст -->
                                военные, приключения
                            </span>
                        </div>

                        <div class="summary">
                            Данному запросу соответству<span class="count-before-ending">ет</span>
                            <span class="count">3774</span>
                            автор<span class="count-after-ending">ов</span>
                        </div>
                    </div>

                    <div class="item author">
                        <div class="serial-number">
                            <span class="text">1</span>
                        </div>

<c:set var="isAuthorPhotoLink" value="false" scope="request"/>
<c:set var="authorPhotoUrl" value="resources/vb/img/tmp/photo-1.jpg" scope="request"/>
<jsp:include page="components/vb/author-photo.jsp"/>

                        <div class="about">
                            <div class="fullname-rating">
                                <div class="fullname">
                                    <a href="${currentURI}#">Александр Константинопольский</a>
                                </div>

<jsp:include page="components/vb/rating-3-stars.jsp"/>
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

                    <div class="item author">
                        <div class="serial-number">
                            <span class="text">2</span>
                        </div>

<c:set var="isAuthorPhotoLink" value="false" scope="request"/>
<c:set var="authorPhotoUrl" value="resources/vb/img/tmp/photo-1.jpg" scope="request"/>
<jsp:include page="components/vb/author-photo.jsp"/>

                        <div class="about">
                            <div class="fullname-rating">
                                <div class="fullname">
                                    <a href="${currentURI}#">Александр Константинопольский</a>
                                </div>

<jsp:include page="components/vb/rating-3-stars.jsp"/>
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

                    <div class="item author">
                        <div class="serial-number">
                            <span class="text">3</span>
                        </div>

<c:set var="isAuthorPhotoLink" value="false" scope="request"/>
<c:set var="authorPhotoUrl" value="resources/vb/img/tmp/photo-1.jpg" scope="request"/>
<jsp:include page="components/vb/author-photo.jsp"/>

                        <div class="about">
                            <div class="fullname-rating">
                                <div class="fullname">
                                    <a href="${currentURI}#">Александр Константинопольский</a>
                                </div>

<jsp:include page="components/vb/rating-3-stars.jsp"/>
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

<jsp:include page="components/vb/show-more-btn.jsp"/>
                </div>

                <div class="column column-3">

                </div>
            </div>
        </main>

<jsp:include page="fragments/footer.jsp"/>