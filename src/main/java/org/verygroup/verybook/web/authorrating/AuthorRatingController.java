package org.verygroup.verybook.web.authorrating;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.verygroup.verybook.BookGenre;
import org.verygroup.verybook.dto.authorrating.AuthorItem;
import org.verygroup.verybook.web.util.SocialControllerUtil;
import org.verygroup.verybook.web.util.ToSearchBookUtil;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;

import java.util.LinkedList;
import java.util.List;

@Controller
public class AuthorRatingController {

    @Autowired
    private SocialControllerUtil socialUtil;

    @Autowired
    private ToSearchBookUtil searchBookUtil;

    @GetMapping("/author-rating")
    public String authorRating(HttpServletRequest request, Principal currentUser, Model model) {
        socialUtil.setModel(request, currentUser, model);
//        searchBookUtil.setModel(request, currentUser, model);

        // >>> FIXME заглушка. Нужно сделать выборку из БД
        List<AuthorItem> authorItems = new LinkedList<>();
        authorItems.add(new AuthorItem("id1", "resources/vb/img/tmp/photo-1.jpg", "Александр Константинопольский", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 1, 17, BookGenre.MILITARY, BookGenre.DETECTIVE, BookGenre.ADVENTURES));
        authorItems.add(new AuthorItem("id2", "resources/vb/img/tmp/photo-1.jpg", "Александр Константинопольский", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 4, 21, BookGenre.MILITARY, BookGenre.DETECTIVE, BookGenre.ADVENTURES));
        authorItems.add(new AuthorItem("id3", "resources/vb/img/tmp/photo-1.jpg", "Александр Константинопольский", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 7, 43, BookGenre.MILITARY, BookGenre.DETECTIVE, BookGenre.ADVENTURES));
        model.addAttribute("authorItems", authorItems);
        // <<<

        return "vb/author-rating";
    }

}