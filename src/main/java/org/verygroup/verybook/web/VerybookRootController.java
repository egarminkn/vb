package org.verygroup.verybook.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.time.LocalDate;
import java.util.LinkedList;
import java.util.List;

import org.verygroup.verybook.BookGenre;
import org.verygroup.verybook.dto.BookItem;
import org.verygroup.verybook.dto.RatingItem;
import org.verygroup.verybook.dto.authorpa.WrittenBookAction;
import org.verygroup.verybook.dto.authorpa.WrittenBookActionType;
import org.verygroup.verybook.dto.authorpa.WrittenBookRow;
import org.verygroup.verybook.dto.authorpa.ReadBookRow;
import org.verygroup.verybook.BookFormat;
import org.verygroup.verybook.dto.authorrating.AuthorItem;

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

        return "vb/index";
    }

    @GetMapping("/index-2")
    public String index2() {
        return "vb/index-2";
    }

    @GetMapping("/search-book")
    public String searchBook() {
        return "vb/search-book";
    }

    @GetMapping("/shop-cart")
    public String shopCart() {
        return "vb/shop-cart";
    }

}