package org.verygroup.verybook.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

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
import org.verygroup.verybook.dto.searchbook.AudiobookAuthor;
import org.verygroup.verybook.dto.searchbook.AudiobookAuthorType;
import org.verygroup.verybook.dto.searchbook.AudiobookItem;
import org.verygroup.verybook.dto.searchbook.EbookItem;

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

        return "vb/search-book";
    }

    @GetMapping("/shop-cart")
    public String shopCart() {
        return "vb/shop-cart";
    }

}