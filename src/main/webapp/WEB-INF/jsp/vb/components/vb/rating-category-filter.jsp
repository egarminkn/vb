<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!-- START (Боковой баннер-фильтр "Выберите категорию") -->
<ul class="rating-filter">
    <li class="rating-filter-header">
        <h2>Выберите категорию</h2>
    </li>
    <li class="rating-filter-group">
        <h3>Категория 1</h3>
        <ul class="radios">
            <label>
                <input type="radio" name="radio-group-1" value="1">
                <li class="radio">
                    Досуг и творчество
                </li>
            </label>
            <label>
                <input type="radio" name="radio-group-1" value="2">
                <li class="radio">
                    На какой бумаге печатать книгу и обложку?
                </li>
            </label>
            <label>
                <input type="radio" name="radio-group-1" value="3">
                <li class="radio">
                    Переплет и количество страниц
                </li>
            </label>
            <label>
                <input type="radio" name="radio-group-1" value="4">
                <li class="radio">
                    Твердый переплет
                </li>
            </label>
            <label>
                <input type="radio" name="radio-group-1" value="5">
                <li class="radio">
                    Как определить цену?
                </li>
            </label>
        </ul>
    </li>
    <li class="rating-filter-group">
        <h3>Категория 2</h3>
        <ul class="radios">
            <label>
                <input type="radio" name="radio-group-2" value="1">
                <li class="radio">
                    Досуг и творчество
                </li>
            </label>
            <label>
                <input type="radio" name="radio-group-2" value="2">
                <li class="radio">
                    Книги для родителей
                </li>
            </label>
            <label>
                <input type="radio" name="radio-group-2" value="3">
                <li class="radio">
                    Познавательная литература
                </li>
            </label>
            <label>
                <input type="radio" name="radio-group-2" value="4">
                <li class="radio">
                    Художественная литература
                </li>
            </label>
        </ul>
    </li>
    <li class="rating-filter-group">
        <h3>Категория 3</h3>
        <ul class="radios">
            <label>
                <input type="radio" name="radio-group-3" value="1">
                <li class="radio">
                    Досуг и творчество
                </li>
            </label>
            <label>
                <input type="radio" name="radio-group-3" value="2">
                <li class="radio">
                    Книги для родителей
                </li>
            </label>
            <label>
                <input type="radio" name="radio-group-3" value="3">
                <li class="radio">
                    Познавательная литература
                </li>
            </label>
            <label>
                <input type="radio" name="radio-group-3" value="4">
                <li class="radio">
                    Художественная литература
                </li>
            </label>
        </ul>
    </li>
    <li class="rating-filter-group">
        <h3>Категория 4</h3>
        <ul class="radios">
            <label>
                <input type="radio" name="radio-group-4" value="1">
                <li class="radio">
                    Дошкольникам
                </li>
            </label>
            <label>
                <input type="radio" name="radio-group-4" value="2">
                <li class="radio">
                    Школьникам и абитуриентам
                </li>
            </label>
            <label>
                <input type="radio" name="radio-group-4" value="3">
                <li class="radio">
                    Студентам и аспирантам
                </li>
            </label>
            <label>
                <input type="radio" name="radio-group-4" value="4">
                <li class="radio">
                    Педагогам
                </li>
            </label>
        </ul>
    </li>
    <li class="rating-filter-group">
        <h3>Категория 5</h3>
        <ul class="radios">
            <label>
                <input type="radio" name="radio-group-5" value="1">
                <li class="radio">
                    Досуг и творчество
                </li>
            </label>
            <label>
                <input type="radio" name="radio-group-5" value="2">
                <li class="radio">
                    Книги для родителей
                </li>
            </label>
            <label>
                <input type="radio" name="radio-group-5" value="3">
                <li class="radio">
                    Познавательная литература
                </li>
            </label>
            <label>
                <input type="radio" name="radio-group-5" value="4">
                <li class="radio">
                    Художественная литература
                </li>
            </label>
        </ul>
    </li>
</ul>
<!-- END (Боковой баннер-фильтр "Выберите категорию") -->