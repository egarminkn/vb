<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!-- START (Наклонные select-ы) -->
<!-- Для использования этого select-а в форме, нужно заполнить поле name -->
<div class="skew-outer select">
    <select class="skew-inner ${selectAddClass}" name="${selectName}">
        <c:forEach var="option" items="${selectOptions}" varStatus="loop">
            <option value="${option}" ${loop.index == selectedOptionIndex ? 'selected' : ''} ${loop.index == hiddenOptionIndex ? 'hidden' : ''}>
                ${option}
            </option>
        </c:forEach>
    </select>
</div>
<!-- END (Наклонные select-ы) -->