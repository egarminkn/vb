package org.verygroup.verybook.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.time.LocalDate;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

import org.verygroup.verybook.AudiobookFormat;
import org.verygroup.verybook.BookFormat;
import org.verygroup.verybook.BookGenre;
import org.verygroup.verybook.dto.BookItem;
import org.verygroup.verybook.dto.RatingItem;
import org.verygroup.verybook.dto.authorpa.WrittenBookAction;
import org.verygroup.verybook.dto.authorpa.WrittenBookActionType;
import org.verygroup.verybook.dto.authorpa.WrittenBookRow;
import org.verygroup.verybook.dto.authorpa.ReadBookRow;
import org.verygroup.verybook.dto.authorrating.AuthorItem;
import org.verygroup.verybook.dto.book.ReviewItem;
import org.verygroup.verybook.dto.index.AuthorSummaryItem;
import org.verygroup.verybook.dto.index2.HelpSlideItem;
import org.verygroup.verybook.dto.index2.QuoteItem;
import org.verygroup.verybook.dto.searchbook.*;
import org.verygroup.verybook.dto.shopcart.ShopCartRow;

import ru.javawebinar.topjava.util.exception.NotFoundException;

@Controller
public class VerybookRootController {

    @GetMapping("/author")
    public String author(Model model) {
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

        return "vb/author";
    }

    @GetMapping("/author-pa")
    public String authorPa(Model model) {
        List<RatingItem> ratingItems = new LinkedList<>();
        ratingItems.add(new RatingItem(true, 19, "в общем рейтинге"));
        ratingItems.add(new RatingItem(false, 1, "среди Literary"));
        ratingItems.add(new RatingItem(true, 4, "среди Genre Fiction"));
        model.addAttribute("ratingsItems", ratingItems);
        model.addAttribute("ratingsTitle", "Рейтинг автора");

        List<WrittenBookRow> writtenBookRows = new LinkedList<>();
        writtenBookRows.add(new WrittenBookRow("", "resources/vb/img/tmp/book-1.jpg", "Летящие в облаках", "published", 1152, 152, 793, 111, "51", "руб", "501", "руб", new WrittenBookAction(WrittenBookActionType.WITHDRAW, "Снять с публикации")));
        writtenBookRows.add(new WrittenBookRow("Запрос на публикацию был отклонен из-за массового насилия в тексте вашей рукописи.", "resources/vb/img/tmp/book-2.jpg", "С широко открытыми глазами", "rejected", 12, 0, 11, 3, "501", "руб", "0", "руб", new WrittenBookAction(WrittenBookActionType.PUBLISH, "Отправить на модерацию повторно")));
        writtenBookRows.add(new WrittenBookRow("", "resources/vb/img/tmp/book-3.jpg", "Далеко за горизонтом", "on-moderation", 86, 0, 53, 0, "5111", "руб", "150", "руб", new WrittenBookAction(WrittenBookActionType.WITHDRAW, "Отозвать")));
        writtenBookRows.add(new WrittenBookRow("", "resources/vb/img/tmp/book-4.jpg", "Как отравили Сталина", "not-published", 86, 0, 77, 111, "51", "руб", "0", "руб", new WrittenBookAction(WrittenBookActionType.PUBLISH, "Отправить на модерацию")));
        writtenBookRows.add(new WrittenBookRow("", "resources/vb/img/tmp/book-1.jpg", "Летящие в облаках", "published", 1152, 152, 793, 111, "48", "руб", "517", "руб", new WrittenBookAction(WrittenBookActionType.WITHDRAW, "Снять с публикации")));
        writtenBookRows.add(new WrittenBookRow("Запрос на публикацию был отклонен из-за порнографии в вашей рукописи.", "resources/vb/img/tmp/book-2.jpg", "С широко открытыми глазами", "rejected", 12, 0, 11, 3, "51", "руб", "0", "руб", new WrittenBookAction(WrittenBookActionType.PUBLISH, "Отправить на модерацию повторно")));
        writtenBookRows.add(new WrittenBookRow("", "resources/vb/img/tmp/book-3.jpg", "Далеко за горизонтом", "on-moderation", 86, 0, 53, 0, "158", "руб", "150", "руб", new WrittenBookAction(WrittenBookActionType.WITHDRAW, "Отозвать")));
        writtenBookRows.add(new WrittenBookRow("", "resources/vb/img/tmp/book-4.jpg", "Как отравили Сталина", "not-published", 86, 0, 77, 111, "51", "руб", "0", "руб", new WrittenBookAction(WrittenBookActionType.PUBLISH, "Отправить на модерацию")));
        writtenBookRows.add(new WrittenBookRow("", "resources/vb/img/tmp/book-1.jpg", "Летящие в облаках", "published", 1152, 152, 793, 111, "121", "руб", "517", "руб", new WrittenBookAction(WrittenBookActionType.WITHDRAW, "Снять с публикации")));
        writtenBookRows.add(new WrittenBookRow("Запрос на публикацию был отклонен из-за обильной любви ко всему человечеству в тексте вашей книги.", "resources/vb/img/tmp/book-2.jpg", "С широко открытыми глазами", "rejected", 12, 0, 11, 3, "51", "руб", "0", "руб", new WrittenBookAction(WrittenBookActionType.PUBLISH, "Отправить на модерацию повторно")));
        writtenBookRows.add(new WrittenBookRow("", "resources/vb/img/tmp/book-3.jpg", "Далеко за горизонтом", "on-moderation", 86, 0, 53, 0, "175", "руб", "150", "руб", new WrittenBookAction(WrittenBookActionType.WITHDRAW, "Отозвать")));
        writtenBookRows.add(new WrittenBookRow("", "resources/vb/img/tmp/book-4.jpg", "Как отравили Сталина", "not-published", 86, 0, 77, 111, "1151", "руб", "0", "руб", new WrittenBookAction(WrittenBookActionType.PUBLISH, "Отправить на модерацию")));
        model.addAttribute("writtenBookRows", writtenBookRows);

        List<ReadBookRow> readBookRows = new LinkedList<>();
        readBookRows.add(new ReadBookRow("resources/vb/img/tmp/book-1.jpg", "Полет над гнездом кукушки", "Александр Иванов", LocalDate.of(2015, 9, 12), 1022, 51, "5140", "руб", BookFormat.EPUB, BookFormat.PDF, BookFormat.EPUB, BookFormat.PDF, BookFormat.EPUB, BookFormat.PDF));
        readBookRows.add(new ReadBookRow("resources/vb/img/tmp/book-2.jpg", "Как отравили Сталина", "Александр Константинопольский", LocalDate.of(2015, 6, 26), 1022, 51, "651", "руб", BookFormat.EPUB, BookFormat.PDF, BookFormat.EPUB, BookFormat.PDF, BookFormat.EPUB, BookFormat.PDF));
        readBookRows.add(new ReadBookRow("resources/vb/img/tmp/book-3.jpg", "Полет над гнездом кукушки", "Александр Иванов", LocalDate.of(2014, 11, 16), 1022, 51, "501", "руб", BookFormat.EPUB, BookFormat.EPUB, BookFormat.EPUB));
        readBookRows.add(new ReadBookRow("resources/vb/img/tmp/book-4.jpg", "С широко открытыми глазами", "Александр Иванов", LocalDate.of(2013, 9, 6), 1022, 51, "5551", "руб", BookFormat.EPUB, BookFormat.PDF, BookFormat.EPUB, BookFormat.PDF, BookFormat.EPUB, BookFormat.PDF));
        readBookRows.add(new ReadBookRow("resources/vb/img/tmp/book-5.jpg", "Полет над гнездом кукушки", "Владимир Рудольфович", LocalDate.of(2015, 3, 11), 1022, 51, "5", "руб", BookFormat.EPUB, BookFormat.PDF, BookFormat.EPUB, BookFormat.PDF, BookFormat.EPUB, BookFormat.PDF));
        readBookRows.add(new ReadBookRow("resources/vb/img/tmp/book-1.jpg", "Как отравили Сталина", "Александр Константинопольский", LocalDate.of(2016, 10, 7), 1022, 51, "501", "руб", BookFormat.PDF));
        readBookRows.add(new ReadBookRow("resources/vb/img/tmp/book-2.jpg", "Далеко за горизонтом", "Владимир Рудольфович", LocalDate.of(2010, 1, 1), 1022, 51, "515", "руб", BookFormat.EPUB, BookFormat.PDF, BookFormat.EPUB, BookFormat.PDF, BookFormat.EPUB, BookFormat.PDF));
        readBookRows.add(new ReadBookRow("resources/vb/img/tmp/book-3.jpg", "С широко открытыми глазами", "Александр Иванов", LocalDate.of(2012, 2, 14), 1022, 51, "151", "руб", BookFormat.EPUB, BookFormat.PDF, BookFormat.EPUB, BookFormat.PDF, BookFormat.EPUB, BookFormat.PDF));
        readBookRows.add(new ReadBookRow("resources/vb/img/tmp/book-4.jpg", "Полет над гнездом кукушки", "Александр Константинопольский", LocalDate.of(2009, 5, 6), 1022, 51, "2251", "руб", BookFormat.EPUB, BookFormat.PDF, BookFormat.EPUB, BookFormat.PDF, BookFormat.EPUB, BookFormat.PDF));
        readBookRows.add(new ReadBookRow("resources/vb/img/tmp/book-5.jpg", "Летящие в облаках", "Владимир Рудольфович", LocalDate.of(2015, 9, 26), 1022, 51, "511", "руб", BookFormat.EPUB));
        model.addAttribute("readBookRows", readBookRows);

        return "vb/author-pa";
    }

    @GetMapping("/author-rating")
    public String authorRating(Model model) {
        List<AuthorItem> authorItems = new LinkedList<>();
        authorItems.add(new AuthorItem("resources/vb/img/tmp/photo-1.jpg", "Александр Константинопольский", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 18, 5, BookGenre.MILITARY, BookGenre.DETECTIVE, BookGenre.ADVENTURES));
        authorItems.add(new AuthorItem("resources/vb/img/tmp/photo-1.jpg", "Александр Константинопольский", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 18, 5, BookGenre.MILITARY, BookGenre.DETECTIVE, BookGenre.ADVENTURES));
        authorItems.add(new AuthorItem("resources/vb/img/tmp/photo-1.jpg", "Александр Константинопольский", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 18, 5, BookGenre.MILITARY, BookGenre.DETECTIVE, BookGenre.ADVENTURES));
        model.addAttribute("authorItems", authorItems);
        return "vb/author-rating";
    }

    @GetMapping("/book")
    public String book(Model model) {
        List<RatingItem> ratingItems = new LinkedList<>();
        ratingItems.add(new RatingItem(true, 19, "в общем рейтинге"));
        ratingItems.add(new RatingItem(false, 1, "среди Общественные и гуманитарные науки"));
        ratingItems.add(new RatingItem(true, 4, "среди Деловая литература, право, психология"));
        model.addAttribute("ratingsItems", ratingItems);
        model.addAttribute("ratingsTitle", "Рейтинг книги");

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

        return "vb/book";
    }

    @GetMapping("/create-ebook")
    public String createEbook() {
        return "vb/create-ebook";
    }

    @GetMapping("/feedback")
    public String feedback() {
        return "vb/feedback";
    }

    @GetMapping("/index")
    public String index(Model model) {
        List<BookItem> bestSellersBookItems = new LinkedList<>();
        bestSellersBookItems.add(new BookItem(12000,12000, "20", "руб", LocalDate.of(2016, 1, 26), 40, "А.А. Иванов", "Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие", "resources/vb/img/tmp/book-1.jpg", false));
        bestSellersBookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 1, "А.А. Иванов", "Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие", "resources/vb/img/tmp/book-2.jpg", false));
        bestSellersBookItems.add(new BookItem(1022,51, "Бесплатно", "", LocalDate.of(2016, 1, 26), 4, "А.А. Иванов", "Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие", "resources/vb/img/tmp/book-3.jpg", false));
        bestSellersBookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 9, "А.А. Иванов", "Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие", "resources/vb/img/tmp/book-4.jpg", false));
        bestSellersBookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 110999, "Константин Галактионович Константинопольский", "Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие", "resources/vb/img/tmp/book-5.jpg", false));
        bestSellersBookItems.add(new BookItem(1022,51, "Бесплатно", "", LocalDate.of(2016, 1, 26), 3, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-3.jpg", false));
        bestSellersBookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 40, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-1.jpg", false));
        bestSellersBookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 1, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-2.jpg", false));
        bestSellersBookItems.add(new BookItem(1022,51, "Бесплатно", "", LocalDate.of(2016, 1, 26), 4, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-3.jpg", false));
        bestSellersBookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 9, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-4.jpg", false));
        bestSellersBookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 21, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-5.jpg", false));
        bestSellersBookItems.add(new BookItem(1022,51, "Бесплатно", "", LocalDate.of(2016, 1, 26), 3, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-3.jpg", false));
        bestSellersBookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 1, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-2.jpg", false));
        bestSellersBookItems.add(new BookItem(1022,51, "Бесплатно", "", LocalDate.of(2016, 1, 26), 4, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-3.jpg", false));
        bestSellersBookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 9, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-4.jpg", false));
        model.addAttribute("bestSellersBookItems", bestSellersBookItems);

        List<BookItem> newBooksBookItems = new LinkedList<>();
        newBooksBookItems.add(new BookItem(12000,12000, "20", "руб", LocalDate.of(2016, 1, 26), 40, "А.А. Иванов", "Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие", "resources/vb/img/tmp/book-1.jpg", false));
        newBooksBookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 1, "А.А. Иванов", "Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие", "resources/vb/img/tmp/book-2.jpg", false));
        newBooksBookItems.add(new BookItem(1022,51, "Бесплатно", "", LocalDate.of(2016, 1, 26), 4, "А.А. Иванов", "Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие", "resources/vb/img/tmp/book-3.jpg", false));
        newBooksBookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 9, "А.А. Иванов", "Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие", "resources/vb/img/tmp/book-4.jpg", false));
        newBooksBookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 110999, "Константин Галактионович Константинопольский", "Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие", "resources/vb/img/tmp/book-5.jpg", false));
        newBooksBookItems.add(new BookItem(1022,51, "Бесплатно", "", LocalDate.of(2016, 1, 26), 3, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-3.jpg", false));
        newBooksBookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 40, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-1.jpg", false));
        newBooksBookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 1, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-2.jpg", false));
        newBooksBookItems.add(new BookItem(1022,51, "Бесплатно", "", LocalDate.of(2016, 1, 26), 4, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-3.jpg", false));
        newBooksBookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 9, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-4.jpg", false));
        newBooksBookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 21, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-5.jpg", false));
        newBooksBookItems.add(new BookItem(1022,51, "Бесплатно", "", LocalDate.of(2016, 1, 26), 3, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-3.jpg", false));
        newBooksBookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 1, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-2.jpg", false));
        newBooksBookItems.add(new BookItem(1022,51, "Бесплатно", "", LocalDate.of(2016, 1, 26), 4, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-3.jpg", false));
        newBooksBookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 9, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-4.jpg", false));
        model.addAttribute("newBooksBookItems", newBooksBookItems);

        List<BookItem> highestRatingBookItems = new LinkedList<>();
        highestRatingBookItems.add(new BookItem(12000,12000, "20", "руб", LocalDate.of(2016, 1, 26), 40, "А.А. Иванов", "Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие", "resources/vb/img/tmp/book-1.jpg", false));
        highestRatingBookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 1, "А.А. Иванов", "Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие", "resources/vb/img/tmp/book-2.jpg", false));
        highestRatingBookItems.add(new BookItem(1022,51, "Бесплатно", "", LocalDate.of(2016, 1, 26), 4, "А.А. Иванов", "Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие", "resources/vb/img/tmp/book-3.jpg", false));
        highestRatingBookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 9, "А.А. Иванов", "Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие", "resources/vb/img/tmp/book-4.jpg", false));
        highestRatingBookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 110999, "Константин Галактионович Константинопольский", "Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие", "resources/vb/img/tmp/book-5.jpg", false));
        highestRatingBookItems.add(new BookItem(1022,51, "Бесплатно", "", LocalDate.of(2016, 1, 26), 3, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-3.jpg", false));
        highestRatingBookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 40, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-1.jpg", false));
        highestRatingBookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 1, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-2.jpg", false));
        highestRatingBookItems.add(new BookItem(1022,51, "Бесплатно", "", LocalDate.of(2016, 1, 26), 4, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-3.jpg", false));
        highestRatingBookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 9, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-4.jpg", false));
        highestRatingBookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 21, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-5.jpg", false));
        highestRatingBookItems.add(new BookItem(1022,51, "Бесплатно", "", LocalDate.of(2016, 1, 26), 3, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-3.jpg", false));
        highestRatingBookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 1, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-2.jpg", false));
        highestRatingBookItems.add(new BookItem(1022,51, "Бесплатно", "", LocalDate.of(2016, 1, 26), 4, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-3.jpg", false));
        highestRatingBookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 9, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-4.jpg", false));
        model.addAttribute("highestRatingBookItems", highestRatingBookItems);

        List<String> slideUrls = new LinkedList<>();
        slideUrls.add("resources/vb/img/index/main-banner-1.jpg");
        slideUrls.add("resources/vb/img/index/main-banner-2.jpg");
        slideUrls.add("resources/vb/img/index/main-banner-3.jpg");
        slideUrls.add("resources/vb/img/index/main-banner-4.jpg");
        model.addAttribute("slideUrls", slideUrls);

        List<AuthorSummaryItem> authorSummaries = new LinkedList<>();
        authorSummaries.add(new AuthorSummaryItem("Константин Константинопольский", 5, "resources/vb/img/tmp/photo-1.jpg", 1022, 51));
        authorSummaries.add(new AuthorSummaryItem("Иван Бездомный", 8, "resources/vb/img/tmp/photo-2.jpg", 1022, 51));
        authorSummaries.add(new AuthorSummaryItem("Константин Константинопольский", 8, "resources/vb/img/tmp/photo-3.jpg", 1022, 51));
        authorSummaries.add(new AuthorSummaryItem("Александр Неизвестный", 8, "resources/vb/img/tmp/photo-4.jpg", 1022, 51));
        authorSummaries.add(new AuthorSummaryItem("Adam Moran Thompson", 8, "resources/vb/img/tmp/photo-5.jpg", 1022, 51));
        authorSummaries.add(new AuthorSummaryItem("Сунь Муй Ван", 8, "resources/vb/img/tmp/photo-6.jpg", 1022, 51));
        model.addAttribute("authorSummaries", authorSummaries);

        return "vb/index";
    }

    @GetMapping("/index-2")
    public String index2(Model model) {
        List<QuoteItem> quoteItems = new LinkedList<>();
        quoteItems.add(new QuoteItem("Harry Potter 1 has never even heard of Hogwarts when the letters  start dropping on the doormat at number four, Privet  Drive. Addressed in green ink on yellowish parchment with a purple seal, they are swiftly confiscated by his grisly", "Joan Rolling"));
        quoteItems.add(new QuoteItem("Harry Potter 2 has never even heard of Hogwarts when the letters  start dropping on the doormat at number four, Privet  Drive. Addressed in green ink on yellowish parchment with a purple seal, they are swiftly confiscated by his grisly", "David Icke"));
        quoteItems.add(new QuoteItem("Harry Potter 3 has never even heard of Hogwarts when the letters  start dropping on the doormat at number four, Privet  Drive. Addressed in green ink on yellowish parchment with a purple seal, they are swiftly confiscated by his grisly", "Vladimir Pukin"));
        model.addAttribute("quoteItems", quoteItems);

        List<HelpSlideItem> helpSlideItems = new LinkedList<>();
        helpSlideItems.add(new HelpSlideItem(new String[] {"Как отформатировать книгу", "Сколько стоит моя книга?", "На какой бумаге печатать книгу и обложку?", "Переплет и количество страниц", "Твердый переплет", "Как определить цену?"},
                                             new String[] {"Заголовки", "Досуг и творчество", "Книги для родителей", "Познавательная литература", "Художественная литература"},
                                             new String[] {"Форматирование электронных книг", "Досуг и творчество", "Книги для родителей", "Познавательная литература", "Художественная литература"},
                                             new String[] {"Процесс публикации", "Досуг и творчество", "Книги для родителей", "Познавательная литература", "Художественная литература"},
                                             new String[] {"Текст, страницы, шрифт", "Дошкольникам", "Школьникам и абитуриентам", "Студентам и аспирантам", "Педагогам"}));
        helpSlideItems.add(new HelpSlideItem(new String[] {"Как отформатировать книгу", "Сколько стоит моя книга?", "На какой бумаге печатать книгу и обложку?", "Переплет и количество страниц", "Твердый переплет", "Как определить цену?"},
                                             new String[] {"Заголовки", "Досуг и творчество", "Книги для родителей", "Познавательная литература", "Художественная литература"},
                                             new String[] {"Форматирование электронных книг", "Досуг и творчество", "Книги для родителей", "Познавательная литература", "Художественная литература"},
                                             new String[] {"Процесс публикации", "Досуг и творчество", "Книги для родителей", "Познавательная литература", "Художественная литература"},
                                             new String[] {"Текст, страницы, шрифт", "Дошкольникам", "Школьникам и абитуриентам", "Студентам и аспирантам", "Педагогам"}));
        helpSlideItems.add(new HelpSlideItem(new String[] {"Как отформатировать книгу", "Сколько стоит моя книга?", "На какой бумаге печатать книгу и обложку?", "Переплет и количество страниц", "Твердый переплет", "Как определить цену?"},
                                             new String[] {"Заголовки", "Досуг и творчество", "Книги для родителей", "Познавательная литература", "Художественная литература"},
                                             new String[] {"Форматирование электронных книг", "Досуг и творчество", "Книги для родителей", "Познавательная литература", "Художественная литература"},
                                             new String[] {"Процесс публикации", "Досуг и творчество", "Книги для родителей", "Познавательная литература", "Художественная литература"},
                                             new String[] {"Текст, страницы, шрифт", "Дошкольникам", "Школьникам и абитуриентам", "Студентам и аспирантам", "Педагогам"}));
        model.addAttribute("helpSlideItems", helpSlideItems);

        return "vb/index-2";
    }

    @GetMapping("/search-book")
    public String searchBook(Model model) {
        List<EbookItem> ebookItems = new LinkedList<>();
        ebookItems.add(new EbookItem("resources/vb/img/tmp/book-1.jpg", "The ultimate players guide to minecraft", "Владимир Иванов", "\"Инноваторы\" - история о разных этапах цифровой революции и людях, без которых не было бы ни компьютеров, ни интернета: от Ады Лавлейс, дочери лорда Байрона, первой нащупавшей принципы компьютерного программирования, до Билла Гейтса, Алана Тьюринга, Стива Джобса, Стива Возняка, Ларри Пейджа. Это книга о том, что такое инновации и как сотрудничество увеличивает творческий потенциал.", LocalDate.of(2015, 9, 26), 15, BookFormat.EPUB, BookFormat.PDF, BookFormat.EPUB));
        ebookItems.add(new EbookItem("resources/vb/img/tmp/book-2.jpg", "The ultimate players guide to minecraft", "Владимир Иванов", "\"Инноваторы\" - история о разных этапах цифровой революции и людях, без которых не было бы ни компьютеров, ни интернета: от Ады Лавлейс, дочери лорда Байрона, первой нащупавшей принципы компьютерного программирования, до Билла Гейтса, Алана Тьюринга, Стива Джобса, Стива Возняка, Ларри Пейджа. Это книга о том, что такое инновации и как сотрудничество увеличивает творческий потенциал.", LocalDate.of(2015, 9, 26), 15, BookFormat.EPUB, BookFormat.PDF, BookFormat.PDF, BookFormat.EPUB));
        ebookItems.add(new EbookItem("resources/vb/img/tmp/book-3.jpg", "The ultimate players guide to minecraft", "Владимир Иванов", "\"Инноваторы\" - история о разных этапах цифровой революции и людях, без которых не было бы ни компьютеров, ни интернета: от Ады Лавлейс, дочери лорда Байрона, первой нащупавшей принципы компьютерного программирования, до Билла Гейтса, Алана Тьюринга, Стива Джобса, Стива Возняка, Ларри Пейджа. Это книга о том, что такое инновации и как сотрудничество увеличивает творческий потенциал.", LocalDate.of(2015, 9, 26), 15, BookFormat.EPUB, BookFormat.PDF, BookFormat.EPUB));
        ebookItems.add(new EbookItem("resources/vb/img/tmp/book-4.jpg", "The ultimate players guide to minecraft", "Владимир Иванов", "\"Инноваторы\" - история о разных этапах цифровой революции и людях, без которых не было бы ни компьютеров, ни интернета: от Ады Лавлейс, дочери лорда Байрона, первой нащупавшей принципы компьютерного программирования, до Билла Гейтса, Алана Тьюринга, Стива Джобса, Стива Возняка, Ларри Пейджа. Это книга о том, что такое инновации и как сотрудничество увеличивает творческий потенциал.", LocalDate.of(2015, 9, 26), 15, BookFormat.EPUB));
        ebookItems.add(new EbookItem("resources/vb/img/tmp/book-5.jpg", "The ultimate players guide to minecraft", "Владимир Иванов", "\"Инноваторы\" - история о разных этапах цифровой революции и людях, без которых не было бы ни компьютеров, ни интернета: от Ады Лавлейс, дочери лорда Байрона, первой нащупавшей принципы компьютерного программирования, до Билла Гейтса, Алана Тьюринга, Стива Джобса, Стива Возняка, Ларри Пейджа. Это книга о том, что такое инновации и как сотрудничество увеличивает творческий потенциал.", LocalDate.of(2015, 9, 26), 15, BookFormat.PDF, BookFormat.PDF));
        ebookItems.add(new EbookItem("resources/vb/img/tmp/book-1.jpg", "The ultimate players guide to minecraft", "Владимир Иванов", "\"Инноваторы\" - история о разных этапах цифровой революции и людях, без которых не было бы ни компьютеров, ни интернета: от Ады Лавлейс, дочери лорда Байрона, первой нащупавшей принципы компьютерного программирования, до Билла Гейтса, Алана Тьюринга, Стива Джобса, Стива Возняка, Ларри Пейджа. Это книга о том, что такое инновации и как сотрудничество увеличивает творческий потенциал.", LocalDate.of(2015, 9, 26), 15, BookFormat.EPUB, BookFormat.PDF, BookFormat.EPUB));
        model.addAttribute("ebookItems", ebookItems);

        List<AudiobookItem> audiobookItems = new LinkedList<>();
        audiobookItems.add(new AudiobookItem("resources/vb/img/tmp/audiobook-1.jpg",
                                             "Harry Potter and the Sorcerer's Stone, Book 1",
                                             "Harry Potter has never even heard of Hogwarts when the letters start dropping on the doormat at number four, Privet Drive. Addressed in green ink on yellowish parchment with a purple seal, they are swiftly confiscated by his grisly aunt and uncle. Then, on Harry's eleventh birthday, a great beetle-eyed giant of a man called Rubeus Hagrid bursts in with some astonishing news: Harry Potter",
                                             LocalDate.of(2015, 9, 26),
                                             15,
                                             Arrays.asList(new AudiobookAuthor("J. K. Rowling", AudiobookAuthorType.AUTHOR), new AudiobookAuthor("Roger Allam", AudiobookAuthorType.STORY_TELLER), new AudiobookAuthor("Emilia Fox", AudiobookAuthorType.STORY_TELLER)),
                                             Collections.singletonList(AudiobookFormat.MP3)));
        audiobookItems.add(new AudiobookItem("resources/vb/img/tmp/audiobook-1.jpg",
                                             "Harry Potter and the Sorcerer's Stone, Book 1",
                                             "Harry Potter has never even heard of Hogwarts when the letters start dropping on the doormat at number four, Privet Drive. Addressed in green ink on yellowish parchment with a purple seal, they are swiftly confiscated by his grisly aunt and uncle. Then, on Harry's eleventh birthday, a great beetle-eyed giant of a man called Rubeus Hagrid bursts in with some astonishing news: Harry Potter",
                                             LocalDate.of(2015, 9, 26),
                                             15,
                                             Arrays.asList(new AudiobookAuthor("J. K. Rowling", AudiobookAuthorType.AUTHOR), new AudiobookAuthor("Roger Allam", AudiobookAuthorType.STORY_TELLER), new AudiobookAuthor("Emilia Fox", AudiobookAuthorType.STORY_TELLER)),
                                             Collections.singletonList(AudiobookFormat.WAV)));
        audiobookItems.add(new AudiobookItem("resources/vb/img/tmp/audiobook-1.jpg",
                                             "Harry Potter and the Sorcerer's Stone, Book 1",
                                             "Harry Potter has never even heard of Hogwarts when the letters start dropping on the doormat at number four, Privet Drive. Addressed in green ink on yellowish parchment with a purple seal, they are swiftly confiscated by his grisly aunt and uncle. Then, on Harry's eleventh birthday, a great beetle-eyed giant of a man called Rubeus Hagrid bursts in with some astonishing news: Harry Potter",
                                             LocalDate.of(2015, 9, 26),
                                             15,
                                             Arrays.asList(new AudiobookAuthor("J. K. Rowling", AudiobookAuthorType.AUTHOR), new AudiobookAuthor("Roger Allam", AudiobookAuthorType.STORY_TELLER), new AudiobookAuthor("J. K. Rowling", AudiobookAuthorType.AUTHOR), new AudiobookAuthor("Roger Allam", AudiobookAuthorType.STORY_TELLER), new AudiobookAuthor("Emilia Fox", AudiobookAuthorType.STORY_TELLER)),
                                             Arrays.asList(AudiobookFormat.MP3, AudiobookFormat.WAV, AudiobookFormat.WAV, AudiobookFormat.MP3)));
        model.addAttribute("audiobookItems", audiobookItems);

        List<AuthorBlockItem> authorItems = new LinkedList<>();
        authorItems.add(new AuthorBlockItem("resources/vb/img/tmp/photo-1.jpg", "Александр Константинопольский", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 18, 5, BookGenre.MILITARY, BookGenre.DETECTIVE, BookGenre.ADVENTURES));
        authorItems.add(new AuthorBlockItem("resources/vb/img/tmp/photo-1.jpg", "Александр Константинопольский", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 18, 5, BookGenre.MILITARY, BookGenre.DETECTIVE, BookGenre.ADVENTURES, BookGenre.MILITARY, BookGenre.DETECTIVE, BookGenre.ADVENTURES));
        authorItems.add(new AuthorBlockItem("resources/vb/img/tmp/photo-1.jpg", "Александр Константинопольский", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 18, 5, BookGenre.MILITARY, BookGenre.DETECTIVE, BookGenre.ADVENTURES));
        model.addAttribute("authorItems", authorItems);

        return "vb/search-book";
    }

    @GetMapping("/shop-cart")
    public String shopCart(Model model) {
        List<ShopCartRow> mainShopCartRows = new LinkedList<>();
        mainShopCartRows.add(new ShopCartRow("resources/vb/img/tmp/book-1.jpg", "Полет над гнездом кукушки", "Александр Константинопольский", "415", "руб"));
        mainShopCartRows.add(new ShopCartRow("resources/vb/img/tmp/book-2.jpg", "Как рожать на вершине скалы", "Мария Малиновская", "0", "руб"));
        mainShopCartRows.add(new ShopCartRow("resources/vb/img/tmp/book-3.jpg", "Кто подставил кролика роджера?", "Владимир Вольфович Константинопольский", "230", "руб"));
        model.addAttribute("mainShopCartRows", mainShopCartRows);

        List<ShopCartRow> spareShopCartRows = new LinkedList<>();
        spareShopCartRows.add(new ShopCartRow("resources/vb/img/tmp/book-1.jpg", "Полет над гнездом кукушки", "Александр Константинопольский", "415", "руб"));
        spareShopCartRows.add(new ShopCartRow("resources/vb/img/tmp/book-2.jpg", "Как рожать на вершине скалы", "Мария Малиновская", "0", "руб"));
        spareShopCartRows.add(new ShopCartRow("resources/vb/img/tmp/book-3.jpg", "Кто подставил кролика роджера?", "Владимир Вольфович Константинопольский", "230", "руб"));
        model.addAttribute("spareShopCartRows", spareShopCartRows);

        return "vb/shop-cart";
    }

    @GetMapping("/info/{pageName}")
    public String info(@PathVariable String pageName, Model model) {
        String infoHeader = null;
        String infoBody = null;

        // Пока таких информационных страниц - 13 шт.
        // FIXME Получать из БД по pageName
        switch (pageName) {
            case "about":
                infoHeader = "О нас и наших возможностях";
                infoBody =
                        "<h2>Простой способ попасть на книжные витрины мира</h2>\n" +
                        "<p>\n" +
                        "   Verybook помогает авторам опубликовать свою книгу в онлайн-библиотеках и книжных интернет-магазинах.\n" +
                        "   Всё просто: вы публикуете свою книгу через нас, мы проверяем её, конвертируем в нужный формат, и передаём на площадки партнёров-агентов.\n" +
                        "</p>\n" +
                        "\n" +
                        "<h2>Почему мы решили создать Verybook?</h2>\n" +
                        "<p>\n" +
                        "   Сейчас для публикации книги винтернете десятки возможностей. В простом случае вам придётся\n" +
                        "   договориться с издательством и за скромный гонорар вы отдадите права на свою книгу,\n" +
                        "   а издательство решает за вас все вопросы — от корректуры до распространения.\n" +
                        "   Для этого нужно убедить редакторов в том, что ваше творчество имеет шансы на успех.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   В сложном случае вы сами вручную верстаете книгу, вычитываете, отдаёте редакторам — по знакомству\n" +
                        "   или на фрилансе, потом договариваетесь с магазинами, заключаете договоры с каждым, создаёте\n" +
                        "   промо-сайт, решаете вопросы с приёмом денег, налогами. Это полезно: по дороге вы изучаете электронное\n" +
                        "   книгоиздание и бизнес автора и издателя вдоль и поперёк, но рано или поздно замечаете,\n" +
                        "   что времени на писательскую работу больше не остаётся. Если же технические вопросы вам\n" +
                        "   оказались не по зубам, нужных знакомых не нашлось, и общий язык с издательствами вы не нашли,\n" +
                        "   то рукопись, а может уже и готовая книга — с обложкой и иллюстрациями —\n" +
                        "   ложится на полку и годами ждёт своего часа.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Verybook становится вашим посредником — мы возьмём\n" +
                        "   на себя вопросы по работе с самыми разными магазинами и библиотеками, в которые вы сможете отправить свою книгу.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Аудитория наших партнёров составляет несколько миллионов читателей, поэтому публикация в Verybook может стать для вас важным шагом к читателям.\n" +
                        "   Мы хотим, чтобы вы могли легко оценить интерес аудитории, испробовать технологию, а возможно и привлечь интерес издательств и их\n" +
                        "   редакторов-скаутов, ищущих новых звёзд.\n" +
                        "</p>\n" +
                        "\n" +
                        "<h2>Разве книги ещё живы?</h2>\n" +
                        "<p>\n" +
                        "   Каждый год электронный книжный рынок России растёт на 100%. Это очень много, и это десятки\n" +
                        "   миллионов читателей. Твиттер, Инстаграм, Фейсбук или ВКонтакте прекрасно их развлекают, но за возможностью\n" +
                        "   погрузиться в длинные тексты люди идут в авторские блоги. Здесь читатели сталкиваются с тем,\n" +
                        "   что все ваши архивы без аккуратной организации труднодоступны — сложно понять, что читать, как, в каком порядке.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Поэтому книга как формат безусловно удобнее — будь это серия заметок о рукоделии, цельный и яркий\n" +
                        "   роман, набор рассказов, графический роман или комикс. Вы можете выбрать любой жанр — и он наверняка\n" +
                        "   уже существует и успешно живёт в книжном формате.\n" +
                        "</p>\n" +
                        "\n" +
                        "<h2>Кого мы ждём и видим в числе своих авторов?</h2>\n" +
                        "<p>\n" +
                        "   Вам наверняка будет полезен Verybook, если вы хотите стать не просто писателем-любителем или блогером\n" +
                        "   со своей аудиторией, а перейти на более интересный уровень — уложив истории в книги, или вывести уже\n" +
                        "   готовое произведение к массовому читателю.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Если вы уже издавались, то Verybook может дать вам более гибкие возможности для публикации через\n" +
                        "   разные каналы и на разных условиях. Если вы только начинаете — мы постараемся дать вам простой\n" +
                        "   инструмент для работы, чтобы книги было интересно не только писать, но и публиковать,\n" +
                        "   и, конечно же, продавать.\n" +
                        "</p>\n";
                break;
            case "partners":
                infoHeader = "Наши партнеры";
                infoBody =
                        "<h2>Verybook поможет вам попасть на полки этих сервисов и магазинов</h2>\n" +
                        "<ul>\n" +
                        "   <li class=\"partner\">\n" +
                        "       <a href=\"https://www.litres.ru\" title=\"ЛитРес\" target=\"_blank\">\n" +
                        "           <div class=\"partner-logo\">\n" +
                        "               <img src=\"https://www.litres.ru/static/litres/i/header/menu/logo.svg\" width=\"111\" height=\"39\">\n" +
                        "           </div>\n" +
                        "           <div class=\"partner-description\">\n" +
                        "               <p class=\"partner-name\">ЛитРес</p>\n" +
                        "               <p class=\"partner-link\">www.litres.ru</p>\n" +
                        "           </div>\n" +
                        "       </a>\n" +
                        "   </li>\n" +
                        "   <li class=\"partner\">\n" +
                        "       <a href=\"http://books.mvideo.ru/\" title=\"М.видео\" target=\"_blank\">\n" +
                        "           <div class=\"partner-logo\">\n" +
                        "               <img src=\"http://books.mvideo.ru/static/mvideo/i/mlogo.png\" width=\"182\" height=\"56\">\n" +
                        "           </div>\n" +
                        "           <div class=\"partner-description\">\n" +
                        "               <p class=\"partner-name\">М.видео</p>\n" +
                        "               <p class=\"partner-link\">books.mvideo.ru</p>\n" +
                        "           </div>\n" +
                        "       </a>\n" +
                        "   </li>\n" +
                        "   <li class=\"partner\">\n" +
                        "       <a href=\"http://books.mts.ru/\" title=\"МТС.Книги\" target=\"_blank\">\n" +
                        "           <div class=\"partner-logo\">\n" +
                        "               <img src=\"http://books.mts.ru/Content/MTS/img/logo.png\" width=\"140\" height=\"40\">\n" +
                        "           </div>\n" +
                        "           <div class=\"partner-description\">\n" +
                        "               <p class=\"partner-name\">МТС.Книги</p>\n" +
                        "               <p class=\"partner-link\">books.mts.ru</p>\n" +
                        "           </div>\n" +
                        "       </a>\n" +
                        "   </li>\n" +
                        "   <li class=\"partner\">\n" +
                        "       <a href=\"https://play.google.com/store/apps/details?id=ru.litres.android.flybook&amp;hl=ru\" title=\"Мобильное приложение Flybook\" target=\"_blank\">\n" +
                        "           <div class=\"partner-logo\">\n" +
                        "               <img src=\"https://lh6.ggpht.com/al1px-oC7qvC37yUdPuD533b-MHphe0fwEQ1hyCqnehyiLOEpXdUuCytRoNTzE4vKgw=w300-rw\" width=\"100\" height=\"100\">\n" +
                        "           </div>\n" +
                        "           <div class=\"partner-description\">\n" +
                        "               <p class=\"partner-name\">Мобильное приложение \"Flybook\"</p>\n" +
                        "               <p class=\"partner-link\">play.google.com/store/apps/details?id=ru.litres.android.flybook&amp;hl=ru</p>\n" +
                        "           </div>\n" +
                        "       </a>\n" +
                        "   </li>\n" +
                        "   <li class=\"partner\">\n" +
                        "       <a href=\"http://mybook.ru/\" title=\"Электронная библиотека MyBook\" target=\"_blank\">\n" +
                        "           <div class=\"partner-logo\">\n" +
                        "               <img src=\"https://mybook.ru/static/i/mybook-logo-plain.png\" width=\"175\" height=\"35\">\n" +
                        "           </div>\n" +
                        "           <div class=\"partner-description\">\n" +
                        "               <p class=\"partner-name\">Электронная библиотека MyBook</p>\n" +
                        "               <p class=\"partner-link\">mybook.ru</p>\n" +
                        "           </div>\n" +
                        "       </a>\n" +
                        "   </li>\n" +
                        "   <li class=\"partner\">\n" +
                        "       <a href=\"http://www.samsung.com/kz_ru/\" title=\"Книжный магазин на устройствах SAMSUNG\" target=\"_blank\">\n" +
                        "           <div class=\"partner-logo\">\n" +
                        "               <img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Samsung_wordmark.svg/300px-Samsung_wordmark.svg.png\" width=\"300\" height=\"48\">\n" +
                        "           </div>\n" +
                        "           <div class=\"partner-description\">\n" +
                        "               <p class=\"partner-name\">Книжный магазин на устройствах SAMSUNG</p>\n" +
                        "               <p class=\"partner-link\">www.samsung.com</p>\n" +
                        "           </div>\n" +
                        "       </a>\n" +
                        "   </li>\n" +
                        "   <li class=\"partner\">\n" +
                        "       <a href=\"https://www.overdrive.com\" title=\"Электронный магазин электронных книг и аудиокниг Overdrive\" target=\"_blank\">\n" +
                        "           <div class=\"partner-logo\">\n" +
                        "               <img src=\"data:image/svg+xml;charset=US-ASCII,<%3Fxml%20version%3D&quot;1.0&quot;%20encoding%3D&quot;utf-8&quot;%3F>%0D%0A<%21--%20Generator%3A%20Adobe%20Illustrator%2018.1.1%2C%20SVG%20Export%20Plug-In%20.%20SVG%20Version%3A%206.00%20Build%200%29%20%20-->%0D%0A<svg%20width%3D&quot;160&quot;%20height%3D&quot;50&quot;%20version%3D&quot;1.1&quot;%20id%3D&quot;Layer_1&quot;%20xmlns%3D&quot;http%3A//www.w3.org/2000/svg&quot;%20xmlns%3Axlink%3D&quot;http%3A//www.w3.org/1999/xlink&quot;%20x%3D&quot;0px&quot;%20y%3D&quot;0px&quot;%0D%0A%09%20viewBox%3D&quot;30.8%20-33.7%20160%2050&quot;%20enable-background%3D&quot;new%2030.8%20-33.7%20160%2050&quot;%20xml%3Aspace%3D&quot;preserve&quot;>%0D%0A<g%20id%3D&quot;Layer_1_1_&quot;%20xmlns%3Asketch%3D&quot;http%3A//www.bohemiancoding.com/sketch/ns&quot;%20display%3D&quot;none&quot;>%0D%0A%09<title>search</title>%0D%0A%09<desc>Created%20with%20Sketch.</desc>%0D%0A%09<g%20id%3D&quot;Page-1&quot;%20sketch%3Atype%3D&quot;MSPage&quot;%20display%3D&quot;inline&quot;>%0D%0A%09%09<g%20id%3D&quot;Black&quot;%20transform%3D&quot;translate%28-528.000000%2C%200.000000%29&quot;%20sketch%3Atype%3D&quot;MSLayerGroup&quot;>%0D%0A%09%09%09<path%20id%3D&quot;search-black&quot;%20sketch%3Atype%3D&quot;MSShapeGroup&quot;%20d%3D&quot;M587.6-23.3l-4.3-4.3c0.1-0.2%2C0.3-0.6%2C0.5-0.8c0.1-0.3%2C0.2-0.6%2C0.3-0.9%0D%0A%09%09%09%09c0.1-0.3%2C0.1-0.7%2C0.2-0.9c0-0.3%2C0.1-0.7%2C0.1-1c0-1-0.2-1.9-0.6-2.8c-0.3-0.9-0.9-1.7-1.6-2.4c-0.7-0.7-1.5-1.2-2.4-1.6%0D%0A%09%09%09%09c-0.9-0.3-1.8-0.6-2.8-0.6c-1%2C0-1.9%2C0.2-2.7%2C0.6c-0.9%2C0.3-1.6%2C0.9-2.3%2C1.5c-0.7%2C0.7-1.1%2C1.4-1.5%2C2.3c-0.3%2C0.9-0.6%2C1.8-0.6%2C2.7%0D%0A%09%09%09%09c0%2C1%2C0.2%2C1.9%2C0.6%2C2.8c0.3%2C0.9%2C0.9%2C1.7%2C1.6%2C2.4c0.7%2C0.7%2C1.5%2C1.2%2C2.4%2C1.6c0.9%2C0.3%2C1.8%2C0.6%2C2.8%2C0.6c0.3%2C0%2C0.7%2C0%2C1-0.1%0D%0A%09%09%09%09c0.3-0.1%2C0.6-0.1%2C0.9-0.2c0.3-0.1%2C0.6-0.2%2C0.9-0.3c0.3-0.1%2C0.6-0.2%2C0.8-0.5l4.3%2C4.3c0.1%2C0.1%2C0.2%2C0.2%2C0.3%2C0.2s0.2%2C0.1%2C0.5%2C0.1%0D%0A%09%09%09%09s0.2%2C0%2C0.5-0.1c0.1%2C0%2C0.2-0.1%2C0.3-0.2l1.1-1c0.1-0.1%2C0.2-0.2%2C0.2-0.3c0-0.1%2C0-0.2%2C0-0.3s-0.1-0.2-0.1-0.3%0D%0A%09%09%09%09C587.8-23.1%2C587.7-23.2%2C587.6-23.3L587.6-23.3L587.6-23.3z%20M572.1-31.4c0-0.7%2C0.1-1.4%2C0.3-1.9c0.2-0.6%2C0.6-1.1%2C1-1.6s1-0.8%2C1.6-1%0D%0A%09%09%09%09s1.2-0.3%2C1.9-0.3c0.7%2C0%2C1.4%2C0.1%2C1.9%2C0.5c0.6%2C0.3%2C1.1%2C0.7%2C1.6%2C1.1c0.5%2C0.5%2C0.8%2C1%2C1.1%2C1.6c0.2%2C0.6%2C0.5%2C1.2%2C0.5%2C1.9%0D%0A%09%09%09%09c0%2C0.7-0.1%2C1.4-0.3%2C1.9c-0.2%2C0.6-0.6%2C1.1-1%2C1.6c-0.5%2C0.5-1%2C0.8-1.6%2C1c-0.6%2C0.2-1.2%2C0.3-1.9%2C0.3c-0.7%2C0-1.4-0.1-1.9-0.5%0D%0A%09%09%09%09c-0.6-0.3-1.1-0.7-1.6-1.1s-0.8-1-1.1-1.6C572.2-30.2%2C572.1-30.8%2C572.1-31.4L572.1-31.4L572.1-31.4z&quot;/>%0D%0A%09%09</g>%0D%0A%09%09<g%20id%3D&quot;Blue&quot;%20transform%3D&quot;translate%28-528.000000%2C%2095.000000%29&quot;%20sketch%3Atype%3D&quot;MSLayerGroup&quot;>%0D%0A%09%09%09<path%20id%3D&quot;search-black_1_&quot;%20sketch%3Atype%3D&quot;MSShapeGroup&quot;%20fill%3D&quot;%2359CBE8&quot;%20d%3D&quot;M587.6-10.3l-4.3-4.3c0.1-0.2%2C0.3-0.6%2C0.5-0.8%0D%0A%09%09%09%09c0.1-0.3%2C0.2-0.6%2C0.3-0.9c0.1-0.3%2C0.1-0.7%2C0.2-0.9c0-0.3%2C0.1-0.7%2C0.1-1c0-1-0.2-1.9-0.6-2.8c-0.3-0.9-0.9-1.7-1.6-2.4%0D%0A%09%09%09%09c-0.7-0.7-1.5-1.2-2.4-1.6c-0.9-0.3-1.8-0.6-2.8-0.6c-1%2C0-1.9%2C0.2-2.7%2C0.6c-0.9%2C0.3-1.6%2C0.9-2.3%2C1.5c-0.7%2C0.7-1.1%2C1.4-1.5%2C2.3%0D%0A%09%09%09%09c-0.3%2C0.9-0.6%2C1.8-0.6%2C2.7c0%2C1%2C0.2%2C1.9%2C0.6%2C2.8c0.3%2C0.9%2C0.9%2C1.7%2C1.6%2C2.4c0.7%2C0.7%2C1.5%2C1.2%2C2.4%2C1.6c0.9%2C0.3%2C1.8%2C0.6%2C2.8%2C0.6%0D%0A%09%09%09%09c0.3%2C0%2C0.7%2C0%2C1-0.1s0.6-0.1%2C0.9-0.2s0.6-0.2%2C0.9-0.3c0.3-0.1%2C0.6-0.2%2C0.8-0.5l4.3%2C4.3c0.1%2C0.1%2C0.2%2C0.2%2C0.3%2C0.2s0.2%2C0.1%2C0.5%2C0.1%0D%0A%09%09%09%09s0.2%2C0%2C0.5-0.1c0.1%2C0%2C0.2-0.1%2C0.3-0.2l1.1-1c0.1-0.1%2C0.2-0.2%2C0.2-0.3c0-0.1%2C0-0.2%2C0-0.3c0-0.1-0.1-0.2-0.1-0.3%0D%0A%09%09%09%09C587.8-10.1%2C587.7-10.2%2C587.6-10.3L587.6-10.3L587.6-10.3z%20M572.1-18.4c0-0.7%2C0.1-1.4%2C0.3-1.9c0.2-0.6%2C0.6-1.1%2C1-1.6%0D%0A%09%09%09%09c0.5-0.5%2C1-0.8%2C1.6-1s1.2-0.3%2C1.9-0.3c0.7%2C0%2C1.4%2C0.1%2C1.9%2C0.5c0.6%2C0.3%2C1.1%2C0.7%2C1.6%2C1.1c0.5%2C0.5%2C0.8%2C1%2C1.1%2C1.6%0D%0A%09%09%09%09c0.2%2C0.6%2C0.5%2C1.2%2C0.5%2C1.9s-0.1%2C1.4-0.3%2C1.9c-0.2%2C0.6-0.6%2C1.1-1%2C1.6c-0.5%2C0.5-1%2C0.8-1.6%2C1c-0.6%2C0.2-1.2%2C0.3-1.9%2C0.3%0D%0A%09%09%09%09c-0.7%2C0-1.4-0.1-1.9-0.5c-0.6-0.3-1.1-0.7-1.6-1.1s-0.8-1-1.1-1.6C572.2-17.1%2C572.1-17.7%2C572.1-18.4L572.1-18.4L572.1-18.4z&quot;/>%0D%0A%09%09</g>%0D%0A%09%09<g%20id%3D&quot;White&quot;%20transform%3D&quot;translate%28-528.000000%2C%2048.000000%29&quot;%20sketch%3Atype%3D&quot;MSLayerGroup&quot;>%0D%0A%09%09%09<path%20id%3D&quot;search-white&quot;%20sketch%3Atype%3D&quot;MSShapeGroup&quot;%20fill%3D&quot;%23BC1919&quot;%20d%3D&quot;M587.6-17.3l-4.3-4.3c0.1-0.2%2C0.3-0.6%2C0.5-0.8%0D%0A%09%09%09%09c0.1-0.3%2C0.2-0.6%2C0.3-0.9c0.1-0.3%2C0.1-0.7%2C0.2-0.9c0-0.3%2C0.1-0.7%2C0.1-1c0-1-0.2-1.9-0.6-2.8c-0.3-0.9-0.9-1.7-1.6-2.4%0D%0A%09%09%09%09c-0.7-0.7-1.5-1.2-2.4-1.6c-0.9-0.3-1.8-0.6-2.8-0.6c-1%2C0-1.9%2C0.2-2.7%2C0.6c-0.9%2C0.3-1.6%2C0.9-2.3%2C1.5c-0.7%2C0.7-1.1%2C1.4-1.5%2C2.3%0D%0A%09%09%09%09c-0.3%2C0.9-0.6%2C1.8-0.6%2C2.7c0%2C1%2C0.2%2C1.9%2C0.6%2C2.8c0.3%2C0.9%2C0.9%2C1.7%2C1.6%2C2.4c0.7%2C0.7%2C1.5%2C1.2%2C2.4%2C1.6c0.9%2C0.3%2C1.8%2C0.6%2C2.8%2C0.6%0D%0A%09%09%09%09c0.3%2C0%2C0.7%2C0%2C1-0.1c0.3-0.1%2C0.6-0.1%2C0.9-0.2c0.3-0.1%2C0.6-0.2%2C0.9-0.3c0.3-0.1%2C0.6-0.2%2C0.8-0.5l4.3%2C4.3c0.1%2C0.1%2C0.2%2C0.2%2C0.3%2C0.2%0D%0A%09%09%09%09s0.2%2C0.1%2C0.5%2C0.1s0.2%2C0%2C0.5-0.1c0.1%2C0%2C0.2-0.1%2C0.3-0.2l1.1-1c0.1-0.1%2C0.2-0.2%2C0.2-0.3c0-0.1%2C0-0.2%2C0-0.3s-0.1-0.2-0.1-0.3%0D%0A%09%09%09%09C587.8-17.1%2C587.7-17.2%2C587.6-17.3L587.6-17.3L587.6-17.3z%20M572.1-25.4c0-0.7%2C0.1-1.4%2C0.3-1.9c0.2-0.6%2C0.6-1.1%2C1-1.6%0D%0A%09%09%09%09c0.5-0.5%2C1-0.8%2C1.6-1s1.2-0.3%2C1.9-0.3c0.7%2C0%2C1.4%2C0.1%2C1.9%2C0.5c0.6%2C0.3%2C1.1%2C0.7%2C1.6%2C1.1c0.5%2C0.5%2C0.8%2C1%2C1.1%2C1.6%0D%0A%09%09%09%09c0.2%2C0.6%2C0.5%2C1.2%2C0.5%2C1.9c0%2C0.7-0.1%2C1.4-0.3%2C1.9c-0.2%2C0.6-0.6%2C1.1-1%2C1.6c-0.5%2C0.5-1%2C0.8-1.6%2C1c-0.6%2C0.2-1.2%2C0.3-1.9%2C0.3%0D%0A%09%09%09%09c-0.7%2C0-1.4-0.1-1.9-0.5c-0.6-0.3-1.1-0.7-1.6-1.1s-0.8-1-1.1-1.6C572.2-24.2%2C572.1-24.7%2C572.1-25.4L572.1-25.4L572.1-25.4z&quot;/>%0D%0A%09%09</g>%0D%0A%09</g>%0D%0A</g>%0D%0A<rect%20x%3D&quot;30.8&quot;%20y%3D&quot;-33.7&quot;%20display%3D&quot;none&quot;%20fill%3D&quot;%239CD7F2&quot;%20width%3D&quot;160&quot;%20height%3D&quot;25&quot;/>%0D%0A<g>%0D%0A%09<path%20fill%3D&quot;%23006693&quot;%20d%3D&quot;M47.5-33.6c7.6%2C0%2C12.8%2C5.1%2C11.3%2C11.7c-1.4%2C6.4-8.8%2C11.6-16.5%2C11.6c-7.6%2C0-12.8-5.2-11.3-11.6%0D%0A%09%09C32.5-28.6%2C40-33.6%2C47.5-33.6z%20M43.2-14.2c5.1%2C0%2C9.8-3.6%2C10.7-7.7c0.9-4.3-2.3-7.8-7.3-7.8s-9.8%2C3.5-10.7%2C7.8%0D%0A%09%09C35-17.8%2C38.2-14.2%2C43.2-14.2z&quot;/>%0D%0A%09<path%20fill%3D&quot;%23006693&quot;%20d%3D&quot;M60-27.6h5.2l2.4%2C11.2h0.1l7-11.2h5.3L68.1-10.8h-3.7L60-27.6z&quot;/>%0D%0A%09<path%20fill%3D&quot;%23006693&quot;%20d%3D&quot;M81.1-17.4c0%2C1.1%2C1.3%2C3.5%2C4.8%2C3.5c2.1%2C0%2C3.9-0.8%2C5.1-2.2h5c-1.8%2C3-6.2%2C5.8-10.9%2C5.8c-6.1%2C0-9.7-4-8.6-8.9%0D%0A%09%09c1-4.8%2C6.2-9%2C12.5-9c6.5%2C0%2C9.3%2C4.5%2C8.4%2C8.7c-0.2%2C0.8-0.5%2C1.5-0.7%2C2L81.1-17.4L81.1-17.4z%20M92.7-20.6c0.1-2.7-2-3.9-4.5-3.9%0D%0A%09%09c-1.9%2C0-4.9%2C0.7-6.5%2C3.9H92.7z&quot;/>%0D%0A%09<path%20fill%3D&quot;%23006693&quot;%20d%3D&quot;M100.7-27.6h4.4l-0.3%2C1.5h0.1c1.2-1.1%2C2.3-2.1%2C4.8-2.1h0.4l-0.9%2C3.9c-4.4%2C0.1-5%2C3-5.3%2C4l-2.1%2C9.5H97%0D%0A%09%09L100.7-27.6z&quot;/>%0D%0A%09<path%20fill%3D&quot;%23006693&quot;%20d%3D&quot;M112.3-33.2h6c6.5%2C0%2C9.1%2C1.5%2C10.4%2C2.6c2.1%2C1.8%2C3.2%2C5.1%2C2.5%2C8.7c-0.9%2C4-4.2%2C7.9-8.5%2C9.7%0D%0A%09%09c-2.7%2C1.2-6.2%2C1.4-9.2%2C1.4h-6.2L112.3-33.2z%20M113.2-14.6h1c2.7%2C0%2C4.4-0.1%2C6.7-1.1c2.9-1.2%2C4.8-3.8%2C5.4-6.2c0.5-2.2-0.2-4.2-1.6-5.5%0D%0A%09%09c-1.7-1.6-4.2-1.9-7.3-1.9h-0.9L113.2-14.6z&quot;/>%0D%0A%09<path%20fill%3D&quot;%23006693&quot;%20d%3D&quot;M133.8-27.6h4.4l-0.3%2C1.5h0.1c1.2-1.1%2C2.3-2.1%2C4.8-2.1h0.4l-0.9%2C3.9c-4.4%2C0.1-5%2C3-5.3%2C4l-2.1%2C9.5h-4.8%0D%0A%09%09L133.8-27.6z&quot;/>%0D%0A%09<path%20fill%3D&quot;%23006693&quot;%20d%3D&quot;M144.2-27.6h4.8l-3.7%2C16.8h-4.8L144.2-27.6z%20M145.4-33.2h4.8l-0.8%2C3.7h-4.8L145.4-33.2z&quot;/>%0D%0A%09<path%20fill%3D&quot;%23006693&quot;%20d%3D&quot;M150-27.6h5.2l2.4%2C11.2h0.1l7-11.2h5.3l-11.8%2C16.8h-3.7L150-27.6z&quot;/>%0D%0A%09<path%20fill%3D&quot;%23006693&quot;%20d%3D&quot;M171.4-17.4c0%2C1.1%2C1.3%2C3.5%2C4.8%2C3.5c2.1%2C0%2C3.9-0.8%2C5.1-2.2h5c-1.8%2C3-6.2%2C5.8-10.9%2C5.8c-6.1%2C0-9.7-4-8.6-8.9%0D%0A%09%09c1-4.8%2C6.2-9%2C12.5-9c6.5%2C0%2C9.3%2C4.5%2C8.4%2C8.7c-0.2%2C0.8-0.5%2C1.5-0.7%2C2L171.4-17.4L171.4-17.4z%20M183-20.6c0.1-2.7-2-3.9-4.5-3.9%0D%0A%09%09c-1.9%2C0-4.9%2C0.7-6.5%2C3.9H183z&quot;/>%0D%0A%09<path%20fill%3D&quot;%23006693&quot;%20d%3D&quot;M190.7-28c-0.2%2C1-1.1%2C1.8-2.1%2C1.8c-1%2C0-1.6-0.8-1.4-1.8s1.1-1.8%2C2.1-1.8C190.2-29.8%2C190.8-29%2C190.7-28z%0D%0A%09%09%20M187.5-28c-0.1%2C0.8%2C0.4%2C1.4%2C1.1%2C1.4c0.8%2C0%2C1.5-0.6%2C1.6-1.4c0.1-0.8-0.3-1.4-1.1-1.4S187.7-28.7%2C187.5-28z%20M189.2-29%0D%0A%09%09c0.1%2C0%2C0.7%2C0%2C0.6%2C0.5c0%2C0.2-0.2%2C0.4-0.5%2C0.5l0%2C0c0.3%2C0.1%2C0.3%2C0.3%2C0.3%2C0.5c0%2C0.3%2C0%2C0.4%2C0%2C0.5h-0.4c0-0.1%2C0-0.1%2C0-0.4%0D%0A%09%09c0-0.3%2C0-0.4-0.3-0.4h-0.4l-0.1%2C0.8h-0.4l0.4-2C188.3-29%2C189.2-29%2C189.2-29z%20M188.5-28.1h0.4c0.1%2C0%2C0.4%2C0%2C0.5-0.3%0D%0A%09%09c0-0.2-0.1-0.2-0.3-0.2h-0.4L188.5-28.1z&quot;/>%0D%0A</g>%0D%0A<rect%20x%3D&quot;30.8&quot;%20y%3D&quot;-8.7&quot;%20display%3D&quot;none&quot;%20fill%3D&quot;%23E8CFAF&quot;%20width%3D&quot;160&quot;%20height%3D&quot;25&quot;/>%0D%0A<g>%0D%0A%09<path%20fill%3D&quot;%23FFFFFF&quot;%20d%3D&quot;M47.5-8.6c7.6%2C0%2C12.8%2C5.1%2C11.3%2C11.7C57.5%2C9.5%2C50%2C14.7%2C42.4%2C14.7c-7.6%2C0-12.8-5.2-11.3-11.6%0D%0A%09%09C32.5-3.5%2C40-8.6%2C47.5-8.6z%20M43.2%2C10.8c5.1%2C0%2C9.8-3.6%2C10.7-7.7c0.9-4.3-2.3-7.8-7.3-7.8s-9.8%2C3.5-10.7%2C7.8%0D%0A%09%09C35%2C7.2%2C38.2%2C10.8%2C43.2%2C10.8z&quot;/>%0D%0A%09<path%20fill%3D&quot;%23FFFFFF&quot;%20d%3D&quot;M60-2.6h5.2l2.4%2C11.2h0.1l7-11.2h5.3L68.1%2C14.2h-3.7L60-2.6z&quot;/>%0D%0A%09<path%20fill%3D&quot;%23FFFFFF&quot;%20d%3D&quot;M81.1%2C7.6c0%2C1.1%2C1.3%2C3.5%2C4.8%2C3.5c2.1%2C0%2C3.9-0.8%2C5.1-2.2h5c-1.8%2C3-6.2%2C5.8-10.9%2C5.8c-6.1%2C0-9.7-4-8.6-8.9%0D%0A%09%09c1-4.8%2C6.2-9%2C12.5-9c6.5%2C0%2C9.3%2C4.5%2C8.4%2C8.7c-0.2%2C0.8-0.5%2C1.5-0.7%2C2L81.1%2C7.6L81.1%2C7.6z%20M92.7%2C4.4c0.1-2.7-2-3.9-4.5-3.9%0D%0A%09%09c-1.9%2C0-4.9%2C0.7-6.5%2C3.9H92.7z&quot;/>%0D%0A%09<path%20fill%3D&quot;%23FFFFFF&quot;%20d%3D&quot;M100.7-2.6h4.4l-0.3%2C1.5h0.1c1.2-1.1%2C2.3-2.1%2C4.8-2.1h0.4l-0.9%2C3.9c-4.4%2C0.1-5%2C3-5.3%2C4l-2.1%2C9.5H97%0D%0A%09%09L100.7-2.6z&quot;/>%0D%0A%09<path%20fill%3D&quot;%23FFFFFF&quot;%20d%3D&quot;M112.3-8.2h6c6.5%2C0%2C9.1%2C1.5%2C10.4%2C2.6c2.1%2C1.8%2C3.2%2C5.1%2C2.5%2C8.7c-0.9%2C4-4.2%2C7.9-8.5%2C9.7%0D%0A%09%09c-2.7%2C1.2-6.2%2C1.4-9.2%2C1.4h-6.2L112.3-8.2z%20M113.2%2C10.4h1c2.7%2C0%2C4.4-0.1%2C6.7-1.1c2.9-1.2%2C4.8-3.8%2C5.4-6.2c0.5-2.2-0.2-4.2-1.6-5.5%0D%0A%09%09c-1.7-1.6-4.2-1.9-7.3-1.9h-0.9L113.2%2C10.4z&quot;/>%0D%0A%09<path%20fill%3D&quot;%23FFFFFF&quot;%20d%3D&quot;M133.8-2.6h4.4l-0.3%2C1.5h0.1c1.2-1.1%2C2.3-2.1%2C4.8-2.1h0.4l-0.9%2C3.9c-4.4%2C0.1-5%2C3-5.3%2C4l-2.1%2C9.5h-4.8%0D%0A%09%09L133.8-2.6z&quot;/>%0D%0A%09<path%20fill%3D&quot;%23FFFFFF&quot;%20d%3D&quot;M144.2-2.6h4.8l-3.7%2C16.8h-4.8L144.2-2.6z%20M145.4-8.2h4.8l-0.8%2C3.7h-4.8L145.4-8.2z&quot;/>%0D%0A%09<path%20fill%3D&quot;%23FFFFFF&quot;%20d%3D&quot;M150-2.6h5.2l2.4%2C11.2h0.1l7-11.2h5.3l-11.8%2C16.8h-3.7L150-2.6z&quot;/>%0D%0A%09<path%20fill%3D&quot;%23FFFFFF&quot;%20d%3D&quot;M171.4%2C7.6c0%2C1.1%2C1.3%2C3.5%2C4.8%2C3.5c2.1%2C0%2C3.9-0.8%2C5.1-2.2h5c-1.8%2C3-6.2%2C5.8-10.9%2C5.8c-6.1%2C0-9.7-4-8.6-8.9%0D%0A%09%09c1-4.8%2C6.2-9%2C12.5-9c6.5%2C0%2C9.3%2C4.5%2C8.4%2C8.7c-0.2%2C0.8-0.5%2C1.5-0.7%2C2L171.4%2C7.6L171.4%2C7.6z%20M183%2C4.4c0.1-2.7-2-3.9-4.5-3.9%0D%0A%09%09c-1.9%2C0-4.9%2C0.7-6.5%2C3.9H183z&quot;/>%0D%0A%09<path%20fill%3D&quot;%23FFFFFF&quot;%20d%3D&quot;M190.7-3c-0.2%2C1-1.1%2C1.8-2.1%2C1.8c-1%2C0-1.6-0.8-1.4-1.8s1.1-1.8%2C2.1-1.8C190.2-4.7%2C190.8-3.9%2C190.7-3z%0D%0A%09%09%20M187.5-3c-0.1%2C0.8%2C0.4%2C1.4%2C1.1%2C1.4c0.8%2C0%2C1.5-0.6%2C1.6-1.4s-0.3-1.4-1.1-1.4S187.7-3.7%2C187.5-3z%20M189.2-3.9c0.1%2C0%2C0.7%2C0%2C0.6%2C0.5%0D%0A%09%09c0%2C0.2-0.2%2C0.4-0.5%2C0.5l0%2C0c0.3%2C0.1%2C0.3%2C0.3%2C0.3%2C0.5c0%2C0.3%2C0%2C0.4%2C0%2C0.5h-0.4c0-0.1%2C0-0.1%2C0-0.4c0-0.3%2C0-0.4-0.3-0.4h-0.4l-0.1%2C0.8%0D%0A%09%09h-0.4l0.4-2C188.3-3.9%2C189.2-3.9%2C189.2-3.9z%20M188.5-3.1h0.4c0.1%2C0%2C0.4%2C0%2C0.5-0.3c0-0.2-0.1-0.2-0.3-0.2h-0.4L188.5-3.1z&quot;/>%0D%0A</g>%0D%0A</svg>%0D%0A\" width=\"160\" height=\"50\">\n" +
                        "           </div>\n" +
                        "           <div class=\"partner-description\">\n" +
                        "               <p class=\"partner-name\">Электронный магазин электронных книг и аудиокниг Overdrive</p>\n" +
                        "               <p class=\"partner-link\">www.overdrive.com</p>\n" +
                        "           </div>\n" +
                        "       </a>\n" +
                        "   </li>\n" +
                        "   <li class=\"partner\">\n" +
                        "       <a href=\"https://www.directmedia.ru\" title=\"Интернет-магазин электронных книг DirectMedia\" target=\"_blank\">\n" +
                        "           <div class=\"partner-logo\">\n" +
                        "               <img src=\"https://www.directmedia.ru/images/logo.png\" width=\"58\" height=\"52\">\n" +
                        "           </div>\n" +
                        "           <div class=\"partner-description\">\n" +
                        "               <p class=\"partner-name\">Интернет-магазин электронных книг DirectMedia</p>\n" +
                        "               <p class=\"partner-link\">www.directmedia.ru</p>\n" +
                        "           </div>\n" +
                        "       </a>\n" +
                        "   </li>\n" +
                        "   <li class=\"partner\">\n" +
                        "       <a href=\"http://www.sberbank-school.ru\" title=\"Корпоративный университет Сбербанка\" target=\"_blank\">\n" +
                        "           <div class=\"partner-logo\">\n" +
                        "               <img src=\"https://www.sberbank.ru/portalserver/content/atom/contentRepository/content?id=a43c5b23-b34a-4d39-a35b-2b5c578e5324\" width=\"242\" height=\"61\">\n" +
                        "           </div>\n" +
                        "           <div class=\"partner-description\">\n" +
                        "               <p class=\"partner-name\">Корпоративный университет Сбербанка</p>\n" +
                        "               <p class=\"partner-link\">www.sberbank-school.ru</p>\n" +
                        "           </div>\n" +
                        "       </a>\n" +
                        "   </li>\n" +
                        "   <li class=\"partner\">\n" +
                        "       <a href=\"http://slavpeople.com\" title=\"Медиапортал Slavpeople\" target=\"_blank\">\n" +
                        "           <div class=\"partner-logo\">\n" +
                        "               <img style=\"background-color: #2f3033;\" src=\"http://slavpeople.com/markup_images/header/logo.png\" width=\"139.5\" height=\"32.39\">\n" +
                        "           </div>\n" +
                        "           <div class=\"partner-description\">\n" +
                        "               <p class=\"partner-name\">Медиапортал Slavpeople</p>\n" +
                        "               <p class=\"partner-link\">slavpeople.com</p>\n" +
                        "           </div>\n" +
                        "       </a>\n" +
                        "   </li>\n" +
                        "   <li class=\"partner\">\n" +
                        "       <a href=\"http://www.respublica.ru\" title=\"Интернет-магазин электронных книг Республика\" target=\"_blank\">\n" +
                        "           <div class=\"partner-logo\">\n" +
                        "               <img src=\"http://www.respublica.ru/assets/image-respublica-logo-59f57e7c4d01deace190584636cbef0a.png\" width=\"195\" height=\"41\">\n" +
                        "           </div>\n" +
                        "           <div class=\"partner-description\">\n" +
                        "               <p class=\"partner-name\">Интернет-магазин электронных книг \"Республика\"</p>\n" +
                        "               <p class=\"partner-link\">www.respublica.ru</p>\n" +
                        "           </div>\n" +
                        "       </a>\n" +
                        "   </li>\n" +
                        "   <li class=\"partner\">\n" +
                        "       <a href=\"http://www.i-free.com/\" title=\"Инновационная компания i-Free\" target=\"_blank\">\n" +
                        "           <div class=\"partner-logo\">\n" +
                        "               <img src=\"http://www.i-free.com/sites/all/themes/futura/logo.png\" width=\"123\" height=\"63\">\n" +
                        "           </div>\n" +
                        "           <div class=\"partner-description\">\n" +
                        "               <p class=\"partner-name\">Инновационная компания i-Free</p>\n" +
                        "               <p class=\"partner-link\">www.i-free.com</p>\n" +
                        "           </div>\n" +
                        "       </a>\n" +
                        "   </li>\n" +
                        "   <li class=\"partner\">\n" +
                        "       <a href=\"http://www.moscowbooks.ru\" title=\"Книжный магазин МОСКВА\" target=\"_blank\">\n" +
                        "           <div class=\"partner-logo\">\n" +
                        "               <img src=\"http://www.moscowbooks.ru/image/s7/logo.gif\" width=\"200\" height=\"33\">\n" +
                        "           </div>\n" +
                        "           <div class=\"partner-description\">\n" +
                        "               <p class=\"partner-name\">Книжный магазин \"МОСКВА\"</p>\n" +
                        "               <p class=\"partner-link\">www.moscowbooks.ru</p>\n" +
                        "           </div>\n" +
                        "       </a>\n" +
                        "   </li>\n" +
                        "   <li class=\"partner\">\n" +
                        "       <a href=\"http://bookland.com\" title=\"Bookland.com\" target=\"_blank\">\n" +
                        "           <div class=\"partner-logo\">\n" +
                        "               <img src=\"http://bookland.com/themes/obreey/img/logo.png\" width=\"195\" height=\"60\">\n" +
                        "           </div>\n" +
                        "           <div class=\"partner-description\">\n" +
                        "               <p class=\"partner-name\">Bookland.com</p>\n" +
                        "               <p class=\"partner-link\">bookland.com</p>\n" +
                        "           </div>\n" +
                        "       </a>\n" +
                        "   </li>\n" +
                        "   <li class=\"partner\">\n" +
                        "       <a href=\"http://www.kniga.com/books\" title=\"Книжный магазин Kniga.com\" target=\"_blank\">\n" +
                        "           <div class=\"partner-logo\">\n" +
                        "               <img src=\"http://www.kniga.com/books/img/header/logo.gif\" width=\"241\" height=\"85\">\n" +
                        "           </div>\n" +
                        "           <div class=\"partner-description\">\n" +
                        "               <p class=\"partner-name\">Книжный магазин Kniga.com</p>\n" +
                        "               <p class=\"partner-link\">www.kniga.com/books</p>\n" +
                        "           </div>\n" +
                        "       </a>\n" +
                        "   </li>\n" +
                        "   <li class=\"partner\">\n" +
                        "       <a href=\"https://play.google.com/store/books\" title=\"Книжный магазин Google Play\" target=\"_blank\">\n" +
                        "           <div class=\"partner-logo\">\n" +
                        "               <img src=\"https://www.gstatic.com/android/market_images/web/play_prism_hlock_2x.png\" width=\"183\" height=\"39\">\n" +
                        "           </div>\n" +
                        "           <div class=\"partner-description\">\n" +
                        "               <p class=\"partner-name\">Книжный магазин \"Google Play\"</p>\n" +
                        "               <p class=\"partner-link\">play.google.com/store/books</p>\n" +
                        "           </div>\n" +
                        "       </a>\n" +
                        "   </li>\n" +
                        "   <li class=\"partner\">\n" +
                        "       <a href=\"http://www.apple.com/ibooks/\" title=\"Книжный магазин iBookstore\" target=\"_blank\">\n" +
                        "           <div class=\"partner-logo\">\n" +
                        "               <img src=\"http://images.apple.com/ibooks/images/callout_ibooks_chiclet_large.png\" width=\"72\" height=\"112\">\n" +
                        "           </div>\n" +
                        "           <div class=\"partner-description\">\n" +
                        "               <p class=\"partner-name\">Книжный магазин \"iBookstore\"</p>\n" +
                        "               <p class=\"partner-link\">www.apple.com/ibooks/</p>\n" +
                        "           </div>\n" +
                        "       </a>\n" +
                        "   </li>\n" +
                        "   <li class=\"partner\">\n" +
                        "       <a href=\"http://www.ozon.ru\" title=\"Онлайн мегамаркет Ozon.ru\" target=\"_blank\">\n" +
                        "           <div class=\"partner-logo\">\n" +
                        "               <img src=\"http://ozon-st.cdn.ngenix.net/graphics/ozon/170109_dsgn4602_logo_ozon_usual.png\" width=\"213\" height=\"85\">\n" +
                        "           </div>\n" +
                        "           <div class=\"partner-description\">\n" +
                        "               <p class=\"partner-name\">Онлайн мегамаркет Ozon.ru</p>\n" +
                        "               <p class=\"partner-link\">www.ozon.ru</p>\n" +
                        "           </div>\n" +
                        "       </a>\n" +
                        "   </li>\n" +
                        "   <li class=\"partner\">\n" +
                        "       <a href=\"http://www.aeroflot.ru/cms/flight/on_board\" title=\"Аудиокниги на борту самолетов Аэрофлот\" target=\"_blank\">\n" +
                        "           <div class=\"partner-logo\">\n" +
                        "               <img src=\"http://www.aeroflot.ru/static/common_tpl/images/ru/logo_ru.gif\" width=\"286\" height=\"80\">\n" +
                        "           </div>\n" +
                        "           <div class=\"partner-description\">\n" +
                        "               <p class=\"partner-name\">Аудиокниги на борту самолетов \"Аэрофлот\"</p>\n" +
                        "               <p class=\"partner-link\">www.aeroflot.ru</p>\n" +
                        "           </div>\n" +
                        "       </a>\n" +
                        "   </li>\n" +
                        "   <li class=\"partner\">\n" +
                        "       <a href=\"http://bookmate.com/\" title=\"BOOKMATE\" target=\"_blank\">\n" +
                        "           <div class=\"partner-logo\">\n" +
                        "               <img src=\"https://assets0.bmstatic.com/pipeline/application/logo-0a6d3471a2f0855f58e7001f58225907.svg\" width=\"32\" height=\"32\">\n" +
                        "           </div>\n" +
                        "           <div class=\"partner-description\">\n" +
                        "               <p class=\"partner-name\">BOOKMATE</p>\n" +
                        "               <p class=\"partner-link\">bookmate.com</p>\n" +
                        "           </div>\n" +
                        "       </a>\n" +
                        "   </li>\n" +
                        "   <li class=\"partner\">\n" +
                        "       <a href=\"http://books.beeline.ru/\" title=\"Билайн.Книги\" target=\"_blank\">\n" +
                        "           <div class=\"partner-logo\">\n" +
                        "               <img src=\"http://books.beeline.ru/assets/header/logo_header.png\" width=\"31\" height=\"32\">\n" +
                        "           </div>\n" +
                        "           <div class=\"partner-description\">\n" +
                        "               <p class=\"partner-name\">Билайн.Книги</p>\n" +
                        "               <p class=\"partner-link\">books.beeline.ru</p>\n" +
                        "           </div>\n" +
                        "       </a>\n" +
                        "   </li>\n" +
                        "   <li class=\"partner\">\n" +
                        "       <a href=\"http://play.tele2.ru/waptele2/mds/web/cat.jsp?group=knigi\" title=\"TELE2.Книги\" target=\"_blank\">\n" +
                        "           <div class=\"partner-logo\">\n" +
                        "               <img src=\"data:image/png;base64,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\" width=\"100\" height=\"50\">\n" +
                        "           </div>\n" +
                        "           <div class=\"partner-description\">\n" +
                        "               <p class=\"partner-name\">TELE2.Книги</p>\n" +
                        "               <p class=\"partner-link\">play.tele2.ru</p>\n" +
                        "           </div>\n" +
                        "       </a>\n" +
                        "   </li>\n" +
                        "   <li class=\"partner\">\n" +
                        "       <a href=\"http://aldebaran.ru/\" title=\"Библиотека Альдебаран\" target=\"_blank\">\n" +
                        "           <div class=\"partner-logo\">\n" +
                        "               <img style=\"background-color: black;\" src=\"http://aldebaran.ru/static/aldebaran/i/logo_big.png\" width=\"267\" height=\"34\">\n" +
                        "           </div>\n" +
                        "           <div class=\"partner-description\">\n" +
                        "               <p class=\"partner-name\">Библиотека Альдебаран</p>\n" +
                        "               <p class=\"partner-link\">aldebaran.ru</p>\n" +
                        "           </div>\n" +
                        "       </a>\n" +
                        "   </li>\n" +
                        "   <li class=\"partner\">\n" +
                        "       <a href=\"http://bookz.ru/\" title=\"Электронная библиотека bookZ.ru\" target=\"_blank\">\n" +
                        "           <div class=\"partner-logo\">\n" +
                        "           </div>\n" +
                        "           <div class=\"partner-description\">\n" +
                        "               <p class=\"partner-name\">Электронная библиотека bookZ.ru</p>\n" +
                        "               <p class=\"partner-link\">bookz.ru</p>\n" +
                        "           </div>\n" +
                        "       </a>\n" +
                        "   </li>\n" +
                        "   <li class=\"partner\">\n" +
                        "       <a href=\"http://fictionbook.ru/\" title=\"Электронная библиотека fictionbook.ru\" target=\"_blank\">\n" +
                        "           <div class=\"partner-logo\">\n" +
                        "               <img src=\"http://fictionbook.ru/static/img/fb/sitelogo.gif\" width=\"288\" height=\"74\">\n" +
                        "           </div>\n" +
                        "           <div class=\"partner-description\">\n" +
                        "               <p class=\"partner-name\">Электронная библиотека fictionbook.ru</p>\n" +
                        "               <p class=\"partner-link\">fictionbook.ru</p>\n" +
                        "           </div>\n" +
                        "       </a>\n" +
                        "   </li>\n" +
                        "   <li class=\"partner\">\n" +
                        "       <a href=\"http://www.fenzin.org/\" title=\"Электронная библиотека fenzin.org\" target=\"_blank\">\n" +
                        "           <div class=\"partner-logo\">\n" +
                        "               <img src=\"http://www.fenzin.org/style/beige-blue/images/logo.jpg\" width=\"137.7\" height=\"100\">\n" +
                        "           </div>\n" +
                        "           <div class=\"partner-description\">\n" +
                        "               <p class=\"partner-name\">Электронная библиотека fenzin.org</p>\n" +
                        "               <p class=\"partner-link\">www.fenzin.org</p>\n" +
                        "           </div>\n" +
                        "       </a>\n" +
                        "   </li>\n" +
                        "   <li class=\"partner\">\n" +
                        "       <a href=\"http://litportal.ru/\" title=\"Литературный сетевой ресурс\" target=\"_blank\">\n" +
                        "           <div class=\"partner-logo\">\n" +
                        "               <img src=\"http://www.litportal.ru/images/logo-liportal_4.gif\" width=\"152\" height=\"69\">\n" +
                        "           </div>\n" +
                        "           <div class=\"partner-description\">\n" +
                        "               <p class=\"partner-name\">Литературный сетевой ресурс</p>\n" +
                        "               <p class=\"partner-link\">litportal.ru</p>\n" +
                        "           </div>\n" +
                        "       </a>\n" +
                        "   </li>\n" +
                        "</ul>\n";
                break;
            case "book-requirements":
                infoHeader = "Требования к формату и содержанию книги";
                infoBody =
                        "<h2>Обязательные требования к формату и содержанию книг</h2>\n" +
                        "<p>\n" +
                        "   Ваши книги и всё, что с ними связано: названия книг, обложки, иллюстрации\n" +
                        "   и описания книг, должны соответствовать этим требованиям. Мы оставляем за собой\n" +
                        "   право принимать решения о соответствии контента требованиям и в одностороннем\n" +
                        "   порядке отказываться от его публикации. Также сервис оставляет за собой право\n" +
                        "   в одностороннем порядке прекратить сотрудничество с автором и снять все его книги\n" +
                        "   с публикации в случае несоответствия контента этим требованиям.\n" +
                        "</p>\n" +
                        "\n" +
                        "<h2>Технические требования к загружаемым файлам</h2>\n" +
                        "<div class=\"cols\">\n" +
                        "   <div class=\"col col-1\">\n" +
                        "       <h3>Книга</h3>\n" +
                        "       <ul>\n" +
                        "           <li>Формат файла с произведением: DOCX;</li>\n" +
                        "           <li>Объем произведения: от 4000 печатных знаков;</li>\n" +
                        "           <li>Размер файла с произведением и иллюстрациями: не более 20 Мб.</li>\n" +
                        "       </ul>\n" +
                        "   </div>\n" +
                        "   <div class=\"col col-2\">\n" +
                        "       <h3>Обложка</h3>\n" +
                        "       <ul>\n" +
                        "           <li>Разрешение файла-обложки: не меньше 230×368 пикселей, пропорции 5:8,</li>\n" +
                        "           <li>Размер файла: не более 5 Мб,</li>\n" +
                        "           <li>Формат изображения обложки: PNG или JPG.</li>\n" +
                        "       </ul>\n" +
                        "   </div>\n" +
                        "</div>\n" +
                        "\n" +
                        "<h2>О законодательстве и интеллектуальной собственности</h2>\n" +
                        "<p>\n" +
                        "   Вы самостоятельно несете всю полноту ответственности за соответствие текста требованиям действующего законодательства, включая, но не ограничиваясь,\n" +
                        "   ответственность перед третьими лицами за нарушение интеллектуальных прав, иных прав и законных интересов.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Запрещается размещать контент при отсутствии прав на такие действия согласно законодательству и (или) каким-либо договорным отношениям.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Пользователю запрещается размещать контент, включающий в себя любые файлы, которые содержат или могут содержать вирусы и (или) другие\n" +
                        "   вредоносные программы, а также осуществлять иные действия (бездействие), которые могут причинить вред и (или) неудобства другим пользователям\n" +
                        "   и (или) третьим лицам.\n" +
                        "</p>\n" +
                        "\n" +
                        "<h2>Порнография и эротический контент</h2>\n" +
                        "<p>\n" +
                        "   Текст может содержать эротический контент при условии соответствия содержания российскому законодательству. Автор обязан правильно\n" +
                        "   указать возрастную маркировку при отправке такого текста на публикацию.\n" +
                        "</p>\n" +
                        "\n" +
                        "<h2>Бесплатный (public domain) контент и другие неэксклюзивные материалы</h2>\n" +
                        "<p>\n" +
                        "   Некоторые виды произведений, например, находящиеся в открытом публичном доступе (public domain), могут распространяться бесплатно,\n" +
                        "   или быть лицензированы для использования несколькими лицами или компаниями. Мы не будем принимать к публикации такой контент, если вы\n" +
                        "   не являетесь его автором или правообладателем.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Например, если вы получили текст из источника, который разрешает вам или другим его дальнейшее свободное распространение и этот контент\n" +
                        "   уже свободно доступен в интернете, то мы можем не принять его для распространения через наш сервис.\n" +
                        "</p>\n" +
                        "\n" +
                        "<h2>Качество текста</h2>\n" +
                        "<p>\n" +
                        "   Мы не принимаем книги, которые не соответствуют нашим критериям качества, связанные с качеством подготовки текста и его художественной ценностью.\n" +
                        "   Мы оставляем за собой право в одностороннем порядке определять, соответствует ли текст стандартам качества и представляет ли он ценность для читателей.\n" +
                        "</p>\n" +
                        "\n" +
                        "<h2>Подготовка книги</h2>\n" +
                        "<p>\n" +
                        "   Для публикации вашей книги в Verybook потребуется загрузить ее на сайт. Правильно подготовленный файл книги – позволит избежать множество проблем,\n" +
                        "   которые могут возникнуть на стадии загрузки и при дальнейшей работе с файлом.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Итак, вы решили опубликовать свою книгу. Для этого подойдет файл в формате DOCX – его можно отформатировать так, что после загрузки и преобразования файла\n" +
                        "   получится хорошая электронная книга с навигацией по главам, которую будет удобно и приятно читать с точки зрения восприятия текста. А это уже половина успеха.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Ниже приведен список требований к оформлению текста книги и ее обложки. Пожалуйста, внимательно изучите все требования, ведь от этого напрямую зависит то,\n" +
                        "   как будет выглядеть и восприниматься читателями ваша электронная книга.\n" +
                        "</p>\n" +
                        "\n" +
                        "<h2>Требования к тексту книги</h2>\n" +
                        "<ol>\n" +
                        "   <li>Текст необходимо оформлять так, чтобы хорошо была видна его структура. Размечайте все заголовки соответствующими стилями Word:\n" +
                        "       Заголовок 1, Заголовок 2, Заголовок 3.</li>\n" +
                        "</ol>\n" +
                        "<p>\n" +
                        "   Пример: ваш роман состоит из двух частей, в каждую из частей входит по 10 глав, в некоторых главах присутствует деление на подглавы.\n" +
                        "   Вы выделяете «Часть 1» и «Часть 2» и выбираете стиль «Заголовок 1».\n" +
                        "   Каждую главу размечаете «Заголовком 2».\n" +
                        "   Подглавы - «Заголовком 3».\n" +
                        "</p>\n" +
                        "<ol>\n" +
                        "   <li>В тексте должны отсутствовать:</li>\n" +
                        "</ol>\n" +
                        "<ul>\n" +
                        "   <li>Содержание;</li>\n" +
                        "   <li>Колонтитулы;</li>\n" +
                        "   <li>Нумерация страниц;</li>\n" +
                        "   <li>Разрывы страниц.</li>\n" +
                        "</ul>\n" +
                        "<ol>\n" +
                        "   <li>Все эпиграфы, посвящения, цитаты, экскурсы, врезки и т.п. – оформляйте так, чтобы они визуально отличались от остального текста.</li>\n" +
                        "   <li>Абзацные отступы делайте не пробелами и не табуляцией, а через форматирование отступа первой строки в настройках абзаца.</li>\n" +
                        "   <li>Отключите в настройках Word автоформат при создании нумерованных или маркированных списков.</li>\n" +
                        "   <li>Если в вашей книге есть стихи – визуально отделите их от основного текста пустыми строками или еще как-то обозначьте\n" +
                        "       (особенно это актуально, если вы цитируете в прозаическом тексте одну-две стихотворные строки – они могут попросту потеряться).</li>\n" +
                        "   <li>Примечания и сноски к тексту должны быть сделаны с помощью соответствующей функции Word – иначе они не будут должным образом оформлены в электронной книге.</li>\n" +
                        "   <li>Если вы хотите разделить текст внутри главы на части с помощью пустых строк, то эти строки надо делать отдельными абзацами,\n" +
                        "       а не увеличением межстрочного интервала.</li>\n" +
                        "</ol>\n" +
                        "\n" +
                        "<h2>Что делать, если все требования выполнены, но при загрузке файла появляется \"Ошибка конвертирования\" или \"Ошибка валидации\"?</h2>\n" +
                        "<p>\n" +
                        "   Если вы выполнили все требования, но файл, полученный в результате, конвертируется с ошибкой, попробуйте сделать следующее:\n" +
                        "</p>\n" +
                        "<ol>\n" +
                        "   <li>На всякий случай сделайте копию исходного файла.</li>\n" +
                        "   <li>Выделите весь текст (Ctrl+A), далее выберите в стилях (на \"Главной\" вкладке Word) пункт \"Очистить формат\".\n" +
                        "       После этого из файла пропадет все форматирование. Это означает, что заголовки глав и т.п. придется размечать заново.\n" +
                        "       Однако после этого файл с большей степенью вероятности удастся загрузить в нашу систему.</li>\n" +
                        "   <li>Если же и это не помогло, пора переходить к радикальным мерам:</li>\n" +
                        "   <li>\n" +
                        "       <ol>\n" +
                        "           <li>В своем исходном файле выделите весь текст (Ctrl+A) и скопируйте его в буфер обмена (Ctrl+C).</li>\n" +
                        "           <li>Затем откройте пустой файл \"Блокнота\" и вставьте туда скопированный текст (Ctrl+V).</li>\n" +
                        "           <li>Оставаясь в \"Блокноте\", выделите в нем весь текст (Ctrl+A) и скопируйте его в буфер обмена (Ctrl+C).</li>\n" +
                        "           <li>Создайте новый пустой файл DOCX, откройте его и вставьте туда скопированный текст (Ctrl+V).</li>\n" +
                        "           <li>Следуя рекомендациям по разметке и форматированию текста, подготовьте заново файл в формате DOCX и загрузите его в нашу систему.</li>\n" +
                        "       </ol>\n" +
                        "   </li>\n" +
                        "</ol>\n" +
                        "<p>\n" +
                        "   Сделали все возможное, но до сих пор не получается загрузить файл?\n" +
                        "   Обращайтесь в <a href=\"feedback\">техподдержку</a>: вам обязательно помогут!\n" +
                        "</p>\n" +
                        "\n" +
                        "<h2>Требования к обложке книги</h2>\n" +
                        "<ol>\n" +
                        "   <li>Название на обложке должно обязательно совпадать с названием книги.</li>\n" +
                        "   <li>Допустимы небольшие различия в тексте и на обложке - например, серия, сведения о переиздании, рекламные слоганы и т.п.,\n" +
                        "       но основное название книги должно быть одинаковым.</li>\n" +
                        "   <li>Рекомендуется сохранять обложку в формате JPG (допускается только режим RGB без лишних каналов, режим CMYK использовать нельзя).</li>\n" +
                        "   <li>В качестве обложки следует использовать только лицевую сторону книги без каких-либо дополнительных эффектов\n" +
                        "       (например, не принимается изображение «в 3D перспективе» и т.д.).</li>\n" +
                        "</ol>\n" +
                        "<p>\n";
                break;
            case "book-upload":
                infoHeader = "Загрузка книги и самопроверка";
                infoBody =
                        "<p>\n" +
                        "   После <a href=\"info/book-requirements\">подготовки книги</a> необходимо загрузить файл в нашу систему.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Сделать это очень просто: в разделе \"Помощь автору\" нажимаете на кнопку \"Хочу создать книгу\" и выбираете необходимый файл.\n" +
                        "   Обратите внимание, поддерживается только формат: DOCX.\n" +
                        "</p>\n";
                break;
            case "book-metadata":
                infoHeader = "Описание книги";
                infoBody =
                        "<p>\n" +
                        "   Когда книга после <a href=\"info/book-requirements\">подготовки</a> и <a href=\"info/book-upload\">загрузки</a> окажется в нашей системе,\n" +
                        "   для публикации в Verybook останется правильно заполнить данные о книге (метаданные): написать аннотацию, классифицировать жанровую принадлежность,\n" +
                        "   указать возрастную категорию, указать год написания и всех принявших участие в работе над книгой. Также на этой стадии вы можете проверить\n" +
                        "   и при необходимости отредактировать название книги и ее автора, загрузить обложку.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   В любой момент вы можете сохранить внесенные изменения, чтобы вернуться к заполнению метаданных позднее.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   После заполнения всех необходимых данных вы можете отправить книгу на модерацию, нажав на соответствующую кнопку.\n" +
                        "   Если все сделано правильно – ваша книга скоро будет опубликована в Verybook!\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Ниже вашему вниманию предлагается ряд рекомендаций и требований к заполнению метаданных.\n" +
                        "</p>\n" +
                        "\n" +
                        "<h2>Правила написания аннотации</h2>\n" +
                        "<p>\n" +
                        "   Рекомендуемый средний объем аннотации – 500 печатных знаков. Аннотация не должна превышать абзац, состоящий из 10-12 строк и 4000 печатных знаков.\n" +
                        "   Текст аннотации должен быть лаконичен и четок, крайне не рекомендуется включать в текст аннотации расхожие штампы и общеизвестные сведения,\n" +
                        "   специальные термины и выдержки из книги.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Помните основное предназначение аннотации: рассказать потенциальному читателю о книге так, чтобы заинтересовать его, заставить открыть книгу и\n" +
                        "   начать ее читать. Хорошая аннотация интригует, не впадая в крайности (это правило касается, в первую очередь, художественной литературы), или же\n" +
                        "   в нескольких предложениях раскрывает основную идею и авторский замысел (если речь о нехудожественной литературе).\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Сравнения с другими книгами допустимы, но не забывайте, что куда более эффективно указать правильную жанровую принадлежность книги и ее возрастную категорию.\n" +
                        "</p>\n" +
                        "\n" +
                        "<h2>Определение жанра книги</h2>\n" +
                        "<p>\n" +
                        "   Определяя жанр своей книги, помните главное: нужно дать читателям как можно более точные ориентиры, а не запутать его. Максимально возможное количество жанров,\n" +
                        "   которыми можно охарактеризовать книгу – 3, но лучше подобрать один наиболее подходящий. Если вы испытываете затруднение с однозначным определением жанра,\n" +
                        "   подумайте, что является в вашей книге преобладающим, ключевым.\n" +
                        "</p>\n" +
                        "\n" +
                        "<h2>Выбор тегов (ключевых фраз)</h2>\n" +
                        "<p>\n" +
                        "   Еще более точными ориентирами для читателей, помимо жанра, являются теги. Тег - это своего рода маркер, ключевое слово или словосочетание,\n" +
                        "   которое фокусирует внимание на сути произведения, дополняя описание книги и ее жанровую принадлежность. Важно подобрать теги так (можно указать\n" +
                        "   не более 5 тегов), чтобы они говорили о книге главное и вызывали к ней интерес потенциальной целевой аудитории.\n" +
                        "</p>\n" +
                        "\n" +
                        "<h3>Например:</h3>\n" +
                        "<p>\n" +
                        "   Характеризуя книгу, вы указали жанр \"Историческая литература\". А теги выбрали следующие: \"Россия XIX века\", \"Становление героя\" и \"Декабристы\".\n" +
                        "   Теперь любой, кто зайдет на страницу вашей книги, даже не вчитываясь в аннотацию сможет представить, о чем в ней пойдет речь.\n" +
                        "</p>\n" +
                        "\n" +
                        "<h3>Обратите внимание: теги необходимо указывать на том же языке, на каком написана ваша книга.</h3>\n" +
                        "\n" +
                        "<h2>Возрастная категория</h2>\n" +
                        "<p>\n" +
                        "   Существует ряд однозначных критериев, позволяющих более или менее точно определить возрастную категорию книги. Подробнее об этом можно прочитать\n" +
                        "   в <a href=\"info/book-restrictions\">соответствующей статье</a>. Никто лучше вас не знает содержания вашей книги – подумайте, какому читателю вы\n" +
                        "   адресуете свое произведение. Возможно, вам потребуется дополнительно отредактировать текст, чтобы он соответствовал определенной возрастной категории\n" +
                        "   (особенно это актуально для детской и подростковой литературы).\n" +
                        "</p>\n";
                break;
            case "book-license":
                infoHeader = "Выбор типа лицензии книги";
                infoBody =
                        "<p>\n" +
                        "   Прежде чем опубликовать свою книгу, вам нужно определиться с тем, на каких условиях вы передадите нам право заниматься распространением вашей книги.\n" +
                        "   Выбор, безусловно, важен, ведь он напрямую повлияет на то, где и как будет доступна ваша книга и какой процент с продаж вы получите.\n" +
                        "   Выбор лицензии происходит в рамках выбора одного из пакетов распространения:\n" +
                        "</p>\n" +
                        "<ul>\n" +
                        "   <li>Бесплатный - книга передается на условиях неисключительной лицензии для бесплатного размещения.</li>\n" +
                        "   <li>Базовый - книга передается на условиях неисключительной лицензии для платного размещения (продажи).</li>\n" +
                        "   <li>Безлимитный - книга передается на условиях исключительной лицензии для платного размещения (продажи).</li>\n" +
                        "</ul>\n" +
                        "\n" +
                        "<h2>Что такое неисключительная лицензия?</h2>\n" +
                        "<p>\n" +
                        "   Простая (неисключительная) лицензия – тип лицензии, согласно которой вы не передаете эксклюзивного права на распространение вашей книги.\n" +
                        "   У такого подхода есть свои преимущества: вы сохраняете возможность передать такое же, неэксклюзивное, право кому-то еще, то есть, можете\n" +
                        "   напрямую выставлять свою книгу в продажу в другие магазины с помощью других сервисов. Хорошо ли это? И да и нет. С одной стороны, у вас\n" +
                        "   больше возможностей управлять процессом распространения своей книги, но с другой – неисключительная лицензия ограничивает (порой весьма существенно)\n" +
                        "   эти возможности для тех площадок, которым вы передадите свою книгу на условиях неисключительной лицензии.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Если вы передадите нам книгу на условиях неисключительной лицензии – Verybook выставит книгу в своем магазине.\n" +
                        "   Ваши роялти составят 25% от полученной выручки.\n" +
                        "</p>\n" +
                        "\n" +
                        "<h2>Что такое исключительная лицензия и в чем ее преимущества?</h2>\n" +
                        "<p>\n" +
                        "   Если вы решите передать нам книгу на условиях исключительной лицензии – это будет означать, что Verybook получит эксклюзивное право\n" +
                        "   на распространение вашей книги и сможет заниматься этим в рамках заключенного договора без каких-либо ограничений.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   И, следовательно, книга попадет в обширную сеть распространения наших партнеров, включающую более 100 интернет-магазинов, площадок\n" +
                        "   и сервисов по всему миру. С продаж вы будете получать повышенные суммы роялти - 35% от полученной выручки, а мы, пользуясь исключительным\n" +
                        "   правом, будем защищать ваши интересы как автора от пиратского интернет рынка.\n" +
                        "</p>\n" +
                        "\n" +
                        "<h2>Можно ли менять тип лицензии для уже опубликованной книги?</h2>\n" +
                        "<p>\n" +
                        "   Да, можно в рамках изменения пакета распространения. Существует одно правило, обусловленное базовыми принципами работы сервиса:\n" +
                        "   при изменении пакета распространения переход на другой пакет произойдет с первого числа следующего месяца.\n" +
                        "</p>\n";
                break;
            case "book-check":
                infoHeader = "Проверка книги модератором";
                infoBody =
                        "<p>\n" +
                        "   Итак, файл книги <a href=\"info/book-requirements\">подготовлен</a> и <a href=\"info/book-upload\">загружен</a>, заполнены\n" +
                        "   <a href=\"info/book-metadata\">необходимые данные</a> и выбрана <a href=\"info/book-license\">лицензия</a>.\n" +
                        "   Теперь осталось нажать на ссылку \"Отправить на модерацию\" - и книга уйдет на проверку.\n" +
                        "</p>\n" +
                        "\n" +
                        "<h2>Для чего нужна проверка? Ведь Verybook - сервис самопубликации?</h2>\n" +
                        "<p>\n" +
                        "   Все так, Verybook - сервис, предоставляющий каждому автору полный контроль над издательским процессом и убирающий все\n" +
                        "   барьеры между книгой и ее потенциальными читателями.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   И тем не менее, проверка необходима - как минимум, для того, чтобы мы могли убедиться в правильности заполнения метаданных\n" +
                        "   или в соответствии загруженных материалов нашим <a href=\"info/book-requirements\">требованиям к формату и содержанию</a>.\n" +
                        "   Возможно, модератор сможет вам чем-нибудь помочь или что-нибудь подсказать - что, в конечном итоге, поможет книге, сделает\n" +
                        "   ее более заметной и доступной для читателей.\n" +
                        "</p>\n" +
                        "\n" +
                        "<h2>Сколько длится проверка книги? Когда книга попадет в продажу?</h2>\n" +
                        "<p>\n" +
                        "   Проверка отправленных в публикацию книг занимает до 7 рабочих дней. В случае если были найдены какие-либо недочеты - книга\n" +
                        "   вернется на доработку с комментарием модератора.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Если же все хорошо - ваша книга появится в нашем книжном магазине!\n" +
                        "</p>\n";
                break;
            case "book-statistics":
                infoHeader = "Просмотр статистики по книге";
                infoBody =
                        "<p>\n" +
                        "   C того момента, как ваша книга попадет в книжный магазин, в списке \"Мои книги\" личного кабинета начнет появляться\n" +
                        "   статистика ее скачиваний и просмотров.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Статистика по книге устроена довольно просто. Вы в любой момент времени сможете увидеть график динамики скачиваний и просмотров вашей книги (или книг).\n" +
                        "   Под графиком расположена таблица со сводной ежемесячной статистикой и ссылками на скачивание детальных отчетов за каждый месяц.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Данные непрерывно обновляются, поэтому следить за тем, как продается ваша книга, вы сможете в режиме реального времени.\n" +
                        "</p>\n";
                break;
            case "author-identification":
                infoHeader = "Процедура регистрации и идентификации автора";
                infoBody =
                        "<h2>Процедура регистрации</h2>\n" +
                        "<p>\n" +
                        "   Для того чтобы опубликовать свою книгу с помощью сервиса Verybook, необходимо пройти процедуру базовой регистрации.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Всего несколько простых действий отделяют вас от того, чтобы начать готовить книгу к публикации:\n" +
                        "</p>\n" +
                        "<ol>\n" +
                        "   <li>Войдите в систему через аккаунт Facebook, либо VK;</li>\n" +
                        "   <li>Это всё! Других действий предпринимать не нужно!</li>\n" +
                        "</ol>\n" +
                        "<p>\n" +
                        "   Теперь можно приступать к работе над книгами!\n" +
                        "</p>\n" +
                        "\n" +
                        "<h2>Процедура идентификации</h2>\n" +
                        "<p>\n" +
                        "   Для повышения уровня доверия со стороны читателей на площадке сервиса Verybook, рекомендуется пройти процедуру идентификации,\n" +
                        "   состоящую из нескольких шагов:\n" +
                        "</p>\n" +
                        "<ol>\n" +
                        "   <li>Перейдите в «Личный кабинет».</li>\n" +
                        "   <li>Заполните свое полное имя.</li>\n" +
                        "   <li>Загрузите фотографию.</li>\n" +
                        "</ol>\n" +
                        "<p>\n" +
                        "   Теперь ваши книги будут четко ассоциироваться в вами в глазах читателей.\n" +
                        "</p>\n";
                break;
            case "author-payreceive":
                infoHeader = "Выплата вознаграждения автору";
                infoBody =
                        "<p>\n" +
                        "   По мере накопления ежемесячной статистики скачиваний и просмотров ваших книг в «Личном кабинете» формируются сводные ежеквартальные отчеты о продажах.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   На основании этих отчетов, в свою очередь, формируется сумма к выплате.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Простой пример: допустим, ваш доход от продаж в январе составил 10000 рублей, в феврале – 15000 рублей, в марте – 20000 рублей.\n" +
                        "   Итого за квартал вы заработали 45000 рублей.\n" +
                        "</p>\n" +
                        "\n" +
                        "<h2>Как получить заработанное вознаграждение?</h2>\n" +
                        "<p>\n" +
                        "   Сумма к выплате отображается в отдельном блоке «Личного кабинета». Вы можете получить эту сумму в любой момент, однако стоит учитывать,\n" +
                        "   что при этом будет осуществлен банковский перевод с комиссией по тарифам банка. Эта комиссия обычно невыгодна при суммах менее 1000 рублей,\n" +
                        "   поэтому мы рекомендуем дожидаться накопления суммы на счету минимум до этой отметки и только потом снимать деньги.\n" +
                        "</p>\n";
                break;
            case "book-restrictions":
                infoHeader = "Возрастные ограничения книги";
                infoBody =
                        "<p>\n" +
                        "   Согласно ФЗ от 29 декабря 2010 г. N 436-ФЗ \"О защите детей от информации, причиняющей вред их здоровью и развитию\"\n" +
                        "   (Закон вступил в силу с 01 сентября 2012 года) и постановлению Правительства Российской Федерации от 07.12.2015 г. № 1336\n" +
                        "   существует определенная возрастная классификация информационной продукции – совокупность норм, регулирующих доступ к информации,\n" +
                        "   причиняющей вред здоровью и развитию детей в Российской Федерации.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Книги (печатные и электронные) относятся к информационной продукции, поэтому внимательно изучите все представленные ниже сведения\n" +
                        "   о возрастной классификации и ограничениях, применимых для каждой возрастной группы.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Никто лучше вас не знает содержания книги, которую вы самостоятельно публикуете с помощью нашего сервиса. Поэтому на вас ложится\n" +
                        "   вся полнота ответственности за соответствие текста требованиям действующего законодательства и указание правильной возрастной категории.\n" +
                        "   Обратите внимание, требования касаются не только текста книги, но и оформления обложки.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Сервис Verybook оставляет за собой право принимать решение о:\n" +
                        "</p>\n" +
                        "<ul>\n" +
                        "   <li>выставлении возрастного ценза (в случаях, требующих его пересмотра);</li>\n" +
                        "   <li>соответствии содержания вашей книги обозначенным требованиям и в одностороннем порядке отказываться от его публикации.</li>\n" +
                        "</ul>\n" +
                        "\n" +
                        "<h2>Перечень возрастных категорий</h2>\n" +
                        "<h3>До 6 лет (0+)</h3>\n" +
                        "<p>\n" +
                        "   Такую возрастную маркировку получает информационная продукция, содержащая информацию, не причиняющую вреда здоровью и (или) развитию детей\n" +
                        "   (в том числе информационная продукция, содержащая оправданные ее жанром и (или) сюжетом эпизодические ненатуралистические изображение\n" +
                        "   или описание физического и (или) психического насилия (за исключением сексуального насилия) при условии торжества добра над злом и выражения\n" +
                        "   сострадания к жертве насилия и (или) осуждения насилия).\n" +
                        "</p>\n" +
                        "\n" +
                        "<h3>От 6 до 12 лет (6+)</h3>\n" +
                        "<p>\n" +
                        "   Допускается включать:\n" +
                        "</p>\n" +
                        "<ol>\n" +
                        "   <li>кратковременные и ненатуралистические изображения или описания заболеваний человека (за исключением тяжелых заболеваний)\n" +
                        "       и (или) их последствий в форме, не унижающей человеческого достоинства;</li>\n" +
                        "   <li>ненатуралистическое изображение или описание несчастного случая, аварии, катастрофы либо ненасильственной смерти без демонстрации\n" +
                        "       их последствий, которые могут вызывать у детей страх, ужас или панику;</li>\n" +
                        "   <li>не побуждающие к совершению антиобщественных действий и (или) преступлений эпизодические изображения или описания этих действий\n" +
                        "       и (или) преступлений при условии, что не обосновывается и не оправдывается их допустимость и выражается отрицательное, осуждающее\n" +
                        "       отношение к лицам, их совершающим.</li>\n" +
                        "</ol>\n" +
                        "\n" +
                        "<h3>От 12 до 16 лет (12+)</h3>\n" +
                        "<p>\n" +
                        "   Допускается включать:\n" +
                        "</p>\n" +
                        "<ol>\n" +
                        "   <li>эпизодическое изображение или описание жестокости и (или) насилия (за исключением сексуального насилия) без натуралистического\n" +
                        "       показа процесса лишения жизни или нанесения увечий при условии, что выражается сострадание к жертве и (или) отрицательное,\n" +
                        "       осуждающее отношение к жестокости, насилию (за исключением насилия, применяемого в случаях защиты прав граждан и охраняемых\n" +
                        "       законом интересов общества или государства);</li>\n" +
                        "   <li>изображение или описание, не побуждающие к совершению антиобщественных действий (в том числе к потреблению алкогольной и\n" +
                        "       спиртосодержащей продукции, пива и напитков, изготавливаемых на его основе, участию в азартных играх, занятию бродяжничеством\n" +
                        "       или попрошайничеством), эпизодическое упоминание (без демонстрации) наркотических средств, психотропных и (или) одурманивающих\n" +
                        "       веществ, табачных изделий при условии, что не обосновывается и не оправдывается допустимость антиобщественных действий, выражается\n" +
                        "       отрицательное, осуждающее отношение к ним и содержится указание на опасность потребления указанных продукции, средств, веществ, изделий;</li>\n" +
                        "   <li>не эксплуатирующие интереса к сексу и не носящие возбуждающего или оскорбительного характера эпизодические ненатуралистические\n" +
                        "       изображения или описания половых отношений между мужчиной и женщиной, за исключением изображения или описания действий\n" +
                        "       сексуального характера.</li>\n" +
                        "</ol>\n" +
                        "\n" +
                        "<h3>От 16 до 18 лет (16+)</h3>\n" +
                        "<p>\n" +
                        "   Допускается:\n" +
                        "</p>\n" +
                        "<ol>\n" +
                        "   <li>изображение или описание несчастного случая, аварии, катастрофы, заболевания, смерти без натуралистического показа их последствий,\n" +
                        "       которые могут вызывать у детей страх, ужас или панику;</li>\n" +
                        "   <li>изображение или описание жестокости и (или) насилия (за исключением сексуального насилия) без натуралистического показа процесса\n" +
                        "       лишения жизни или нанесения увечий при условии, что выражается сострадание к жертве и (или) отрицательное, осуждающее отношение к\n" +
                        "       жестокости, насилию (за исключением насилия, применяемого в случаях защиты прав граждан и охраняемых законом интересов общества\n" +
                        "       или государства);</li>\n" +
                        "   <li>информация о наркотических средствах или о психотропных и (или) об одурманивающих веществах (без их демонстрации), об опасных\n" +
                        "       последствиях их потребления с демонстрацией таких случаев при условии, что выражается отрицательное или осуждающее отношение\n" +
                        "       к потреблению таких средств или веществ и содержится указание на опасность их потребления;</li>\n" +
                        "   <li>отдельные бранные слова и (или) выражения, не относящиеся к нецензурной брани;</li>\n" +
                        "   <li>не эксплуатирующие интереса к сексу и не носящие оскорбительного характера изображение или описание половых отношений между\n" +
                        "       мужчиной и женщиной, за исключением изображения или описания действий сексуального характера.</li>\n" +
                        "</ol>\n" +
                        "\n" +
                        "<h3>Старше 18 лет (18+)</h3>\n" +
                        "<p>\n" +
                        "   Маркировку 18+ должна получить книга:\n" +
                        "</p>\n" +
                        "<ol>\n" +
                        "   <li>побуждающая детей к совершению действий, представляющих угрозу их жизни и (или) здоровью, в том числе к причинению вреда своему\n" +
                        "       здоровью, самоубийству, демонстрация культуры общества ЛГБТ;</li>\n" +
                        "   <li>способная вызвать у детей желание употребить наркотические средства, психотропные и (или) одурманивающие вещества, табачные изделия,\n" +
                        "       алкогольную и спиртосодержащую продукцию, пиво и напитки, изготавливаемые на его основе, принять участие в азартных играх, заниматься\n" +
                        "       проституцией, бродяжничеством или попрошайничеством;</li>\n" +
                        "   <li>обосновывающая или оправдывающая допустимость насилия и (или) жестокости либо побуждающая осуществлять насильственные действия по\n" +
                        "       отношению к людям или животным, за исключением случаев, предусмотренных настоящим Федеральным законом;</li>\n" +
                        "   <li>отрицающая семейные ценности и формирующая неуважение к родителям и (или) другим членам семьи;</li>\n" +
                        "   <li>оправдывающая противоправное поведение;</li>\n" +
                        "   <li>содержащая нецензурную брань;</li>\n" +
                        "   <li>содержащая информацию порнографического характера.</li>\n" +
                        "</ol>\n";
                break;
            case "book-price":
                infoHeader = "Установка цены на книгу";
                infoBody =
                        "<p>\n" +
                        "   Прежде чем выставить книгу в продажу, вам надо определиться с ценой, по которой книга будет доступна покупателям.\n" +
                        "   Важность правильно выставленной цены сложно переоценить. С одной стороны, конкурентная цена на вашу книгу привлечет\n" +
                        "   (уж точно не отпугнет) потенциальных читателей, а с другой – от цены продажи напрямую зависит ваш доход.\n" +
                        "   Но кто заинтересуется вашей книгой, если о ней (пока) никто не знает? Возможно, стоит на какое-то время сделать ее\n" +
                        "   доступной для бесплатного скачивания?\n" +
                        "</p>\n" +
                        "\n" +
                        "<h2>Как правильно выставить цену на вашу книгу?</h2>\n" +
                        "<p>\n" +
                        "   Допустим, вы написали роман в жанре научной фантастики. Для того, чтобы определить, по какой цене лучше продавать вашу книгу,\n" +
                        "   нужно изучить рынок – для этого достаточно зайти в соответствующий раздел любого книжного интернет-магазина и посмотреть,\n" +
                        "   сколько стоят романы других авторов, написанные в этом же жанре. Посмотрите, почем продаются самые популярные книги жанра.\n" +
                        "   Посмотрите, по какой цене выставляют в продажу свои новинки крупные издатели. И затем поставьте на свою книгу цену примерно\n" +
                        "   такого же порядка. Безусловно, вы можете немного понизить цену, чтобы привлечь внимание к своей книге, можете, наоборот, немного\n" +
                        "   ее повысить, если сочтете нужным – важнее остаться в каких-то разумных пределах, в «границах рынка».\n" +
                        "</p>\n" +
                        "\n" +
                        "<h2>А может, надо выставить книгу бесплатно для привлечения внимания?</h2>\n" +
                        "<p>\n" +
                        "   Конечно же, в этом есть определенный смысл. Книга, которую можно скачать бесплатно – сам факт сильно повышает шансы на то, что\n" +
                        "   книгу скачают даже те, кто в ином случае просто прошел бы мимо. Бесплатность – это не только доступность, «нулевая цена» подобна\n" +
                        "   акционному «шильдику» в магазине: она привлечет внимание. А значит, возможность выставить книгу в бесплатный доступ – отличный\n" +
                        "   инструмент продвижения, который имеет смысл использовать при необходимости. Попробуйте сделать книгу бесплатной для читателей,\n" +
                        "   соберите побольше отзывов – возможно, эта обратная связь поможет вам в дальнейшем не только в плане продвижения книги, но и даст\n" +
                        "   необходимую информацию о читателях, позволит взглянуть на свое произведение со стороны.\n" +
                        "</p>\n" +
                        "\n" +
                        "<h2>Цену на книгу можно выставить только один раз?</h2>\n" +
                        "<p>\n" +
                        "   Конечно же нет.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Одно из преимуществ управления ценой вашей книги на сервисе Verybook – возможность гибкого ее изменения. Вы можете повышать или\n" +
                        "   понижать цену, делать книгу бесплатной, а затем снова платной сколько угодно раз. При этом, если вы меняете цену в рамках ранее\n" +
                        "   выбранной лицензии - она изменится в магазинах практически сразу же после проверки модератором.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Существует только одно правило, обусловленное базовыми принципами работы сервиса: если цена меняется в рамках изменения лицензии -\n" +
                        "   все изменения будут задействованы с первого числа следующего месяца.\n" +
                        "</p>\n" +
                        "\n" +
                        "<h2>Три характерных примера</h2>\n" +
                        "<ol>\n" +
                        "   <li>Вы продавали книгу за 89 рублей в рамках выбранного безлимитного пакета. Затем, не меняя пакет, решили изменить цену и выбрали 99 рублей.\n" +
                        "       В этом случае сразу после проверки модератором цена изменится на всех площадках.</li>\n" +
                        "   <li>Вы продавали книгу за 89 рублей в рамках выбранного базового пакета. Затем вы приняли решение сменить пакет на безлимитный, сохранив ту же цену.\n" +
                        "       В таком случае изменения будут задействованы с первого числа следующего месяца.</li>\n" +
                        "   <li>Ваша книга была выставлена бесплатно в рамках бесплатного пакета. Вы выбрали базовый пакет и выставили 99 рублей.\n" +
                        "       Изменения будут задействованы с первого числа следующего месяца.</li>\n" +
                        "</ol>\n";
                break;
            case "offer":
                infoHeader = "ЛИЦЕНЗИОННЫЙ ДОГОВОР-ОФЕРТА (условия использования сервиса)";
                String infoBody1 =
                        "<p>\n" +
                        "   Настоящий лицензионный договор («Договор», «настоящий Договор») заключается между Компанией Верибук (Verybook) («Лицензиат»), с одной стороны,\n" +
                        "   и Вами («Лицензиар»), с другой стороны (далее — «Стороны»),\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   ПРИНИМАЯ ВО ВНИМАНИЕ, ЧТО:\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   (1) Лицензиар (физическое лицо / или юридическое лицо в лице полномочного представителя либо лица, имеющего соответствующие полномочия на\n" +
                        "   основании учредительных документов), не имея ограничений относительно вступления в подобные правоотношения в соответствии с применимым\n" +
                        "   законодательством, является Автором и/или обладателем исключительного права (правообладателем) на Произведение; или обладателем права\n" +
                        "   использования Произведения и права предоставления Лицензиату права использования Произведения на условиях Договора;\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   (2) Лицензиар имеет намерение предоставить Лицензиату право использования Произведения на условиях Договора;\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   (3) Лицензиат имеет возможность осуществлять размещение Произведения на Интернет-ресурсах для использования на условиях Договора;\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   (4) Лицензиат имеет право по своему усмотрению разместить Произведение на Интернет-ресурсах либо отказаться от размещения Произведения,\n" +
                        "   а также прекратить использование Произведения, в том числе без предоставления Лицензиару объяснений причин такого отказа в размещении\n" +
                        "   Произведения на Интернет-ресурсах / такого прекращения использования Произведения.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   договорились о нижеследующем:\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   (А) Полным и безоговорочным акцептом (принятием) Лицензиаром условия Договора является осуществление нижеперечисленных действий:\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   — подтверждение Лицензиаром своего ознакомления с текстом Договора и своего согласия со всеми условиями Договора;\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   — осуществление Лицензиаром регистрационных действий, включая действия по подтверждению, и предоставление Лицензиаром Произведений\n" +
                        "   для размещения Лицензиатом (<a href=\"info/author-identification\">verybook.org/info/author-identification</a>).\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Совершая указанные действия, Лицензиар обязуется надлежаще исполнять все взятые на себя обязательства по Договору, принимает на себя\n" +
                        "   всю полноту ответственности за соблюдение законодательства (в том числе о защите интеллектуальных прав), а также (если Лицензиар — физическое лицо)\n" +
                        "   выражает согласие на предоставление своей персональной информации (персональных данных) в соответствии с положениями Договора.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   С момента совершения Лицензиаром вышеназванных действий по акцептированию Договора, Договор считается заключенным.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   (Б) Размещение Лицензиатом Договора для всеобщего сведения по адресу <a href=\"#\">verybook.org/info/offer</a> означает принятие Лицензиатом\n" +
                        "   на себя всех обязательств по Договору.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   (В) Стороны согласились с тем, что настоящая форма Договора применяется для удобства Сторон, заключение Договора подобным образом является\n" +
                        "   надлежащим оформлением возникновения прав и обязанностей Сторон, не ущемляет прав и интересов ни одной из Сторон, и не является само по себе\n" +
                        "   основанием для заявления о недействительности или незаключенности Договора.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   В Договоре и в Приложениях к нему Стороны согласились с однозначным толкованием терминов и понятий:\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Произведения (каждое в отдельности — «Произведение») — охраняемые результаты интеллектуальной деятельности: тексты литературных произведений\n" +
                        "   (включая их переводы), их названия, предисловия, аннотации, статьи и т. д., графические изображения, записанные в различных цифровых форматах,\n" +
                        "   пригодных для их воспроизведения на ЭВМ и доведения до всеобщего сведения через сеть Интернет или иные сети передачи данных.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Графические изображения — обложки, иллюстрации, фотографии, произведения дизайна, прочие изображения.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Авторы — авторы произведений (в том числе авторы графических изображений, переводчики, составители, либо иные авторы производных или составных произведений).\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Каталог — перечень всех произведений, используемых Лицензиатом (в том числе предоставленных Лицензиату на основании договоров с другими лицензиарами).\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Карточка произведения — размещаемая Лицензиатом на Интернет-ресурсах информация о произведении, включая обложку, название произведения, имя автора (авторов),\n" +
                        "   имя (наименование) правообладателя, аннотация, прочие необходимые сведения.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Карточка автора — размещаемая Лицензиатом на Интернет-ресурсах информация об Авторе (<a href=\"author-pa\">verybook.org/author-pa</a>)\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   ЭВМ — электронно-вычислительная машина, которая может быть подключена к сети Интернет для записи, хранения, воспроизведения и/или чтения,\n" +
                        "   просмотра произведений. При этом любые подобные устройства, включая мобильные устройства связи, в том числе, но не ограничиваясь: мобильные телефоны,\n" +
                        "   КПК, смартфоны и т.д., также являются и признаются в тексте настоящего Договора ЭВМ.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Пользователи — физические или юридические лица, принявшие условия пользовательских соглашений Лицензиата, его аффилированных лиц либо его партнеров,\n" +
                        "   и получившие доступ к произведениям на Интернет-ресурсах.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Интернет-ресурсы — сайты, мобильные приложения, иные ресурсы на усмотрение Лицензиата (список Интернет-ресурсов находится по адресу:\n" +
                        "   <a href=\"info/partners\">verybook.org/info/partners</a> и может изменяться Лицензиатом по его усмотрению).\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Сайты — веб-сайты в сети Интернет, обозначенные доменными именами, владельцами (администраторами) которых является Лицензиат, его аффилированные\n" +
                        "   лица либо его партнеры.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Мобильные приложения — компьютерные программы, права на которые принадлежат Лицензиату, его аффилированным лицам либо его партнерам, используемые\n" +
                        "   в мобильных телефонах, смартфонах, коммуникаторах или иных устройствах, с помощью которых пользователи получают доступ к произведениям:\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   · Мобильное приложение «ЛитРес: Читай», для платформ IOS, Android, Windows Phone, Win8 и др.;\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   · Мобильное приложение «Литрес: Библиотека» для платформ IOS, Android, Windows Phone, Win8 и др.;\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   · Мобильное приложение «MyBook» для платформ IOS, Android, Windows Phone и др.;\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   · Любые иные мобильные приложения, права на которые принадлежат Лицензиату, его аффилированным лицам либо его партнерам.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Отчетный период — согласованный Сторонами период, равный одному календарному кварталу года (три месяца). Первый Отчетный период\n" +
                        "   устанавливается с момента начала размещения Лицензиаром произведений на Интернет-ресурсах (при принятии Лицензиатом решения о\n" +
                        "   размещении произведений на Интернет-ресурсах), и заканчивается в последний день соответствующего календарного квартала года.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Отчет — документ, содержащий сведения об использовании каждого произведения способами, указанными в п.1.2. Договора (в случае\n" +
                        "   принятия Лицензиатом решения о размещении произведений на Интернет-ресурсах), размер суммы причитающегося Лицензиару вознаграждения,\n" +
                        "   подлежащего выплате Лицензиатом Лицензиару за отчетный период, иную согласованную Сторонами информацию.\n" +
                        "   (отчет доступен по адресу: <a href=\"author-pa\">verybook.org/author-pa</a>)\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Личный кабинет — создаваемая Лицензиатом личная конфиденциальная страница Лицензиара на Интернет-ресурсах, защищаемая логином и паролем,\n" +
                        "   на которой хранится информация по статистике использования произведений, начислению вознаграждения, состояние взаиморасчетов, прочая\n" +
                        "   необходимая информация в рамках исполнения Договора.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   В настоящем Договоре могут быть использованы иные термины, выше не определенные, толкование которых будет производиться в соответствии\n" +
                        "   с текстом Договора и/или применимым законодательством. В случае отсутствия однозначного толкования термина в тексте Договора и/или в\n" +
                        "   применимом законодательстве, следует руководствоваться толкованием термина, сложившимся в сети Интернет и в практике делового оборота.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   1. Лицензиар предоставляет Лицензиату в объеме и на условиях, определенных Договором, права на использование произведений, перечень и\n" +
                        "   описание которых доступны по адресу <a href=\"author-pa\">verybook.org/author-pa</a>, нижеследующими способами:\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   1.1. воспроизводить неограниченное количество раз каждое произведение в электронной форме (в цифровых форматах, которые известны к настоящему\n" +
                        "   моменту, и которые станут известны в будущем), оптической или иной машиночитаемой форме (в том числе в различных текстовых форматах) путем\n" +
                        "   записи в память ЭВМ, а также путем записи на любые иные носители по усмотрению Лицензиата, в следующих целях:\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   — в целях предварительного ознакомления с текстом произведения и оценки на предмет принятия решения о его размещении на Интернет-ресурсах\n" +
                        "   для коммерческого использования способами, указанными в п. 1.2 Договора;\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   — в целях (в случае принятия Лицензиатом положительного решения относительно такого размещения) размещения произведения на Интернет-ресурсах\n" +
                        "   для коммерческого использования способами, указанными в п. 1.2 Договора;\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   — в целях создания резервных копий произведения;\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   — в иных правомерных целях по усмотрению Лицензиата.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Права использования произведений способами, указанными в п.1.1., предоставляются Лицензиату безвозмездно (без права требования Лицензиаром от\n" +
                        "   Лицензиата какой-либо выплаты за такое использование).\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   1.2. сообщать (доводить до всеобщего сведения) произведения, таким образом, что любое лицо может получить доступ к каждому произведению из любого\n" +
                        "   места и в любое время по собственному выбору, в том числе в интерактивном режиме, в цифровых сетях, включая сеть Интернет, локальные цифровые сети,\n" +
                        "   сети сотовой связи, иные средства доступа к ресурсам, на которых воспроизведены произведения, путем:\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   1.2.1. показа (демонстрации) пользователям фрагментов произведений, воспроизведенных согласно п. 1.1. Договора, в объеме, указанном Лицензиаром в\n" +
                        "   процессе предоставления произведений, с помощью технических средств для чтения произведений в режиме реального времени («онлайн»). При этом может\n" +
                        "   осуществляться загрузка и временное локальное хранение (кэширование) произведений (фрагментов произведений) в оперативной памяти оборудования пользователей\n" +
                        "   с целью обеспечения технической возможности пользователю читать произведения в режиме реального времени («онлайн»);\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   1.2.1.1. использования произведений по модели «Подписка»: предоставление пользователям возмездного доступа к каталогу в течение определенного периода\n" +
                        "   времени (пользователь, оплативший подписку, имеет возможность читать в режиме «онлайн» любые выбранные им произведения из каталога в период действия этой подписки);\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   1.2.2. предоставления возможности пользователям возмездного воспроизведения (копирования) произведения (как полностью, так и отдельных его\n" +
                        "   фрагментов по выбору пользователя) на пользовательское оборудование (записи в память оконечного оборудования ЭВМ либо иных устройств) таких\n" +
                        "   пользователей (в цифровых форматах, которые известны на дату подписания настоящего Договора, и которые станут известны в будущем). При этом\n" +
                        "   доступ к произведению (фрагментам произведения) предоставляется каждому пользователю, оплатившему стоимость копирования этого произведения\n" +
                        "   (фрагментов произведения), без ограничения срока, в т.ч. и после прекращения использования этого произведения Лицензиатом в связи с окончанием\n" +
                        "   срока действия права на использование этого произведения на условиях Договора либо по иным причинам. Допускается запись одного и того же произведения\n" +
                        "   (фрагментов произведения), оплаченного пользователем, в память ЭВМ нескольких устройств.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   1.3. карточка произведения остается в распоряжении Лицензиата и по окончании срока использования этого произведения (карточка произведения\n" +
                        "   остается доступной пользователям на Интернет-ресурсах, а воспроизведенное ранее произведение в соответствии с п.1.1. Договора, остается в памяти ЭВМ\n" +
                        "   (на серверах) Лицензиата).\n" +
                        "</p>\n";

                String infoBody2 =
                        "<p>\n" +
                        "   2. Произведения предоставляются Лицензиату на условиях:\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   — исключительной лицензии (без сохранения за Лицензиаром права выдачи лицензий другим лицам, при этом Лицензиар не вправе сам использовать\n" +
                        "   произведения в тех пределах, в которых право использования произведений предоставлено Лицензиату по договору)\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   или\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   — простой (неисключительной) лицензии (с сохранением за Лицензиаром права выдачи лицензий другим лицам).\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   2.1. Выбор типа лицензии в отношении каждого из произведений Лицензиар осуществляет самостоятельно при предоставлении произведений\n" +
                        "   (<a href=\"info/book-license\">verybook.org/info/book-license</a>)\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   2.2. Лицензиар вправе менять тип лицензии в отношении уже предоставленных произведений. Изменения вступают в силу с началом\n" +
                        "   следующего календарного месяца.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   3. Территория, на которой допускается использование произведений: территория всех стран и государств мира.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   4. Срок использования произведений: в течение срока действия Договора (см. п. 15. настоящего Договора).\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   5. Порядок начисления и выплаты вознаграждения Лицензиару. За предоставленные в рамках Договора права использования произведений\n" +
                        "   Лицензиат обязуется выплачивать Лицензиару вознаграждение в следующем размере:\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   — 35% от сумм, уплаченных конечными пользователями при возмездном использовании произведений, предоставленных Лицензиаром\n" +
                        "   на условиях исключительной лицензии;\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   — 25% от сумм, уплаченных конечными пользователями при возмездном использовании произведений, предоставленных Лицензиаром\n" +
                        "   на условиях простой (неисключительной) лицензии.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Во избежание сомнений, Лицензиат по своему усмотрению принимает решение о размещении произведений на Интернет-ресурсах.\n" +
                        "   Обязательства по выплате Лицензиару вознаграждения возникают у Лицензиата только в случае принятия Лицензиаром положительного решения\n" +
                        "   относительно размещения произведений, фактического размещения произведений на Интернет-ресурсах в соответствии с п.1.2. Договора, и\n" +
                        "   получения Лицензиатом от пользователей денежных сумм за получение доступа к произведениям на Интернет-ресурсах. Никаких иных выплат\n" +
                        "   за использование произведений Лицензиат не осуществляет, а Лицензиар не вправе требовать. В случае принятия Лицензиатом решения о\n" +
                        "   неразмещении произведений на Интернет-ресурсах, Договор расторгается Лицензиатом в одностороннем порядке в соответствии с п.15.4. Договора.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   5.1. При предоставлении произведений Лицензиар самостоятельно назначает стоимость возмездного использования произведений способами,\n" +
                        "   указанными в п. 1.2.2. Договора (далее — «Розничная цена»). Порядок назначения Лицензиаром розничной цены:\n" +
                        "   <a href=\"info/book-price\">verybook.org/info/book-price</a>\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   5.1.1. Назначенная Лицензиаром розничная цена понимается как минимальная цена возмездного использования произведения способами,\n" +
                        "   указанными в п. 1.2.2. Договора. Фактическая цена возмездного использования способами, указанными в п. 1.2.2. Договора, может отличаться\n" +
                        "   от розничной цены, но не должна быть ниже указанной Лицензиаром розничной цены.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   5.1.2. Лицензиар может по своему усмотрению (в том числе в целях продвижения произведений и привлечения пользователей) предоставлять Лицензиату\n" +
                        "   любые произведения по Договору безвозмездно (без права требовать какое-либо вознаграждение за такие произведения). В этом случае Лицензиат также\n" +
                        "   предоставляет пользователям произведения безвозмездно.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   5.1.3. Лицензиар вправе менять значение розничной цены в отношении уже предоставленных произведений (в том числе выбирая безвозмездное\n" +
                        "   предоставление произведения либо назначая розничную цену на произведение, ранее переданное безвозмездно).\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   5.2. Порядок расчета вознаграждения за возмездное использование произведений способами, указанными в п.п. 1.2.1., 1.2.1.1. Договора,\n" +
                        "   описан в Приложениях 1 и 2 к настоящему Договору соответственно.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   5.3. Лицензиат обязуется представлять Лицензиару отчет использования произведений за отчетный период. Указанный отчет должен быть создан\n" +
                        "   Лицензиатом и предоставлен Лицензиару в личном кабинете (личный кабинет Лицензиара создается Лицензиатом в случае принятия последним решения\n" +
                        "   об использовании произведений и размещения произведений на Интернет-ресурсах) последнего в течение 15 (пятнадцати) рабочих дней после окончания\n" +
                        "   каждого отчетного периода. Также Лицензиат обеспечивает Лицензиару в личном кабинете доступ к online (в режиме реального времени) статистике,\n" +
                        "   отражающей информацию об использовании произведений.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   5.4. Отчет за отчетный период считается принятым Лицензиаром, если от последнего в течение 5 (пяти) рабочих дней не поступило обоснованных претензий,\n" +
                        "   направленных через форму обратной связи, расположенную по адресу: <a href=\"feedback\">verybook.org/feedback</a>\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   5.5. Выплата вознаграждения производится Лицензиатом на основании заявки, поданной Лицензиаром. Процедура подачи заявки\n" +
                        "   описана по адресу <a href=\"info/author-payreceive\">verybook.org/info/author-payreceive</a>\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   5.6. Лицензиар может подать заявку на получение вознаграждения, если сумма текущей задолженности Лицензиата перед Лиценизаром составит\n" +
                        "   не менее 1000 рублей. Текущая задолженность Лицензиата перед Лицензиаром формируется посредством сложения всех невыплаченных сумм вознаграждения,\n" +
                        "   указанных в принятых Лицензиаром отчетах, и доступна в личном кабинете Лицензиара.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   5.7. Лицензиат производит выплату вознаграждения Лицензиару в течение 45 (сорока пяти) банковских дней после получения заявки от него.\n" +
                        "   Оплата вознаграждения Лицензиара осуществляется в рублях Российской Федерации. Денежные средства перечисляются Лицензиатом на банковскую карту\n" +
                        "   Лицензиара по реквизитам, указанным последним по адресу: <a href=\"author-pa\">verybook.org/author-pa</a>. Если Лицензиар указал неправильные\n" +
                        "   (неточные) реквизиты своей банковской карты или не сообщил своевременно об их изменениях, что могло привести к невозможности или несвоевременности\n" +
                        "   перечисления денежных средств, Лицензиат не несет никакой ответственности за такие невыплаты или задержки выплат указанных денежных средств.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   6. Во избежание каких-либо недоразумений, Стороны согласовали, что в случае, если в соответствии с законодательством государства, резидентом\n" +
                        "   которого является Лицензиар, вознаграждение Лицензиара является объектом налогообложения, ответственность за декларирование доходов и исчисление\n" +
                        "   налогов лежит на Лицензиаре, перечисление сумм налогов осуществляется Лицензиаром самостоятельно и за свой счет. Лицензиат не выступает налоговым\n" +
                        "   агентом и не передает сведения о доходах Лицензиара в налоговые и прочие государственные органы.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   7. Лицензиар соглашается с тем, что в целях исполнения Договора:\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   7.1. Лицензиат вправе в любой момент и на свое усмотрение (без получения дополнительного разрешения от Лицензиара) передавать полностью или\n" +
                        "   частично своим аффилированным лицам, своим партнерам, а равно как и любым иным третьим лицам, предоставляемые по Договору права (предоставлять\n" +
                        "   сублицензии) в отношении всех и любых произведений при обязательном соблюдении при этом условий настоящего Договора, устанавливающих размер\n" +
                        "   вознаграждения Лицензиара, а также сроки и порядок выплаты такого вознаграждения (если договор возмездный). Указанные условия означают, что\n" +
                        "   расчет и выплата вознаграждения Лицензиара по настоящему Договору при передаче Лицензиатом прав третьим лицам будет производиться Лицензиатом\n" +
                        "   в соответствии с условиями соответствующих Приложений к Договору.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   7.2. Лицензиат имеет право заключать по своему усмотрению партнерские (агентские либо иные) договоры с владельцами (администраторами)\n" +
                        "   соответствующих доменных имен либо с иными правомочными лицами, осуществляющими управление сайтами либо иными Интернет-ресурсами, на которых Лицензиат\n" +
                        "   осуществляет размещение произведений для использования способами, указанными в Договоре.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   7.3. Лицензиат по своему усмотрению определяет, размещать или не размещать произведения, а также по своему усмотрению определяет те Интернет-ресурсы,\n" +
                        "   на которых будут размещаться произведения, также Лицензиат может прекращать использование произведений на определенных Интернет-ресурсах и/или перемещать\n" +
                        "   произведения на иные Интернет-ресурсы.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   8. Лицензиар обязуется, заверяет и гарантирует:\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   8.1. Лицензиар является именно тем лицом, которое приняло условия Договора, при этом Лицензиар обязуется исполнить требования Лицензиата по\n" +
                        "   подтверждению (<a href=\"info/author-identification\">verybook.org/info/author-identification</a>).\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   8.2. Ни одно из произведений не является плагиатом (ни в целом, ни в какой-либо части), не содержит в себе клеветы, покушений на права третьих\n" +
                        "   лиц и не может представлять основания для обоснованного судебного иска.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   8.3. Лицензиар является обладателем исключительного права (правообладателем) на произведение, то есть произведение создано творческим трудом Лицензиара\n" +
                        "   (Лицензиар является автором произведения) и при этом на момент заключения Договора Лицензиар не осуществил передачу (отчуждение) исключительного права\n" +
                        "   на произведение иным лицам, либо он (Лицензиар) получил исключительное право на произведение по договору отчуждения либо иным законным путем, или он\n" +
                        "   (Лицензиар) имеет право использования произведения на основании лицензионного договора, заключенного с автором или иным правообладателем, с правом\n" +
                        "   предоставления лицензии Лицензиату на условиях настоящего Договора.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   8.4. Лицензиар имеет все права на заключение Договора, права на использование произведений способами, предусмотренными настоящим Договором, приобретены\n" +
                        "   им в соответствии с требованиями законодательства, ни одно из произведений не содержит в себе авторского материала, права на который не принадлежат Лицензиару.\n" +
                        "   В случае получения Лицензиатом каких-либо требований, претензий и/или исков в отношении произведений, используемых в рамках настоящего Договора, Лицензиар\n" +
                        "   обязан предоставлять Лицензиату все имеющиеся у него документы, подтверждающие права Лицензиара на такие произведения, в течение 3 (трех) рабочих дней\n" +
                        "   с момента получения требования Лицензиата.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   8.5. Лицензиар гарантирует, что использование произведений в соответствии с положениями Договора не влечет за собой нарушение каких-либо прав и\n" +
                        "   законных интересов третьих лиц.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   8.6. Лицензиар обязуется предоставлять Лицензиату полную и достоверную информацию о произведениях, в том числе информацию о названии произведения,\n" +
                        "   а также обо всех соавторах, в том числе правильно указывать их имена (псевдонимы).\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   8.6.1. Лицензиар самостоятельно разрешает вопросы, связанные с отношениями между соавторами произведений, в том числе в части распределения между\n" +
                        "   соавторами доходов от использования произведений на условиях Договора. Лицензиар гарантирует, что вознаграждение, указанное в п. 5 настоящего Договора,\n" +
                        "   полностью исчерпывает право Лицензиара на получение вознаграждения за использование произведений и что никакие дополнительные выплаты в адрес как\n" +
                        "   Лицензиара, так и любых третьих лиц (авторов, иных правообладателей) не должны производиться Лицензиатом.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   8.7. Лицензиар гарантирует и несет полную ответственность за соответствие содержания и оформления произведений требованиям применимого\n" +
                        "   законодательства (приведены по следующим адресам: <a href=\"info/book-requirements\">verybook.org/info/book-requirements</a>,\n" +
                        "   <a href=\"info/book-restrictions\">verybook.org/info/book-restrictions</a>)\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   8.8. Лицензиар гарантирует, что предоставляемые по Договору произведения в цифровых форматах не будут содержать вирусов, червей, троянов\n" +
                        "   или подобных вредоносных компонентов.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   8.9. Лицензиар обязуется предоставлять Лицензиату полную и достоверную информацию о себе: правильно указать свое имя (псевдоним), указываемое в произведении.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   8.10. Лицензиар обязуется точно и корректно указать адрес своей электронной почты. При этом Лицензиар несет полную ответственность за\n" +
                        "   правильность указанного им адреса электронной почты. Все сообщения, переданные Лицензиатом Лицензиару по указанному последним адресу его\n" +
                        "   электронной почты, считаются надлежаще доставленными Лицензиатом и полученными Лицензиаром. Если по каким-либо причинам адрес электронной\n" +
                        "   почты Лицензиара меняется, Лицензиар обязан незамедлительно сообщить об этом Лицензиату. До получения от Лицензиара сообщения об изменении\n" +
                        "   адреса его электронной почты Лицензиар направляет все сообщения по тому адресу электронной почты, который ранее указал Лицензиар.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   8.11. Лицензиар обязуется хранить в тайне и не разглашать третьим лицам логин и пароль для доступа к личному кабинету (если личный кабинет\n" +
                        "   был создан Лицензиатом для Лицензиара).\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   8.12. Лицензиар обязуется точно и корректно указывать свои банковские реквизиты, по которым Лицензиат осуществляет Лицензиару выплаты\n" +
                        "   вознаграждения за использование произведений (см. также п.5.7. Договора). В случае их изменения Лицензиар обязуется незамедлительно сообщить\n" +
                        "   об этом Лицензиату.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   8.13. В случае изменения паспортных и/или иных личных данных Лицензиара, сообщенных Лицензиату, Лицензиар обязуется\n" +
                        "   незамедлительно сообщить об этом Лицензиату.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   9. Лицензиат обязуется, заверяет и гарантирует:\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   9.1. Лицензиат имеет возможность осуществлять размещение произведений на Интернет-ресурсах в соответствии с Договором.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   9.2. Лицензиат обязуется использовать произведения в соответствии с Договором.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   9.3. Лицензиат обязуется соблюдать права Лицензиара на произведения.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   9.4. Лицензиат гарантирует, что не будет использовать произведения любым образом, кроме как теми способами, что прямо отражены в Договоре.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   10. Сторона, не исполнившая или ненадлежащим образом исполнившая обязательства по Договору, обязана возместить другой Стороне причиненные\n" +
                        "   таким неисполнением или ненадлежащим исполнением (обоснованные и документально подтвержденные) убытки.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   10.1. В случае нарушения условий Договора Сторона, чье право нарушено, вправе также потребовать признания права, восстановления положения,\n" +
                        "   существовавшего до нарушения права, а также прекращения действий, нарушающих право или создающих угрозу его нарушения.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   10.2. В случае нарушения одной из Сторон (далее — «Сторона-нарушитель») любого из положений по Договору, другая Сторона (далее — «потерпевшая Сторона»)\n" +
                        "   вправе отказаться от исполнения Договора как полностью, так и в любой его части по усмотрению потерпевшей Стороны и потребовать от «Стороны-нарушителя»\n" +
                        "   возмещения причиненных убытков (реального ущерба). Упущенная выгода не возмещается ни при каких обстоятельствах.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   10.3. В случае предъявления Лицензиату третьими лицами законных и обоснованных имущественных требований в связи с использованием произведений,\n" +
                        "   Лицензиар обязуется своими силами и за свой счет урегулировать с указанными третьими лицами упомянутые требования.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   10.4. Лицензиар заявляет и гарантирует, что он (Лицензиар) урегулирует все и любые претензии (включая, но не ограничиваясь, судебные иски,\n" +
                        "   административное преследование, пр.) третьих лиц по всем и любым вопросам, связанным с использованием произведений по настоящему Договору,\n" +
                        "   самостоятельно и за свой счет, в случае возникновения таковых претензий. При этом Лицензиар приложит все возможные усилия для урегулирования\n" +
                        "   этих претензий без привлечения Лицензиата. В случае привлечения Лицензиата (досудебное, судебное, иные разбирательства) Лицензиар примет все\n" +
                        "   необходимые меры для освобождения Лицензиата от необходимости прямого участия в этих разбирательствах (вступление по своей инициативе в дело\n" +
                        "   третьим лицом на стороне Лицензиата, непрепятствование рассмотрению дела с участием Лицензиара в качестве соответчика, надлежащего\n" +
                        "   ответчика — в случае принятия судом соответствующего постановления, и т.д.). В случае возникновения у Лицензиата убытков, связанных с вышеизложенным\n" +
                        "   (включая все возможные возмещения, компенсации, штрафы, судебные расходы и издержки, пр.), Лицензиар обязуется возместить их Лицензиату по\n" +
                        "   требованию последнего в срок, не превышающий 10 (десять) рабочих дней с момента получения соответствующего требования от Лицензиата.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   11. Ограничение ответственности Лицензиата.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   11.1. Лицензиат не гарантирует бесперебойную и правильную работу Интернет-ресурсов, которые работают в режиме «как есть», без каких-либо\n" +
                        "   прямых или косвенных гарантий того, что Интернет-ресурсы могут подходить или не подходить для конкретных целей использования.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   11.2. Лицензиар уведомлен и согласен с тем, что Лицензиат не может гарантировать получения Лицензиаром дохода от использования\n" +
                        "   произведений в желаемом Лицензиаром объеме, так как это непосредственно зависит от интереса к произведениям со стороны пользователей.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   11.3. Ни при каких обстоятельствах Лицензиат не несет ответственности за взлом и/или использование третьими лицами адреса электронной\n" +
                        "   почты Лицензиара, а также за неработоспособность почтового ящика электронной почты Лицензиара.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   11.4. Ни при каких обстоятельствах Лицензиат не несет ответственности за использование третьими лицами логина и пароля доступа к личному кабинету.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   11.5. Объем ответственности Лицензиата ограничивается суммами начисленного Лицензиару вознаграждения за использование произведений в\n" +
                        "   соответствии с разделом 5 Договора.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   12. Любая из Сторон освобождается от ответственности за неисполнение или ненадлежащее исполнение своих обязанностей по настоящему Договору\n" +
                        "   в случае действия обстоятельств непреодолимой силы.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   12.1. Под обстоятельствами непреодолимой силы понимаются обстоятельства, имеющие чрезвычайный, неотвратимый и непредвиденный характер,\n" +
                        "   исключающие или объективно препятствующие исполнению настоящего Договора, наступление которых Стороны не могли предвидеть и предотвратить\n" +
                        "   разумными мерами. Для целей настоящего Договора к ним также относятся: сбои в телекоммуникационных и энергетических сетях, действия вредоносных\n" +
                        "   программ (вирусов), а также недобросовестные действия третьих лиц, выразившиеся в несанкционированном доступе и/или выведении из строя программного\n" +
                        "   и/или аппаратного комплекса одной из Сторон, если Стороны предприняли необходимые и достаточные меры для их предотвращения.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   12.2. Сторона, ссылающаяся на действие обстоятельств непреодолимой силы, должна в случае технической возможности письменно уведомить другую сторону\n" +
                        "   о наступлении таких обстоятельств в течение 5 (пяти) календарных дней.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   12.3. Если Сторона, ссылающаяся на действие обстоятельств непреодолимой силы, не уведомила другую сторону о наступлении таких обстоятельств\n" +
                        "   в порядке, предусмотренном выше, такая Сторона утрачивает право ссылаться на действие вышеуказанных обстоятельств в случае неисполнения своих\n" +
                        "   обязанностей по настоящему Договору.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   Если обстоятельства непреодолимой силы действуют более 3-х месяцев подряд, каждая из Сторон имеет право отказаться от настоящего Договора.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   13. Стороны признают, что любая информация, передаваемая ими друг другу в рамках настоящего Договора (в том числе условия расчета и выплаты\n" +
                        "   вознаграждения), является коммерческой тайной, за исключением информации, не признаваемой таковой в силу применимого законодательства.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   13.1. Стороны не вправе разглашать эту информацию третьим сторонам без письменного согласия Стороны-владельца информации, за исключением\n" +
                        "   случаев, предусмотренных применимым законодательством.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   13.2. За разглашение конфиденциальной информации Стороны несут ответственность в порядке, предусмотренном применимым законодательством.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   13.3. Согласие с настоящим Договором автоматически означает согласие Лицензиара на предоставление своей персональной информации (персональных\n" +
                        "   данных) Лицензиату, его аффилированным лицам, партнерам и иным лицам на условиях настоящего Договора. При осуществлении действий по регистрации\n" +
                        "   и подтверждению (<a href=\"info/author-identification\">verybook.org/info/author-identification</a>) Лицензиар сообщает Лицензиату свои\n" +
                        "   персональные данные: имя и (или) псевдоним как автора произведения для публикации, а также фамилию, имя, отчество, данные удостоверения личности,\n" +
                        "   адрес электронной почты, номер мобильного телефона, платежные реквизиты. Предоставляя свои персональные данные, Лицензиар соглашается на\n" +
                        "   их хранение и обработку Лицензиатом в течение неопределенного срока в целях исполнения Лицензиатом своих обязательств перед Лицензиаром по Договору.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   13.4. Для исполнения своих обязательств по Договору Лицензиат собирает и хранит только необходимые персональные данные Лицензиара.\n" +
                        "   Лицензиат может использовать персональные данные Лицензиара для его идентификации, обратной связи с Лицензиаром. Лицензиат при обработке\n" +
                        "   персональных данных принимает необходимые и достаточные организационные и технические меры для защиты персональных данных от неправомерного доступа к ним.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   13.5. Лицензиат вправе передать персональную информацию Лицензиара третьим лицам только в случаях, если Лицензиар выразил свое согласие на\n" +
                        "   такие действия, передача необходима для исполнения Лицензиатом своих обязательств перед Лицензиаром или необходимость такой передачи\n" +
                        "   предусмотрена применимым законодательством (в том числе в случаях, связанных с нарушением Лицензиаром условий Договора). Не считается\n" +
                        "   нарушением предоставление Лицензиатом информации его аффилированными лицам, партнерам и иным лицам, действующим на основании договоров\n" +
                        "   с Лицензиатом, для исполнения условий Договора. Не считается нарушением обязательств передача информации в соответствии с требованиями\n" +
                        "   применимого законодательства.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   14. Любые возникшие споры и разногласия, вытекающие из/или в связи с настоящим Договором, решаются путем переговоров Сторон. Если эти споры\n" +
                        "   и разногласия не могут быть разрешены путем переговоров Сторон, они подлежат рассмотрению в соответствующем компетентном суде.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   15. Договор вступает в силу с момента его заключения (акцептования Лицензиаром) и действует в течение одного (1) года («Основной Срок»).\n" +
                        "   По истечении вышеуказанного срока Договор будет автоматически пролонгироваться каждый раз на один (1) год («Дополнительный Срок»), если\n" +
                        "   ни одна из сторон не заявит о своем желании его расторгнуть в следующем порядке:\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   15.1. Лицензиар вправе в любой момент по своему усмотрению расторгнуть Договор, как полностью, так и в части использования отдельного\n" +
                        "   произведения, уведомив об этом Лицензиата не позднее чем за 30 (тридцать) календарных дней до даты такого расторжения.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   15.2. Лицензиат вправе в любой момент по своему усмотрению расторгнуть Договор, как полностью, так и в части использования отдельного\n" +
                        "   произведения, уведомив об этом Лицензиата не позднее чем за 30 (тридцать) календарных дней до даты такого расторжения.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   15.3. Лицензиат вправе немедленно в одностороннем порядке приостановить действие Договора или расторгнуть Договор в случаях:\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   — обнаружения нарушения Лицензиаром своих обязательств, заверений и гарантий в соответствии с п.8 Договора;\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   — поступления в адрес Лицензиата любых претензий, требований, исков со стороны третьих лиц (включая органы власти) относительно\n" +
                        "   неправомерности использования произведений;\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   — принятия Лицензиатом решения о неразмещении произведений на Интернет-ресурсах;\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   В указанных случаях Договор считается расторгнутым с момента направления Лицензиатом Лицензиару соответствующего уведомления по\n" +
                        "   адресу электронной почты, указанному Лицензиаром.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   16. Лицензиат вправе время от времени вносить изменения/дополнения в текст Договора. Такие изменения/дополнения вступают в силу и\n" +
                        "   становятся обязательными для Сторон с момента размещения Лицензиатом обновленной версии Договора. При этом Лицензиат гарантирует\n" +
                        "   соблюдение всех взятых на себя ранее (да даты вступления в силу таких изменений/дополнений) обязательств перед Лицензиаром в\n" +
                        "   отношении размещенных произведений, включая порядок расчета, начисления и выплаты Лицензиару вознаграждения за использование этих произведений.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   17. Стороны договорились осуществлять связь в рамках исполнения Договора посредством электронной почты (адрес электронной почты Лицензиата,\n" +
                        "   используемый для всех и любых сообщений в рамках исполнения настоящего Договора: <a href=\"mailto:editor@verybook.org\">editor@verybook.org</a>),\n" +
                        "   а также путем размещения Лицензиатом информации в личном кабинете Лицензиара (в случае его создания Лицензиатом в соответствии с п.5.3. Договора).\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   18. В случае, если какие-либо положения Договора в какой-либо части будут считаться недействительными или не имеющими силу, это не повлияет\n" +
                        "   на действительность остальных положений при условии, что Договор может исполняться и без таких недействительных положений.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   19. Если Сторона не воспользовалась (или воспользовалась не в полной мере) каким-либо правом, данным настоящим Договором, это не будет\n" +
                        "   толковаться как отказ этой Стороны воспользоваться таким правом в будущем и/или в полной мере.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   20. Договор, включая Приложения к нему, а также любые их изменения, составляет полный объем договоренностей между Сторонами в отношении предмета Договора.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   21. Договор регулируется английским правом.\n" +
                        "</p>\n" +
                        "\n" +
                        "<h4>Приложение № 1</h4>\n" +
                        "<p>\n" +
                        "   Компания Верибук (Verybook) («Лицензиат»), с одной стороны, и Вы («Лицензиар»), с другой стороны (далее — «Стороны»), составили и подписали настоящее\n" +
                        "   Приложение к Договору, определяющее размеры вознаграждения Лицензиара за использование Лицензиатом произведений способами, указанными в п.п. 1.1, 1.2.1\n" +
                        "   Договора путем записи произведений в память ЭВМ в целях размещения на Интернет-ресурсах согласно Договору и показа (демонстрации) воспроизведенного\n" +
                        "   произведения с помощью технических средств пользователям для чтения в режиме реального времени («онлайн»).\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   1. Перечень произведений, размеры ставок.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   1.1. Наименование, количество и прочая информация (за исключением условий расчета вознаграждения Лицензиара) в отношении произведений, используемых\n" +
                        "   по настоящему Приложению, указываются в п.1 Договора.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   1.2. Размер вознаграждения, подлежащего перечислению Лицензиатом Лицензиару за использование каждого произведения, рассчитывается путем\n" +
                        "   умножения количества показов страниц (как определено ниже), на ставку (как определено ниже) и деления на 1000 (одну тысячу).\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   1.3. Страница — фрагмент электронной копии произведения, доступный пользователю для чтения в режиме «онлайн», объемом не более 30000 знаков.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   1.4. Ставка за 1000 показов страниц должна быть не менее 30 рублей.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   1.5. Размер ставки может изменяться Лицензиатом (в сторону увеличения относительно 30 рублей) самостоятельно.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   2. Статистика\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   2.1. Лицензиат предоставляет Лицензиару круглосуточный доступ к статистике использования произведений, размещенной в личном кабинете Лицензиара.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   2.2. Лицензиат обязуется обеспечивать техническую возможность получения Лицензиаром доступа к указанной статистике в течение всего периода действия Договора.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   3. Заключительные положения\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   3.1. Настоящее Приложение является неотъемлемой частью Договора.\n" +
                        "</p>\n" +
                        "\n" +
                        "<h4>Приложение № 2</h4>\n" +
                        "<p>\n" +
                        "   Компания Верибук (Verybook) («Лицензиат»), с одной стороны, и Вы («Лицензиар»), с другой стороны (далее — «Стороны»), составили и подписали настоящее\n" +
                        "   Приложение к Договору, определяющее размеры вознаграждения Лицензиара за использование Лицензиатом произведений способами, указанными в п.1.1, 1.2.1.1.\n" +
                        "   Договора путем записи произведений в память ЭВМ в целях размещения на Интернет-ресурсах согласно Договору и использования произведений по модели «Подписка»:\n" +
                        "   предоставление пользователям возмездного доступа к каталогу в течение определенного периода времени (пользователь, оплативший подписку, имеет\n" +
                        "   возможность читать в режиме «онлайн» любые выбранные им произведения из каталога в период действия этой подписки).\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   1. Перечень Произведений. Размер вознаграждения.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   1.1. Наименование, количество, прочая информация (за исключением условий расчета вознаграждения Лицензиара) в отношении произведений,\n" +
                        "   используемых по настоящему Приложению, указываются в п.1 Договора.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   1.2. При использовании произведений по модели «Подписка» размер вознаграждения, подлежащего перечислению Лицензиатом Лицензиару\n" +
                        "   рассчитывается как процент, указанный в п.6 Договора, от величины, образованной от доли произведений Лицензиара в каждой подписке\n" +
                        "   (% от общего количества произведений, прочитанных пользователем, оплатившим подписку), умноженной на стоимость подписки (стоимость\n" +
                        "   подписки определяется Лицензиатом).\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   2. Статистика\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   2.1. Лицензиат предоставляет Лицензиару круглосуточный доступ к статистике использования произведений, размещенной в личном кабинете Лицензиара.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   2.2. Лицензиат обязуется обеспечивать техническую возможность получения Лицензиаром доступа к указанной статистике в течение всего\n" +
                        "   периода действия Договора.\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   3. Заключительные положения\n" +
                        "</p>\n" +
                        "<p>\n" +
                        "   3.1. Настоящее Приложение является неотъемлемой частью Договора.\n" +
                        "</p>\n";
                infoBody = infoBody1 + infoBody2;
                break;
            default:
                throw new NotFoundException("Такой информационной страницы не существует.");
        }

        model.addAttribute("infoHeader", infoHeader);
        model.addAttribute("infoBody", infoBody);
        return "vb/info";
    }

}