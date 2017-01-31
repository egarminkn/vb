<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!-- START (Боковой баннер ссылок на страницу "Поиска книги") -->
<ul class="item top-level">
    <li class="top-level-link">
        <a href="${currentURI}#">
            <h3>Бест-селлеры</h3>
        </a>
    </li>
    <li class="top-level-link">
        <a href="${currentURI}#">
            <h3>Новинки</h3>
        </a>
    </li>
    <li class="top-level-link">
        <a href="${currentURI}#">
            <h3>Акции</h3>
        </a>
    </li>
    <li class="top-level-link">
        <a href="${currentURI}#">
            <h3>Детям и родителям</h3>
        </a>
        <ul class="bottom-level">
            <li class="bottom-level-link">
                <a href="${currentURI}#">
                    <h4>Досуг и творчество</h4>
                </a>
            </li>
            <li class="bottom-level-link">
                <a href="${currentURI}#">
                    <h4>Книги для родителей</h4>
                </a>
            </li>
            <li class="bottom-level-link">
                <a href="${currentURI}#">
                    <h4>Познавательная литература</h4>
                </a>
            </li>
            <li class="bottom-level-link">
                <a href="${currentURI}#">
                    <h4>Художественная литература</h4>
                </a>
            </li>
        </ul>
    </li>
    <li class="top-level-link">
        <a href="${currentURI}#">
            <h3>Учебная литература</h3>
        </a>
        <ul class="bottom-level">
            <li class="bottom-level-link">
                <a href="${currentURI}#">
                    <h4>Дошкольникам</h4>
                </a>
            </li>
            <li class="bottom-level-link">
                <a href="${currentURI}#">
                    <h4>Школьникам и абитуриентам</h4>
                </a>
            </li>
            <li class="bottom-level-link">
                <a href="${currentURI}#">
                    <h4>Студентам и аспирантам</h4>
                </a>
            </li>
            <li class="bottom-level-link">
                <a href="${currentURI}#">
                    <h4>Педагогам</h4>
                </a>
            </li>
        </ul>
    </li>
    <li class="top-level-link">
        <a href="${currentURI}#">
            <h3>Бизнес-литература</h3>
        </a>
        <ul class="bottom-level">
            <li class="bottom-level-link">
                <a href="${currentURI}#">
                    <h4>Деловая литература. Право. Психология</h4>
                </a>
            </li>
            <li class="bottom-level-link">
                <a href="${currentURI}#">
                    <h4>Маркетинг. Реклама</h4>
                </a>
            </li>
            <li class="bottom-level-link">
                <a href="${currentURI}#">
                    <h4>Менеджмент</h4>
                </a>
            </li>
            <li class="bottom-level-link">
                <a href="${currentURI}#">
                    <h4>Финансы. Банковское дело. Инвестиции</h4>
                </a>
            </li>
        </ul>
    </li>
    <li class="top-level-link">
        <a href="${currentURI}#">
            <h3>Нехудожественная литература</h3>
        </a>
        <ul class="bottom-level">
            <li class="bottom-level-link">
                <a href="${currentURI}#">
                    <h4>Искусство. Культура</h4>
                </a>
            </li>
            <li class="bottom-level-link">
                <a href="${currentURI}#">
                    <h4>Компьютеры. Интернет</h4>
                </a>
            </li>
            <li class="bottom-level-link">
                <a href="${currentURI}#">
                    <h4>Кулинария. Напитки</h4>
                </a>
            </li>
            <li class="bottom-level-link">
                <a href="${currentURI}#">
                    <h4>Медицина</h4>
                </a>
            </li>
            <li class="bottom-level-link">
                <a href="${currentURI}#">
                    <h4>Наука.Техника</h4>
                </a>
            </li>
            <li class="bottom-level-link">
                <a href="${currentURI}#">
                    <h4>Общественные и гуманитарные науки</h4>
                </a>
            </li>
            <li class="bottom-level-link">
                <a href="${currentURI}#">
                    <h4>Психология</h4>
                </a>
            </li>
            <li class="bottom-level-link">
                <a href="${currentURI}#">
                    <h4>Публицистика</h4>
                </a>
            </li>
            <li class="bottom-level-link">
                <a href="${currentURI}#">
                    <h4>Путешествия. Хобби. Фото. Спорт</h4>
                </a>
            </li>
            <li class="bottom-level-link">
                <a href="${currentURI}#">
                    <h4>Религии мира</h4>
                </a>
            </li>
            <li class="bottom-level-link">
                <a href="${currentURI}#">
                    <h4>Рукоделие. Творчество</h4>
                </a>
            </li>
            <li class="bottom-level-link">
                <a href="${currentURI}#">
                    <h4>Эзотерика</h4>
                </a>
            </li>
        </ul>
    </li>
</ul>
<!-- END (Боковой баннер ссылок на страницу "Поиска книги") -->