package org.verygroup.verybook.dto.searchbook;

import java.util.EnumSet;
import java.util.Set;

import org.verygroup.verybook.BookGenre;

public class AuthorBlockItem {
    /*
     * Поля (новые поля добавляем в начало)
     */
    private String authorPhotoUrl;
    private String authorName;
    private String authorDescription;
    private int authorBooksCount;
    private int authorBookReviewsCount;
    private Set<BookGenre> authorGenres;

    /*
     * Конструкторы
     */
    public AuthorBlockItem() {
        // нужен исключительно для задания типа этого класса в jsp через jsp:useBean
    }

    public AuthorBlockItem(String authorPhotoUrl, String authorName, String authorDescription, int authorBooksCount, int authorBookReviewsCount, BookGenre authorGenre, BookGenre... authorGenres) {
        this.authorPhotoUrl = authorPhotoUrl;
        this.authorName = authorName;
        this.authorDescription = authorDescription;
        this.authorBooksCount = authorBooksCount;
        this.authorBookReviewsCount = authorBookReviewsCount;
        this.authorGenres = EnumSet.of(authorGenre, authorGenres);
    }

    /*
     * Геттеры
     */
    public String getAuthorPhotoUrl() {
        return authorPhotoUrl;
    }

    public String getAuthorName() {
        return authorName;
    }

    public String getAuthorDescription() {
        return authorDescription;
    }

    public int getAuthorBooksCount() {
        return authorBooksCount;
    }

    public int getAuthorBookReviewsCount() {
        return authorBookReviewsCount;
    }

    public Set<BookGenre> getAuthorGenres() {
        return authorGenres;
    }

    /*
     * Сеттеры
     */
    public void setAuthorPhotoUrl(String authorPhotoUrl) {
        this.authorPhotoUrl = authorPhotoUrl;
    }

    public void setAuthorName(String authorName) {
        this.authorName = authorName;
    }

    public void setAuthorDescription(String authorDescription) {
        this.authorDescription = authorDescription;
    }

    public void setAuthorBooksCount(int authorBooksCount) {
        this.authorBooksCount = authorBooksCount;
    }

    public void setAuthorBookReviewsCount(int authorBookReviewsCount) {
        this.authorBookReviewsCount = authorBookReviewsCount;
    }

    public void setAuthorGenres(Set<BookGenre> authorGenres) {
        this.authorGenres = authorGenres;
    }
}