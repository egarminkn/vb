<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!-- START (Рейтинг-список) -->
<div class="ratings">
    ${ratingsTitle}
    <div class="table">
        <c:forEach var="ratingsItem" items="${ratingsItems}" >
            <%-- задаем тип для ratingsItem, чтобы IDEA давала подсказки --%>
            <jsp:useBean id="ratingsItem" class="org.verygroup.verybook.dto.RatingItem"/>

            <div class="row">
                <div class="cell dynamic-up">
                    <!-- Можно использовать доп.класс invert для того, чтобы стрелочку направить вниз -->
                    <img class="${ratingsItem.grown ? '' : 'invert'}" src="resources/vb/svg/vb/arrow_up.svg" width="71" height="213">
                </div>
                <div class="cell rating-number">
                    №${ratingsItem.number}
                </div>
                <div class="cell">
                    <div class="rating-category">
                        <span>
                            ${ratingsItem.ratingSubcategory != null ? 'в категории' : 'в'}
                        </span>
                        <a href='
                            <c:choose>
                                <c:when test="${ratingsItem.ratingSubcategory != null}">
                                    ${"author-rating?subcategory=".concat(ratingsItem.ratingSubcategory)}
                                </c:when>
                                <c:when test="${ratingsItem.ratingSubcategory == null}">
                                    ${"author-rating"}
                                </c:when>
                            </c:choose>
                        '>
                            ${ratingsItem.ratingSubcategory != null ? ratingsItem.ratingSubcategory.value : 'общем рейтинге'}
                        </a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
<!-- END (Рейтинг-список) -->