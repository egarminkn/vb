<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!-- START (Боковой баннер-фильтр "Выберите категорию") -->
<div class="rating-filter-form">
    <ul class="rating-filter">
        <li class="rating-filter-header">
            <h2>Выберите категорию</h2>
        </li>

        <c:forEach var="ratingItem" items="${ratingItems}" varStatus="loopCategory">
            <jsp:useBean id="ratingItem" class="org.verygroup.verybook.dto.authorrating.RatingItem"/>

            <li class="rating-filter-group">
                <form class="rating-filter-subform">
                    <h3>${ratingItem.category.value}</h3>
                    <input type="hidden" name="category" value="${ratingItem.category}">
                    <button type="reset" class="rating-filter-subform-reset-btn" title="Сбросить фильтр"></button>
                    <ul class="checkboxes">
                        <c:forEach var="subcategory" items="${ratingItem.subcategories}" varStatus="loopSubcategory">
                            <li class="checkbox">
                                <label>
                                    <input type="checkbox" name="subcategories" value="${subcategory}">
                                    <span>
                                        ${subcategory.value}
                                    </span>
                                </label>
                            </li>
                        </c:forEach>
                    </ul>
                </form>
            </li>
        </c:forEach>
    </ul>

    <button type="submit" class="btn rating-filter-form-btn rating-filter-form-submit-btn">
        Показать
    </button>
    <button type="reset" class="btn rating-filter-form-btn rating-filter-form-reset-btn">
        Сбросить фильтр
    </button>
</div>
<!-- END (Боковой баннер-фильтр "Выберите категорию") -->