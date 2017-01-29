<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!-- START (Выбор типа сортировки) -->
<!-- Если на странице несколько таких элементов, то нужно обеспечить уникальность имен групп radio-кнопок (name), уникальность их id-ков и соответствующих for-ов у label-ов -->
<div class="sort-by">
    <span class="title">Сортировать:</span>
    <input type="radio" name="${sortName}-sort-link" class="sort-link-1" id="${sortName}-sort-link-1" checked />
    <input type="radio" name="${sortName}-sort-link" class="sort-link-2" id="${sortName}-sort-link-2" />
    <input type="radio" name="${sortName}-sort-link" class="sort-link-3" id="${sortName}-sort-link-3" />
    <input type="radio" name="${sortName}-sort-link" class="sort-link-4" id="${sortName}-sort-link-4" />
    <div class="sort-links">
        <label class="sort-link sort-link-1" for="${sortName}-sort-link-1">
            <span class="text">по популярности</span>
            <input type="radio" name="${sortName}-sort-direction-1" class="asc" id="${sortName}-asc-sort-direction-1" >
            <input type="radio" name="${sortName}-sort-direction-1" class="desc" id="${sortName}-desc-sort-direction-1" checked>
            <div class="asc-desc">
                <label class="asc" for="${sortName}-asc-sort-direction-1"></label>
                <label class="desc" for="${sortName}-desc-sort-direction-1"></label>
            </div>
        </label>
        <label class="sort-link sort-link-2" for="${sortName}-sort-link-2">
            <span class="text">по рейтингу</span>
            <input type="radio" name="${sortName}-sort-direction-2" class="asc" id="${sortName}-asc-sort-direction-2" >
            <input type="radio" name="${sortName}-sort-direction-2" class="desc" id="${sortName}-desc-sort-direction-2" checked>
            <div class="asc-desc">
                <label class="asc" for="${sortName}-asc-sort-direction-2"></label>
                <label class="desc" for="${sortName}-desc-sort-direction-2"></label>
            </div>
        </label>
        <label class="sort-link sort-link-3" for="${sortName}-sort-link-3">
            <span class="text">по дате публикации</span>
            <input type="radio" name="${sortName}-sort-direction-3" class="asc" id="${sortName}-asc-sort-direction-3" >
            <input type="radio" name="${sortName}-sort-direction-3" class="desc" id="${sortName}-desc-sort-direction-3" checked>
            <div class="asc-desc">
                <label class="asc" for="${sortName}-asc-sort-direction-3"></label>
                <label class="desc" for="${sortName}-desc-sort-direction-3"></label>
            </div>
        </label>
        <label class="sort-link sort-link-4" for="${sortName}-sort-link-4">
            <span class="text">по цене</span>
            <input type="radio" name="${sortName}-sort-direction-4" class="asc" id="${sortName}-asc-sort-direction-4" checked>
            <input type="radio" name="${sortName}-sort-direction-4" class="desc" id="${sortName}-desc-sort-direction-4" >
            <div class="asc-desc">
                <label class="asc" for="${sortName}-asc-sort-direction-4"></label>
                <label class="desc" for="${sortName}-desc-sort-direction-4"></label>
            </div>
        </label>
    </div>
</div>
<!-- END (Выбор типа сортировки) -->