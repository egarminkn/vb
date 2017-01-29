package org.verygroup.verybook.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.time.LocalDate;
import java.util.LinkedList;
import java.util.List;

import org.verygroup.verybook.dto.BookItem;
import org.verygroup.verybook.dto.RatingItem;

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
        bookItems.add(new BookItem(1022,51, "20", "руб", LocalDate.of(2016, 1, 26), 1, "А.А. Иванов", "Древняя Русь в картинках", "resources/vb/img/tmp/book-2.jpg", true));
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
        return "vb/author-pa";
    }

    @GetMapping("/author-rating")
    public String authorRating() {
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