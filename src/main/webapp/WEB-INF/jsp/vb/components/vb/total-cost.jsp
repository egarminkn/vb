<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!-- START (Ценник итоговой стоимости) -->
<div class="cost">
    <span class="text">Сумма:</span>
    <span class="value">${totalCostValue}</span>
    <span class="currency">${totalCostCurrency}</span>
</div>
<!-- END (Ценник итоговой стоимости) -->