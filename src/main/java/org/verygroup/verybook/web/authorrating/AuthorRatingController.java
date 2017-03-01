package org.verygroup.verybook.web.authorrating;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.verygroup.verybook.RatingCategory;
import org.verygroup.verybook.RatingSubcategory;
import org.verygroup.verybook.dto.authorrating.RatingItem;
import org.verygroup.verybook.web.util.*;

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
    @Autowired
    private SpecEbookUtil specEbookUtil;
    @Autowired
    private SpecAudiobookUtil specAudiobookUtil;

    @GetMapping("/author-rating")
    public String authorRating(@RequestParam(required = false) RatingSubcategory subcategory,
                               HttpServletRequest request,
                               Principal currentUser,
                               Model model) {
        socialUtil.setModel(request, currentUser, model);
//        searchBookUtil.setModel(request, currentUser, model);
//        specEbookUtil.setModel(request, currentUser, model);
//        specAudiobookUtil.setModel(request, currentUser, model);

        model.addAttribute("requestSubcategory", subcategory);

        // >>> FIXME заглушка. Нужно сделать выборку из БД
        List<RatingItem> ratingItems = new LinkedList<>();
        ratingItems.add(new RatingItem(RatingCategory.EDUCATIONAL));
        ratingItems.add(new RatingItem(RatingCategory.CHILDREN));
        ratingItems.add(new RatingItem(RatingCategory.BUSINESS));
        ratingItems.add(new RatingItem(RatingCategory.FICTION));
        ratingItems.add(new RatingItem(RatingCategory.NON_FICTION));
        ratingItems.add(new RatingItem(RatingCategory.GENRES));
        model.addAttribute("ratingItems", ratingItems);
        // <<<

        return "vb/author-rating";
    }

}