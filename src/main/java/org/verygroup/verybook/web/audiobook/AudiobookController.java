package org.verygroup.verybook.web.audiobook;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import org.verygroup.verybook.BookType;
import org.verygroup.verybook.RatingSubcategory;
import org.verygroup.verybook.dto.BookItem;
import org.verygroup.verybook.dto.RatingItem;
import org.verygroup.verybook.dto.book.ReviewItem;
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
public class AudiobookController {

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

    @GetMapping("/audiobook/{id}")
    public String audiobook(@PathVariable("id") String audiobookId,
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

        // >>> FIXME заглушка. Сделать выборку из БД для audiobookId
        List<RatingItem> ratingItems = new LinkedList<>();
        ratingItems.add(new RatingItem(true, 19, null));
        ratingItems.add(new RatingItem(false, 1, RatingSubcategory.SOCIAL));
        ratingItems.add(new RatingItem(true, 4, RatingSubcategory.PARODY));
        model.addAttribute("ratingsItems", ratingItems);

        List<BookItem> bookItems = new LinkedList<>();
        LikesDislikesInfo likesDislikesInfo = null;
        likesDislikesInfo = userBooksService.getLikesDislikesInfoBy(login, BookType.EBOOK, "id1");
        bookItems.add(new BookItem("id1",
                                   "id1",
                                   0.5,
                                   likesDislikesInfo.getGrade(),
                                   likesDislikesInfo.isLikesLink(),
                                   likesDislikesInfo.isDislikesLink(),
                                   12000,
                                   12000,
                                   "20",
                                   "руб",
                                   LocalDate.of(2016, 1, 26),
                                   40,
                                   "А.А. Иванов",
                                   "Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие",
                                   "resources/vb/img/tmp/book-1.jpg",
                                   false));
        likesDislikesInfo = userBooksService.getLikesDislikesInfoBy(login, BookType.EBOOK, "id2");
        bookItems.add(new BookItem("id2",
                                   "id2",
                                   1.2,
                                   likesDislikesInfo.getGrade(),
                                   likesDislikesInfo.isLikesLink(),
                                   likesDislikesInfo.isDislikesLink(),
                                   1022,
                                   51,
                                   "20",
                                   "руб",
                                   LocalDate.of(2016, 1, 26),
                                   1,
                                   "А.А. Иванов",
                                   "Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие",
                                   "resources/vb/img/tmp/book-2.jpg",
                                   false));
        likesDislikesInfo = userBooksService.getLikesDislikesInfoBy(login, BookType.EBOOK, "id3");
        bookItems.add(new BookItem("id3",
                                   "id3",
                                   1.7,
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
                                   "Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие",
                                   "resources/vb/img/tmp/book-3.jpg",
                                   false));
        likesDislikesInfo = userBooksService.getLikesDislikesInfoBy(login, BookType.EBOOK, "id4");
        bookItems.add(new BookItem("id4",
                                   "id4",
                                   2.2,
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
                                   "Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие",
                                   "resources/vb/img/tmp/book-4.jpg",
                                   false));
        likesDislikesInfo = userBooksService.getLikesDislikesInfoBy(login, BookType.EBOOK, "id5");
        bookItems.add(new BookItem("id5",
                                   "id5",
                                   3.2,
                                   likesDislikesInfo.getGrade(),
                                   likesDislikesInfo.isLikesLink(),
                                   likesDislikesInfo.isDislikesLink(),
                                   1022,
                                   51,
                                   "20",
                                   "руб",
                                   LocalDate.of(2016, 1, 26),
                                   110999,
                                   "Константин Галактионович Константинопольский",
                                   "Волшебный двурог, или Правдивая история небывалых приключений нашего отважного друга Ильи Алексеевича Комова в неведомой стране, где правят: Догадка, Усидчивость, Находчивость, Терпение, Остроумие и Трудолюбие",
                                   "resources/vb/img/tmp/book-5.jpg",
                                   false));
        likesDislikesInfo = userBooksService.getLikesDislikesInfoBy(login, BookType.EBOOK, "id6");
        bookItems.add(new BookItem("id6",
                                   "id6",
                                   4.1,
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
                                   false));
        likesDislikesInfo = userBooksService.getLikesDislikesInfoBy(login, BookType.EBOOK, "id7");
        bookItems.add(new BookItem("id7",
                                   "id7",
                                   4.9,
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
                                   false));
        likesDislikesInfo = userBooksService.getLikesDislikesInfoBy(login, BookType.EBOOK, "id8");
        bookItems.add(new BookItem("id8",
                                   "id8",
                                   5.5,
                                   likesDislikesInfo.getGrade(),
                                   likesDislikesInfo.isLikesLink(),
                                   likesDislikesInfo.isDislikesLink(),
                                   1022,
                                   51,
                                   "20",
                                   "руб",
                                   LocalDate.of(2016, 1, 26),
                                   1,
                                   "А.А. Иванов",
                                   "Древняя Русь в картинках",
                                   "resources/vb/img/tmp/book-2.jpg",
                                   false));
        likesDislikesInfo = userBooksService.getLikesDislikesInfoBy(login, BookType.EBOOK, "id9");
        bookItems.add(new BookItem("id9",
                                   "id9",
                                   6.2,
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
                                   false));
        likesDislikesInfo = userBooksService.getLikesDislikesInfoBy(login, BookType.EBOOK, "id10");
        bookItems.add(new BookItem("id10",
                                   "id10",
                                   6.8,
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
                                   false));
        likesDislikesInfo = userBooksService.getLikesDislikesInfoBy(login, BookType.EBOOK, "id11");
        bookItems.add(new BookItem("id11",
                                   "id11",
                                   7.5,
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
                                   false));
        likesDislikesInfo = userBooksService.getLikesDislikesInfoBy(login, BookType.EBOOK, "id12");
        bookItems.add(new BookItem("id12",
                                   "id12",
                                   8.1,
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
                                   false));
        likesDislikesInfo = userBooksService.getLikesDislikesInfoBy(login, BookType.EBOOK, "id13");
        bookItems.add(new BookItem("id13",
                                   "id13",
                                   8.9,
                                   likesDislikesInfo.getGrade(),
                                   likesDislikesInfo.isLikesLink(),
                                   likesDislikesInfo.isDislikesLink(),
                                   1022,
                                   51,
                                   "20",
                                   "руб",
                                   LocalDate.of(2016, 1, 26),
                                   1,
                                   "А.А. Иванов",
                                   "Древняя Русь в картинках",
                                   "resources/vb/img/tmp/book-2.jpg",
                                   false));
        likesDislikesInfo = userBooksService.getLikesDislikesInfoBy(login, BookType.EBOOK, "id14");
        bookItems.add(new BookItem("id14",
                                   "id14",
                                   9.3,
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
                                   false));
        likesDislikesInfo = userBooksService.getLikesDislikesInfoBy(login, BookType.EBOOK, "id15");
        bookItems.add(new BookItem("id15",
                                   "id15",
                                   10,
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
                                   false));
        model.addAttribute("bookItems", bookItems);

        List<ReviewItem> reviewItems = new LinkedList<>();
        reviewItems.add(new ReviewItem("Good book for beginners, but daily or even weekly players look elsewhere", "BruceInCola", LocalDate.of(2014, 12, 26), "The first edition of this book helped me learn Minecraft well enough to keep up with my grandson for a little while, at least. He moved through his Minecraft phase and on to online First Person Shooters all too fast. So now Minecraft in Creative mode is where I spend my time and that, incidentally is my only criticism of this otherwi excellent guide: it is focused primarily on Surviva mode, which I don’t find to be fun. But kids love the kill-r aspect of Survival mode and kids are who this book is written for Fortunately nearly all the information i s applicable t all Minecraft modes. (By the way, you can set the mayhem to low in Survival mode, but I just don’t care for the competitive aspect. I’d rather spend all my time creating new worl"));
        reviewItems.add(new ReviewItem("Good book for beginners, but daily or even weekly players look elsewhere", "BruceInCola", LocalDate.of(2014, 12, 26), "The first edition of this book helped me learn Minecraft well enough to keep up with my grandson for a little while, at least. He moved through his Minecraft phase and on to online First Person Shooters all too fast. So now Minecraft in Creative mode is where I spend my time and that, incidentally is my only criticism of this otherwi excellent guide: it is focused primarily on Surviva mode, which I don’t find to be fun. But kids love the kill-r aspect of Survival mode and kids are who this book is written for Fortunately nearly all the information i s applicable t all Minecraft modes. (By the way, you can set the mayhem to low in Survival mode, but I just don’t care for the competitive aspect. I’d rather spend all my time creating new worl"));
        reviewItems.add(new ReviewItem("Good book for beginners, but daily or even weekly players look elsewhere", "BruceInCola", LocalDate.of(2014, 12, 26), "The first edition of this book helped me learn Minecraft well enough to keep up with my grandson for a little while, at least. He moved through his Minecraft phase and on to online First Person Shooters all too fast. So now Minecraft in Creative mode is where I spend my time and that, incidentally is my only criticism of this otherwi excellent guide: it is focused primarily on Surviva mode, which I don’t find to be fun. But kids love the kill-r aspect of Survival mode and kids are who this book is written for Fortunately nearly all the information i s applicable t all Minecraft modes. (By the way, you can set the mayhem to low in Survival mode, but I just don’t care for the competitive aspect. I’d rather spend all my time creating new worl"));
        reviewItems.add(new ReviewItem("Good book for beginners, but daily or even weekly players look elsewhere", "BruceInCola", LocalDate.of(2014, 12, 26), "The first edition of this book helped me learn Minecraft well enough to keep up with my grandson for a little while, at least. He moved through his Minecraft phase and on to online First Person Shooters all too fast. So now Minecraft in Creative mode is where I spend my time and that, incidentally is my only criticism of this otherwi excellent guide: it is focused primarily on Surviva mode, which I don’t find to be fun. But kids love the kill-r aspect of Survival mode and kids are who this book is written for Fortunately nearly all the information i s applicable t all Minecraft modes. (By the way, you can set the mayhem to low in Survival mode, but I just don’t care for the competitive aspect. I’d rather spend all my time creating new worl"));
        model.addAttribute("reviewItems", reviewItems);
        // <<<

        model.addAttribute("ratingsTitle", "Рейтинг аудиокниги");
        return "vb/audiobook";
    }

}