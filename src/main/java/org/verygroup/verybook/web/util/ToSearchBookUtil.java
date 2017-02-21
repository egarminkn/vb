package org.verygroup.verybook.web.util;

import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import org.verygroup.verybook.dto.ToSearchBookItem;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;

import java.util.LinkedList;
import java.util.List;

@Component
public class ToSearchBookUtil {

    public void setModel(HttpServletRequest request, Principal currentUser, Model model) {
        // FIXME заглушка. Нужно сделать выборку из БД
        List<ToSearchBookItem> toSearchBookItems = new LinkedList<>();
        toSearchBookItems.add(new ToSearchBookItem("Акции и спецпредложения"));
        toSearchBookItems.add(new ToSearchBookItem("Бестселлеры"));
        toSearchBookItems.add(new ToSearchBookItem("Новинки"));
        toSearchBookItems.add(new ToSearchBookItem("Учебная литература", "Дошкольникам", "Школьникам и абитуриентам", "Студентам и аспирантам", "Педагогам"));
        toSearchBookItems.add(new ToSearchBookItem("Детям и родителям", "Досуг и творчество", "Книги для родителей", "Познавательная литература", "Художественная литература"));
        toSearchBookItems.add(new ToSearchBookItem("Бизнес-литература", "Деловая литература. Право. Психология", "Маркетинг. Реклама", "Менеджмент", "Финансы. Банковское дело. Инвестиции"));
        toSearchBookItems.add(new ToSearchBookItem("Художественная литература", "Биографии. Мемуары", "Детективы. Боевики. Триллеры", "Поэзия", "Русская и зарубежная проза", "Фантастика. Фэнтези. Мистика"));
        toSearchBookItems.add(new ToSearchBookItem("Нехудожественная литература", "Искусство. Культура", "Компьютеры. Интернет", "Кулинария. Напитки", "Медицина", "Наука.Техника", "Общественные и гуманитарные науки", "Психология", "Публицистика", "Путешествия. Хобби. Фото. Спорт", "Религии мира", "Рукоделие. Творчество", "Эзотерика"));
        model.addAttribute("toSearchBookItems", toSearchBookItems);
    }

}