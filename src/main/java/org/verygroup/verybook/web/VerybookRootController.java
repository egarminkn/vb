package org.verygroup.verybook.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.LinkedList;
import java.util.List;

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
    public String index() {
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