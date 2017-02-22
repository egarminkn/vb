<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@page import="org.verygroup.verybook.repository.SearchQueryDictionary" %>

<!-- START (Боковой баннер ссылок на страницу "Поиска книги") -->
<ul class="item top-level">
    <c:forEach var="toSearchBookItem" items="${toSearchBookItems}">
        <jsp:useBean id="toSearchBookItem" class="org.verygroup.verybook.dto.ToSearchBookItem"/>

        <li class="top-level-link">
            <a href='${"search-book?search-query="
                            .concat(SearchQueryDictionary.CATEGORY)
                            .concat(": \"")
                            .concat(toSearchBookItem.category.value)
                            .concat("\"")}'>
                <h3>
                    ${toSearchBookItem.category.value}
                </h3>
            </a>

            <c:if test="${not empty toSearchBookItem.subcategories}">
                <ul class="bottom-level">
                    <c:forEach var="subcategory" items="${toSearchBookItem.subcategories}">
                        <li class="bottom-level-link">
                            <a href='${"search-book?search-query="
                                            .concat(SearchQueryDictionary.CATEGORY)
                                            .concat(": \"")
                                            .concat(toSearchBookItem.category.value)
                                            .concat("\" ")
                                            .concat(SearchQueryDictionary.SUBCATEGORY)
                                            .concat(": \"")
                                            .concat(subcategory.value)
                                            .concat("\"")}'>
                                <h4>
                                    ${subcategory.value}
                                </h4>
                            </a>
                        </li>
                    </c:forEach>
                </ul>
            </c:if>
        </li>
    </c:forEach>
</ul>
<!-- END (Боковой баннер ссылок на страницу "Поиска книги") -->