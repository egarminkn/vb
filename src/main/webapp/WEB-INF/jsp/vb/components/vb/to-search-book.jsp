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
                            .concat(toSearchBookItem.topLevelTitle)
                            .concat("\"")}'>
                <h3>
                    ${toSearchBookItem.topLevelTitle}
                </h3>
            </a>

            <c:if test="${not empty toSearchBookItem.bottomLevelTitles}">
                <ul class="bottom-level">
                    <c:forEach var="bottomLevelTitle" items="${toSearchBookItem.bottomLevelTitles}">
                        <li class="bottom-level-link">
                            <a href='${"search-book?search-query="
                                            .concat(SearchQueryDictionary.CATEGORY)
                                            .concat(": \"")
                                            .concat(toSearchBookItem.topLevelTitle)
                                            .concat("\" ")
                                            .concat(SearchQueryDictionary.SUBCATEGORY)
                                            .concat(": \"")
                                            .concat(bottomLevelTitle)
                                            .concat("\"")}'>
                                <h4>
                                    ${bottomLevelTitle}
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