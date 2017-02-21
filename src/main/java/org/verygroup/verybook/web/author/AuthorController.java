package org.verygroup.verybook.web.author;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import org.verygroup.verybook.dto.BookItem;
import org.verygroup.verybook.dto.RatingItem;
import org.verygroup.verybook.web.util.SocialControllerUtil;
import org.verygroup.verybook.web.util.ToSearchBookUtil;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;
import java.time.LocalDate;
import java.util.LinkedList;
import java.util.List;

@Controller
public class AuthorController {

    @Autowired
    private SocialControllerUtil socialUtil;

    @Autowired
    private ToSearchBookUtil searchBookUtil;

    @GetMapping("/author/{id}")
    public String author(@PathVariable("id") String authorId,
                         HttpServletRequest request, Principal currentUser, Model model) {
        socialUtil.setModel(request, currentUser, model);
//        searchBookUtil.setModel(request, currentUser, model);

        // >>> FIXME заглушка. Нужно сделать выборку из БД по authorId
        List<RatingItem> ratingItems = new LinkedList<>();
        ratingItems.add(new RatingItem(true, 19, "в общем рейтинге"));
        ratingItems.add(new RatingItem(false, 1, "среди Literary"));
        ratingItems.add(new RatingItem(true, 4, "среди Genre Fiction"));
        model.addAttribute("ratingsItems", ratingItems);
        model.addAttribute("ratingsTitle", "Рейтинг автора");

        List<BookItem> bookItems = new LinkedList<>();
        bookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 40, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-1.jpg", true));
        bookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 2), 1, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-2.jpg", true));
        bookItems.add(new BookItem(1022,51, "Бесплатно", "", LocalDate.of(2016, 1, 26), 4, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-3.jpg", true));
        bookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 9, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-4.jpg", true));
        bookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 21, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-5.jpg", true));
        bookItems.add(new BookItem(1022,51, "Бесплатно", "", LocalDate.of(2016, 1, 26), 3, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-3.jpg", true));
        model.addAttribute("bookItems", bookItems);
        // <<<

        return "vb/author";
    }

}