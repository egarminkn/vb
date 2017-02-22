package org.verygroup.verybook.web.ebook;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import org.verygroup.verybook.dto.BookItem;
import org.verygroup.verybook.dto.RatingItem;
import org.verygroup.verybook.dto.book.ReviewItem;
import org.verygroup.verybook.web.util.*;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;
import java.time.LocalDate;
import java.util.LinkedList;
import java.util.List;

@Controller
public class EbookController {

    @Autowired
    private SocialControllerUtil socialUtil;
    @Autowired
    private ToSearchBookUtil searchBookUtil;
    @Autowired
    private SpecEbookUtil specEbookUtil;
    @Autowired
    private SpecAudiobookUtil specAudiobookUtil;

    @GetMapping("/ebook/{id}")
    public String ebook(@PathVariable("id") String ebookId,
                        HttpServletRequest request, Principal currentUser, Model model) {
        socialUtil.setModel(request, currentUser, model);
//        searchBookUtil.setModel(request, currentUser, model);
//        specEbookUtil.setModel(request, currentUser, model);
//        specAudiobookUtil.setModel(request, currentUser, model);

        // >>> FIXME заглушка. Сделать выборку из БД для ebookId
        List<RatingItem> ratingItems = new LinkedList<>();
        ratingItems.add(new RatingItem(true, 19, "в общем рейтинге"));
        ratingItems.add(new RatingItem(false, 1, "среди Общественные и гуманитарные науки"));
        ratingItems.add(new RatingItem(true, 4, "среди Деловая литература, право, психология"));
        model.addAttribute("ratingsItems", ratingItems);

        List<BookItem> bookItems = new LinkedList<>();
        bookItems.add(new BookItem(12000,12000, "20", "руб", LocalDate.of(2016, 1, 26), 40, "А.А. Иванов", "Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие", "resources/vb/img/tmp/book-1.jpg", false));
        bookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 1, "А.А. Иванов", "Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие", "resources/vb/img/tmp/book-2.jpg", false));
        bookItems.add(new BookItem(1022,51, "Бесплатно", "", LocalDate.of(2016, 1, 26), 4, "А.А. Иванов", "Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие", "resources/vb/img/tmp/book-3.jpg", false));
        bookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 9, "А.А. Иванов", "Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие", "resources/vb/img/tmp/book-4.jpg", false));
        bookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 110999, "Константин Галактионович Константинопольский", "Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие", "resources/vb/img/tmp/book-5.jpg", false));
        bookItems.add(new BookItem(1022,51, "Бесплатно", "", LocalDate.of(2016, 1, 26), 3, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-3.jpg", false));
        bookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 40, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-1.jpg", false));
        bookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 1, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-2.jpg", false));
        bookItems.add(new BookItem(1022,51, "Бесплатно", "", LocalDate.of(2016, 1, 26), 4, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-3.jpg", false));
        bookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 9, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-4.jpg", false));
        bookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 21, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-5.jpg", false));
        bookItems.add(new BookItem(1022,51, "Бесплатно", "", LocalDate.of(2016, 1, 26), 3, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-3.jpg", false));
        bookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 1, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-2.jpg", false));
        bookItems.add(new BookItem(1022,51, "Бесплатно", "", LocalDate.of(2016, 1, 26), 4, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-3.jpg", false));
        bookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 9, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-4.jpg", false));
        model.addAttribute("bookItems", bookItems);

        List<ReviewItem> reviewItems = new LinkedList<>();
        reviewItems.add(new ReviewItem("Good book for beginners, but daily or even weekly players look elsewhere", "BruceInCola", LocalDate.of(2014, 12, 26), "The first edition of this book helped me learn Minecraft well enough to keep up with my grandson for a little while, at least. He moved through his Minecraft phase and on to online First Person Shooters all too fast. So now Minecraft in Creative mode is where I spend my time and that, incidentally is my only criticism of this otherwi excellent guide: it is focused primarily on Surviva mode, which I don’t find to be fun. But kids love the kill-r aspect of Survival mode and kids are who this book is written for Fortunately nearly all the information i s applicable t all Minecraft modes. (By the way, you can set the mayhem to low in Survival mode, but I just don’t care for the competitive aspect. I’d rather spend all my time creating new worl"));
        reviewItems.add(new ReviewItem("Good book for beginners, but daily or even weekly players look elsewhere", "BruceInCola", LocalDate.of(2014, 12, 26), "The first edition of this book helped me learn Minecraft well enough to keep up with my grandson for a little while, at least. He moved through his Minecraft phase and on to online First Person Shooters all too fast. So now Minecraft in Creative mode is where I spend my time and that, incidentally is my only criticism of this otherwi excellent guide: it is focused primarily on Surviva mode, which I don’t find to be fun. But kids love the kill-r aspect of Survival mode and kids are who this book is written for Fortunately nearly all the information i s applicable t all Minecraft modes. (By the way, you can set the mayhem to low in Survival mode, but I just don’t care for the competitive aspect. I’d rather spend all my time creating new worl"));
        reviewItems.add(new ReviewItem("Good book for beginners, but daily or even weekly players look elsewhere", "BruceInCola", LocalDate.of(2014, 12, 26), "The first edition of this book helped me learn Minecraft well enough to keep up with my grandson for a little while, at least. He moved through his Minecraft phase and on to online First Person Shooters all too fast. So now Minecraft in Creative mode is where I spend my time and that, incidentally is my only criticism of this otherwi excellent guide: it is focused primarily on Surviva mode, which I don’t find to be fun. But kids love the kill-r aspect of Survival mode and kids are who this book is written for Fortunately nearly all the information i s applicable t all Minecraft modes. (By the way, you can set the mayhem to low in Survival mode, but I just don’t care for the competitive aspect. I’d rather spend all my time creating new worl"));
        reviewItems.add(new ReviewItem("Good book for beginners, but daily or even weekly players look elsewhere", "BruceInCola", LocalDate.of(2014, 12, 26), "The first edition of this book helped me learn Minecraft well enough to keep up with my grandson for a little while, at least. He moved through his Minecraft phase and on to online First Person Shooters all too fast. So now Minecraft in Creative mode is where I spend my time and that, incidentally is my only criticism of this otherwi excellent guide: it is focused primarily on Surviva mode, which I don’t find to be fun. But kids love the kill-r aspect of Survival mode and kids are who this book is written for Fortunately nearly all the information i s applicable t all Minecraft modes. (By the way, you can set the mayhem to low in Survival mode, but I just don’t care for the competitive aspect. I’d rather spend all my time creating new worl"));
        model.addAttribute("reviewItems", reviewItems);
        // <<<

        model.addAttribute("ratingsTitle", "Рейтинг книги");
        return "vb/ebook";
    }

}