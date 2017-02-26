<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="fn" uri="http://verybook.verygroup.org/functions" %>

<%@page import="org.verygroup.verybook.BookType" %>

<c:set var="bodyClass" value="hidden-partners-on-shelf" scope="request"/>
<c:set var="mainClass" value="author" scope="request"/>
<c:set var="sloganAdditionalClass" value="" scope="request"/>

<jsp:include page="fragments/header.jsp"/>

            <div class="left-column">
<c:set var="isAuthorPhotoLink" value="false" scope="request"/>
<c:set var="authorPhotoUrl" value="resources/vb/img/tmp/photo-1.jpg" scope="request"/>
<jsp:include page="components/vb/author-photo.jsp"/>

<jsp:include page="components/vb/rating-3-stars.jsp"/>

<jsp:include page="components/vb/ratings.jsp"/>

<c:set var="likesCount" value="1022" scope="request"/>
<c:set var="dislikesCount" value="51" scope="request"/>
<jsp:include page="components/vb/thumb-likes.jsp"/>

                <div class="promo">
                    <h2 class="title">
                        Are You an Author
                    </h2>
                    <div class="body">
                        Help us improve our Author Pages by updating your bibliography and submitting a new or current image and biography Learn more at Author Central
                    </div>
                </div>

<jsp:include page="components/vb/similar-authors.jsp"/>
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
                <div class="books" id="books">
                    <h1 class="title">
                        Книги автора
                    </h1>

<c:set var="sortName" value="books" scope="request"/>
<jsp:include page="components/vb/sort-by.jsp"/>

                    <div class="list">
<c:set var="likesBookType" value="${BookType.EBOOK}" scope="request"/>
                        <c:forEach var="bookItem" items="${bookItems}">
                            <jsp:useBean id="bookItem" class="org.verygroup.verybook.dto.BookItem"/>
<c:set var="bookId" value="${bookItem.bookId}" scope="request"/>
<c:set var="authorId" value="${bookItem.authorId}" scope="request"/>
<c:set var="bookRatingNumber" value="${bookItem.bookRatingNumber}" scope="request"/>
<c:set var="likesDislikesGrade" value="${bookItem.likesDislikesGrade}" scope="request"/>
<c:set var="likesLink" value="${bookItem.likesLink}" scope="request"/>
<c:set var="dislikesLink" value="${bookItem.dislikesLink}" scope="request"/>
<c:set var="likesCount" value="${bookItem.likesCount}" scope="request"/>
<c:set var="dislikesCount" value="${bookItem.dislikesCount}" scope="request"/>
<c:set var="priceUnderBookValue" value="${bookItem.priceUnderBookValue}" scope="request"/>
<c:set var="priceUnderBookCurrency" value="${bookItem.priceUnderBookCurrency}" scope="request"/>
<c:set var="bookPublishDate" value="${fn:formatDateToShortStr(bookItem.bookPublishDate)}" scope="request"/>
<c:set var="bookCount" value="${bookItem.bookCount}" scope="request"/>
<c:set var="authorName" value="${bookItem.authorName}" scope="request"/>
<c:set var="bookTitle" value="${bookItem.bookTitle}" scope="request"/>
<c:set var="bookCoverUrl" value="${bookItem.bookCoverUrl}" scope="request"/>
<c:set var="isAuthorHidden" value="${bookItem.authorHidden}" scope="request"/>
<c:set var="likesBookId" value="${bookId}" scope="request"/>
<jsp:include page="components/vb/book-with-cover-and-summary.jsp"/>
                        </c:forEach>
                    </div>

<jsp:include page="components/vb/show-more-btn.jsp"/>
                </div>
            </div>
        </main>

<jsp:include page="fragments/footer.jsp"/>