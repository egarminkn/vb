package org.verygroup.verybook.web.util;

import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import org.verygroup.verybook.dto.SpecBookItem;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;
import java.util.LinkedList;
import java.util.List;

@Component
public class SpecEbookUtil implements Util {

    @Override
    public void setModel(HttpServletRequest request, Principal currentUser, Model model) {
        // >>> FIXME заглушка. Нужно сделать выборку из БД
        List<SpecBookItem> specBookItems = new LinkedList<>();
        specBookItems.add(new SpecBookItem("id1", "resources/vb/img/tmp/book-1.jpg", "Энциклопедия Marvel Heroes", "id1", "Дмитрий Глуховский", "599", "р.", 3.8));
        specBookItems.add(new SpecBookItem("id2", "resources/vb/img/tmp/book-5.jpg", "Непобежденные", "id2", "А.П. Константинов", "99", "р.", 3.8));
        specBookItems.add(new SpecBookItem("id3", "resources/vb/img/tmp/book-4.jpg", "Энциклопедия Marvel Heroes", "id3", "Дмитрий Глуховский", "99", "р.", 3.8));
        // <<<

        model.addAttribute("specEbookItems", specBookItems);
    }

}