<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!-- START (Форма отправки отзыва) -->
<form class="send-review textarea" method="post" action="">
    <!--
        Открывающий и закрывающий теги textarea должны быть на одной строке, т.к. иначе placeholder не отображается:
        http://stackoverflow.com/questions/10186913/html5-textarea-placeholder-not-appearing
    -->
    <!-- Для использования этого textarea в форме, нужно заполнить поле name -->
    <textarea name="review" maxlength="4000" placeholder="Оставить отзыв" required></textarea>
    <div class="textarea-info">
        <div class="info">
            Использован<span class="using-ending">о</span>
            <span class="size">0</span> символ<span class="symbol-ending">ов</span>
            из 4000 возможных
        </div>
        <button class="btn" type="submit">
            Добавить
        </button>
    </div>
</form>
<!-- END (Форма отправки отзыва) -->