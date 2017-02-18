package org.verygroup.verybook.web.searchbook;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.util.StringUtils;

import org.verygroup.verybook.AudiobookFormat;
import org.verygroup.verybook.BookFormat;
import org.verygroup.verybook.BookGenre;
import org.verygroup.verybook.dto.searchbook.*;
import org.verygroup.verybook.web.util.SocialControllerUtil;

import java.security.Principal;
import java.time.LocalDate;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

@Controller
public class SearchBookController {

    @Autowired
    private SocialControllerUtil util;

    // FIXME Перенести в опции БД
    private static final String DEFAULT_SEARCH_QUERY = "promo: бест-селлеры";

    @GetMapping("/search-book")
    private String searchBook(@RequestParam(value = "search-query", required = false) String searchQuery,
                              HttpServletRequest request, Principal currentUser, Model model) {
        util.setModel(request, currentUser, model);

        if (StringUtils.isEmpty(searchQuery)) {
            searchQuery = DEFAULT_SEARCH_QUERY;
        }
        model.addAttribute("searchQuery", searchQuery);

        // >>> FIXME Сделать поиск по БД и засунуть в model результаты
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
        // <<< FIXME Сделать поиск по БД и засунуть в model результаты

        return "vb/search-book";
    }

}