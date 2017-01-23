package org.verygroup.verybook.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class VerybookRootController {

    @GetMapping("/author")
    public String author() {
        return "vb/author";
    }

    @GetMapping("/author-pa")
    public String authorPa() {
        return "vb/author-pa";
    }

    @GetMapping("/author-rating")
    public String authorRating() {
        return "vb/author-rating";
    }

    @GetMapping("/book")
    public String book() {
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