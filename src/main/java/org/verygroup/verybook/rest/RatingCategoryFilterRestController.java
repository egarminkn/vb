package org.verygroup.verybook.rest;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import org.verygroup.verybook.BookGenre;
import org.verygroup.verybook.dto.authorrating.RatingCategoryFilterItem;
import org.verygroup.verybook.dto.authorrating.AuthorItem;
import org.verygroup.verybook.dto.authorrating.RatingItem;

import java.util.LinkedList;
import java.util.List;

@RestController
@RequestMapping("/rest")
public class RatingCategoryFilterRestController {

    // >>> FIXME заглушка. Нужно делать выборку из БД
    private static final List<AuthorItem> authorItems = new LinkedList<>();
    static {
        authorItems.add(new AuthorItem("id1", 1.3, "resources/vb/img/tmp/photo-1.jpg", "Александр Константинопольский I", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 1, 17, BookGenre.MILITARY, BookGenre.DRAMA, BookGenre.ADVENTURES));
        authorItems.add(new AuthorItem("id2", 2.4, "resources/vb/img/tmp/photo-2.jpg", "Александр Константинопольский II", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 4, 21, BookGenre.MILITARY, BookGenre.DETECTIVE, BookGenre.DETECTIVE));
        authorItems.add(new AuthorItem("id3", 4.5, "resources/vb/img/tmp/photo-3.jpg", "Александр Константинопольский III", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 7, 43, BookGenre.MILITARY, BookGenre.DETECTIVE, BookGenre.FABLE));
        authorItems.add(new AuthorItem("id4", 0.3, "resources/vb/img/tmp/photo-4.jpg", "Александр Константинопольский IV", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 11, 1, BookGenre.FAIRY_TALE, BookGenre.DETECTIVE, BookGenre.ADVENTURES));
        authorItems.add(new AuthorItem("id5", 2.7, "resources/vb/img/tmp/photo-5.jpg", "Александр Константинопольский V", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 41, 3, BookGenre.MILITARY, BookGenre.DETECTIVE, BookGenre.ADVENTURES));
        authorItems.add(new AuthorItem("id6", 4.9, "resources/vb/img/tmp/photo-1.jpg", "Александр Константинопольский VI", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 17, 5, BookGenre.COMEDY, BookGenre.DETECTIVE, BookGenre.ADVENTURES));
        authorItems.add(new AuthorItem("id7", 1, "resources/vb/img/tmp/photo-2.jpg", "Александр Константинопольский VII", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 11, 7, BookGenre.MILITARY, BookGenre.DETECTIVE, BookGenre.ADVENTURES));
        authorItems.add(new AuthorItem("id8", 1.4, "resources/vb/img/tmp/photo-3.jpg", "Александр Константинопольский VIII", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 24, 14, BookGenre.MILITARY, BookGenre.ESSAY, BookGenre.ADVENTURES));
        authorItems.add(new AuthorItem("id9", 1.5, "resources/vb/img/tmp/photo-4.jpg", "Александр Константинопольский IX", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 37, 23, BookGenre.MILITARY, BookGenre.DETECTIVE, BookGenre.ADVENTURES));
        authorItems.add(new AuthorItem("id10", 0.3, "resources/vb/img/tmp/photo-5.jpg", "Александр Константинопольский X", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 81, 37, BookGenre.MILITARY, BookGenre.NOVELLA, BookGenre.ADVENTURES));
        authorItems.add(new AuthorItem("id11", 0.4, "resources/vb/img/tmp/photo-4.jpg", "Александр Константинопольский XI", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 114, 55, BookGenre.MILITARY));
        authorItems.add(new AuthorItem("id12", 3.5, "resources/vb/img/tmp/photo-3.jpg", "Александр Константинопольский XII", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 71, 47, BookGenre.MILITARY, BookGenre.ADVENTURES));
        authorItems.add(new AuthorItem("id13", 2.3, "resources/vb/img/tmp/photo-2.jpg", "Александр Константинопольский XIII", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 61, 37, BookGenre.MILITARY, BookGenre.DETECTIVE, BookGenre.DETECTIVE, BookGenre.NOVEL));
        authorItems.add(new AuthorItem("id14", 3.4, "resources/vb/img/tmp/photo-1.jpg", "Александр Константинопольский XIV", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 34, 213, BookGenre.MILITARY, BookGenre.DETECTIVE, BookGenre.ADVENTURES));
        authorItems.add(new AuthorItem("id15", 5, "resources/vb/img/tmp/photo-2.jpg", "Александр Константинопольский XV", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 75, 437, BookGenre.MILITARY, BookGenre.MYTH, BookGenre.ADVENTURES));
        authorItems.add(new AuthorItem("id16", 3.3, "resources/vb/img/tmp/photo-5.jpg", "Александр Константинопольский XVI", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 17, 157, BookGenre.MILITARY, BookGenre.DETECTIVE, BookGenre.ADVENTURES));
        authorItems.add(new AuthorItem("id17", 4.4, "resources/vb/img/tmp/photo-6.jpg", "Александр Константинопольский XVII", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 43, 241, BookGenre.MILITARY, BookGenre.DETECTIVE, BookGenre.TRAGEDY));
        authorItems.add(new AuthorItem("id18", 4.8, "resources/vb/img/tmp/photo-4.jpg", "Александр Константинопольский XVIII", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 74, 435, BookGenre.MILITARY, BookGenre.DETECTIVE, BookGenre.ADVENTURES));
        authorItems.add(new AuthorItem("id19", 0.3, "resources/vb/img/tmp/photo-1.jpg", "Александр Константинопольский XIX", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 15, 81, BookGenre.MILITARY, BookGenre.DRAMA, BookGenre.ADVENTURES));
        authorItems.add(new AuthorItem("id20", 3.7, "resources/vb/img/tmp/photo-2.jpg", "Александр Константинопольский XX", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 48, 91, BookGenre.MILITARY, BookGenre.DETECTIVE, BookGenre.ADVENTURES));
        authorItems.add(new AuthorItem("id21", 2.5, "resources/vb/img/tmp/photo-3.jpg", "Александр Константинопольский XXI", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 79, 93, BookGenre.STORY, BookGenre.DETECTIVE, BookGenre.ADVENTURES));
        authorItems.add(new AuthorItem("id22", 2.3, "resources/vb/img/tmp/photo-6.jpg", "Александр Константинопольский XXII", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 111, 117, BookGenre.MILITARY, BookGenre.DETECTIVE, BookGenre.PLAY));
        authorItems.add(new AuthorItem("id23", 3.4, "resources/vb/img/tmp/photo-1.jpg", "Александр Константинопольский XXIII", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 478, 201, BookGenre.BALLAD, BookGenre.DETECTIVE, BookGenre.ADVENTURES));
        authorItems.add(new AuthorItem("id24", 0.5, "resources/vb/img/tmp/photo-4.jpg", "Александр Константинопольский XXIV", "I draw pictures and I make colouring books! Welcome to my world. Tumble down the rabbit hole and find yourself in my inky black and white Wonderland... I'm an illustrator and ink evangelist who prefers pens and pencils to pixels. I create intricate, hand drawn illustrations predominately, although not exclusively, in black and white. My creativity is cultivated by a curious imagination and a delight in the fantastic. Much of my work has roots in the flora and fauna that surrounded me growing up on my parent's fish farm in rural Scotland.", 73, 3, BookGenre.MILITARY, BookGenre.ADVENTURES, BookGenre.ADVENTURES));
    }
    // <<<

    @PostMapping(value = "/filter-authors", consumes = MediaType.APPLICATION_JSON_UTF8_VALUE, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public RatingCategoryFilterItem filterAuthors(@RequestBody List<RatingItem> ratingItems,
                                                  @RequestParam int offset) {
        if (offset < 0) {
            offset = 0;
        }

        int length = 10;
        boolean hasMore = true;

        List<AuthorItem> authorItems = new LinkedList<>();
        int size = RatingCategoryFilterRestController.authorItems.size();

        if (offset >= size) {
            hasMore = false;
            return new RatingCategoryFilterItem(authorItems, hasMore);
        }

        int last = offset + length;
        if (last >= size) {
            last = size;
            hasMore = false;
        }
        authorItems.addAll(RatingCategoryFilterRestController.authorItems.subList(offset, last));
        return new RatingCategoryFilterItem(authorItems, hasMore);
    }

}