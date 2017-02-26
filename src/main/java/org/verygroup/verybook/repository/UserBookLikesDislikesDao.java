package org.verygroup.verybook.repository;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import org.verygroup.verybook.BookType;
import org.verygroup.verybook.model.LikesDislikesInfo;
import org.verygroup.verybook.model.UserBookCompliance;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@Repository
@Transactional(readOnly = true)
public class UserBookLikesDislikesDao {

    private static final LikesDislikesInfo bookAbsent = new LikesDislikesInfo(false, false);

    private static final Map<UserBookCompliance, LikesDislikesInfo> boughtBooksDb = new ConcurrentHashMap<>();
    static {
        // Купленные книги
        boughtBooksDb.put(
                new UserBookCompliance("google", BookType.EBOOK, "id1"),
                new LikesDislikesInfo(true, true, false)); // дизлайк
        boughtBooksDb.put(
                new UserBookCompliance("google", BookType.EBOOK, "id2"),
                new LikesDislikesInfo(true, true, true)); // лайк
        boughtBooksDb.put(
                new UserBookCompliance("google", BookType.EBOOK, "id3"),
                new LikesDislikesInfo(true, true, null));
        boughtBooksDb.put(
                new UserBookCompliance("google", BookType.EBOOK, "id4"),
                new LikesDislikesInfo(true, true, true)); // лайк
        boughtBooksDb.put(
                new UserBookCompliance("google", BookType.EBOOK, "id5"),
                new LikesDislikesInfo(true, true, null));
        boughtBooksDb.put(
                new UserBookCompliance("google", BookType.EBOOK, "id6"),
                new LikesDislikesInfo(true, true, false)); // дизлайк
        boughtBooksDb.put(
                new UserBookCompliance("google", BookType.EBOOK, "id7"),
                new LikesDislikesInfo(true, true, false)); // дизлайк
        boughtBooksDb.put(
                new UserBookCompliance("google", BookType.EBOOK, "id8"),
                new LikesDislikesInfo(true, true, null));
        boughtBooksDb.put(
                new UserBookCompliance("google", BookType.EBOOK, "id9"),
                new LikesDislikesInfo(true, true, true)); // лайк
        boughtBooksDb.put(
                new UserBookCompliance("google", BookType.EBOOK, "id10"),
                new LikesDislikesInfo(true, true, false)); // дизлайк
        boughtBooksDb.put(
                new UserBookCompliance("google", BookType.EBOOK, "id11"),
                new LikesDislikesInfo(true, true, null));
        boughtBooksDb.put(
                new UserBookCompliance("google", BookType.EBOOK, "id12"),
                new LikesDislikesInfo(true, true, true)); // лайк
        boughtBooksDb.put(
                new UserBookCompliance("google", BookType.EBOOK, "id13"),
                new LikesDislikesInfo(true, true, true)); // лайк
        boughtBooksDb.put(
                new UserBookCompliance("google", BookType.EBOOK, "id14"),
                new LikesDislikesInfo(true, true, false)); // дизлайк
        boughtBooksDb.put(
                new UserBookCompliance("google", BookType.EBOOK, "id15"),
                new LikesDislikesInfo(true, true, false)); // дизлайк
    }

    public LikesDislikesInfo getLikesDislikesInfoBy(UserBookCompliance userBook) {
        Assert.notNull(userBook);

        if (!boughtBooksDb.containsKey(userBook)) { // если не залогинен или залогинен, но книгу не покупал
            return bookAbsent;
        }
        return boughtBooksDb.get(userBook); // если залогинен и купил книгу
    }

    public boolean likeDislikeBook(UserBookCompliance userBook, boolean grade) {
        Assert.notNull(userBook);

        // если не залогинен или залогинен, но книгу не покупал
        if (!boughtBooksDb.containsKey(userBook)) {
            return false;
        }

        // если залогинен и купил книгу
        if (boughtBooksDb.get(userBook).getGrade() != null && boughtBooksDb.get(userBook).getGrade() == grade) {
            boughtBooksDb.get(userBook).setGrade(null);
        } else {
            boughtBooksDb.get(userBook).setGrade(grade);
        }
        return true;
    }

}