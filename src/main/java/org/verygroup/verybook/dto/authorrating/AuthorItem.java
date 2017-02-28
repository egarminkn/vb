package org.verygroup.verybook.dto.authorrating;

import java.util.HashSet;
import java.util.EnumSet;
import java.util.Set;

import org.verygroup.verybook.BookGenre;

public class AuthorItem {
    /*
     * Поля (новые поля добавляем в начало)
     */
    private String authorId;
    private double authorRatingNumber;
    private String authorPhotoUrl;
    private String authorName;
    private String authorDescription;
    private int authorBooksCount;
    private int authorBookReviewsCount;
    private Set<String> authorGenres;

    /*
     * Конструкторы
     */
    public AuthorItem(String authorId, double authorRatingNumber, String authorPhotoUrl, String authorName, String authorDescription, int authorBooksCount, int authorBookReviewsCount, BookGenre authorGenre, BookGenre... authorGenres) {
        this.authorId = authorId;
        this.authorRatingNumber = authorRatingNumber;
        this.authorPhotoUrl = authorPhotoUrl;
        this.authorName = authorName;
        this.authorDescription = authorDescription;
        this.authorBooksCount = authorBooksCount;
        this.authorBookReviewsCount = authorBookReviewsCount;
        this.authorGenres = new HashSet<>();
        for (BookGenre genre : EnumSet.of(authorGenre, authorGenres)) {
            this.authorGenres.add(genre.getGenreName());
        }
    }

    /*
     * Геттеры
     */
    public String getAuthorId() {
        return authorId;
    }

    public double getAuthorRatingNumber() {
        return authorRatingNumber;
    }

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

    public Set<String> getAuthorGenres() {
        return authorGenres;
    }

    /*
     * Сеттеры
     */
    public void setAuthorId(String authorId) {
        this.authorId = authorId;
    }

    public void setAuthorRatingNumber(double authorRatingNumber) {
        this.authorRatingNumber = authorRatingNumber;
    }

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

    public void setAuthorGenres(Set<String> authorGenres) {
        this.authorGenres = authorGenres;
    }
}