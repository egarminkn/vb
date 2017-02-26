package org.verygroup.verybook.web.author;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import org.verygroup.verybook.BookType;
import org.verygroup.verybook.dto.BookItem;
import org.verygroup.verybook.dto.RatingItem;
import org.verygroup.verybook.model.LikesDislikesInfo;
import org.verygroup.verybook.model.social.UserConnection;
import org.verygroup.verybook.service.UserBooksService;
import org.verygroup.verybook.web.util.*;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;
import java.time.LocalDate;
import java.util.LinkedList;
import java.util.List;

@Controller
public class AuthorController {

    @Autowired
    private UserBooksService userBooksService;

    @Autowired
    private SocialControllerUtil socialUtil;
    @Autowired
    private ToSearchBookUtil searchBookUtil;
    @Autowired
    private SpecEbookUtil specEbookUtil;
    @Autowired
    private SpecAudiobookUtil specAudiobookUtil;

    @GetMapping("/author/{id}")
    public String author(@PathVariable("id") String authorId,
                         HttpServletRequest request, Principal currentUser, Model model) {
        socialUtil.setModel(request, currentUser, model);
//        searchBookUtil.setModel(request, currentUser, model);
//        specEbookUtil.setModel(request, currentUser, model);
//        specAudiobookUtil.setModel(request, currentUser, model);

        String login = null;
        if (model.containsAttribute(SocialControllerUtil.CURRENT_USER_CONNECTION)) { // если юзер залогинился (через одну из соц.сетей)
            UserConnection userConnection = (UserConnection) model.asMap().get(SocialControllerUtil.CURRENT_USER_CONNECTION);

            // FIXME временно сделал логин по имени соц.сети
            //login = userConnection.getProviderId() + "-" + userConnection.getProviderUserId();
            login = userConnection.getProviderId();
        }

        // >>> FIXME заглушка. Нужно сделать выборку из БД по authorId
        List<RatingItem> ratingItems = new LinkedList<>();
        ratingItems.add(new RatingItem(true, 19, "в общем рейтинге"));
        ratingItems.add(new RatingItem(false, 1, "среди Literary"));
        ratingItems.add(new RatingItem(true, 4, "среди Genre Fiction"));
        model.addAttribute("ratingsItems", ratingItems);
        model.addAttribute("ratingsTitle", "Рейтинг автора");

        List<BookItem> bookItems = new LinkedList<>();
        LikesDislikesInfo likesDislikesInfo = null;
        likesDislikesInfo = userBooksService.getLikesDislikesInfoBy(login, BookType.EBOOK, "id1");
        bookItems.add(new BookItem("id1",
                                   "id1",
                                   9.7,
                                   likesDislikesInfo.getGrade(),
                                   likesDislikesInfo.isLikesLink(),
                                   likesDislikesInfo.isDislikesLink(),
                                   1022,
                                   51,
                                   "20",
                                   "руб",
                                   LocalDate.of(2016, 1, 26),
                                   40,
                                   "А.А. Иванов",
                                   "Древняя Русь в картинках",
                                   "resources/vb/img/tmp/book-1.jpg",
                                   true));
        likesDislikesInfo = userBooksService.getLikesDislikesInfoBy(login, BookType.EBOOK, "id2");
        bookItems.add(new BookItem("id2",
                                   "id2",
                                   8.8,
                                   likesDislikesInfo.getGrade(),
                                   likesDislikesInfo.isLikesLink(),
                                   likesDislikesInfo.isDislikesLink(),
                                   1022,
                                   51,
                                   "20",
                                   "руб",
                                   LocalDate.of(2016, 1, 2),
                                   1,
                                   "А.А. Иванов",
                                   "Древняя Русь в картинках",
                                   "resources/vb/img/tmp/book-2.jpg",
                                   true));
        likesDislikesInfo = userBooksService.getLikesDislikesInfoBy(login, BookType.EBOOK, "id3");
        bookItems.add(new BookItem("id3",
                                   "id3",
                                   7.4,
                                   likesDislikesInfo.getGrade(),
                                   likesDislikesInfo.isLikesLink(),
                                   likesDislikesInfo.isDislikesLink(),
                                   1022,
                                   51,
                                   "Бесплатно",
                                   "",
                                   LocalDate.of(2016, 1, 26),
                                   4,
                                   "А.А. Иванов",
                                   "Древняя Русь в картинках",
                                   "resources/vb/img/tmp/book-3.jpg",
                                   true));
        likesDislikesInfo = userBooksService.getLikesDislikesInfoBy(login, BookType.EBOOK, "id4");
        bookItems.add(new BookItem("id4",
                                   "id4",
                                   0.4,
                                   likesDislikesInfo.getGrade(),
                                   likesDislikesInfo.isLikesLink(),
                                   likesDislikesInfo.isDislikesLink(),
                                   1022,
                                   51,
                                   "20",
                                   "руб",
                                   LocalDate.of(2016, 1, 26),
                                   9,
                                   "А.А. Иванов",
                                   "Древняя Русь в картинках",
                                   "resources/vb/img/tmp/book-4.jpg",
                                   true));
        likesDislikesInfo = userBooksService.getLikesDislikesInfoBy(login, BookType.EBOOK, "id5");
        bookItems.add(new BookItem("id5",
                                   "id5",
                                   2.7,
                                   likesDislikesInfo.getGrade(),
                                   likesDislikesInfo.isLikesLink(),
                                   likesDislikesInfo.isDislikesLink(),
                                   1022,
                                   51,
                                   "20",
                                   "руб",
                                   LocalDate.of(2016, 1, 26),
                                   21,
                                   "А.А. Иванов",
                                   "Древняя Русь в картинках",
                                   "resources/vb/img/tmp/book-5.jpg",
                                   true));
        likesDislikesInfo = userBooksService.getLikesDislikesInfoBy(login, BookType.EBOOK, "id6");
        bookItems.add(new BookItem("id6",
                                   "id6",
                                   4.2,
                                   likesDislikesInfo.getGrade(),
                                   likesDislikesInfo.isLikesLink(),
                                   likesDislikesInfo.isDislikesLink(),
                                   1022,
                                   51,
                                   "Бесплатно",
                                   "",
                                   LocalDate.of(2016, 1, 26),
                                   3,
                                   "А.А. Иванов",
                                   "Древняя Русь в картинках",
                                   "resources/vb/img/tmp/book-3.jpg",
                                   true));
        model.addAttribute("bookItems", bookItems);
        // <<<

        return "vb/author";
    }

}