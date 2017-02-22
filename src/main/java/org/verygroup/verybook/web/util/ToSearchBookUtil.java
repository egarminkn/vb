package org.verygroup.verybook.web.util;

import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import org.verygroup.verybook.BookCategory;
import org.verygroup.verybook.dto.ToSearchBookItem;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;

import java.util.LinkedList;
import java.util.List;

@Component
public class ToSearchBookUtil {

    public void setModel(HttpServletRequest request, Principal currentUser, Model model) {
        // >>> FIXME заглушка. Нужно сделать выборку из БД
        List<ToSearchBookItem> toSearchBookItems = new LinkedList<>();
        toSearchBookItems.add(new ToSearchBookItem(BookCategory.PROMO));
        toSearchBookItems.add(new ToSearchBookItem(BookCategory.BESTSELLERS));
        toSearchBookItems.add(new ToSearchBookItem(BookCategory.NOVELTY));
        toSearchBookItems.add(new ToSearchBookItem(BookCategory.EDUCATIONAL));
        toSearchBookItems.add(new ToSearchBookItem(BookCategory.CHILDREN));
        toSearchBookItems.add(new ToSearchBookItem(BookCategory.BUSINESS));
        toSearchBookItems.add(new ToSearchBookItem(BookCategory.FICTION));
        toSearchBookItems.add(new ToSearchBookItem(BookCategory.NON_FICTION));
        // <<<

        model.addAttribute("toSearchBookItems", toSearchBookItems);
    }

}