<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!-- START (Значок-вопросика с всплывающей подсказкой) -->
<div class="hint">
    <!-- Если убрать доп.класс blue, то знак вопросмка будет черного цвета -->
    <div class="question-mark ${isQuestionMarkBlue ? 'blue': ''}"></div>
    <div class="bubble-before bubble-before-1"></div>
    <div class="bubble-before bubble-before-2"></div>
    <div class="bubble" data-init-width="355">
        <span class="content">
            ${bubbleContent}
        </span>
    </div>
</div>
<!-- END (Значок-вопросика с всплывающей подсказкой) -->