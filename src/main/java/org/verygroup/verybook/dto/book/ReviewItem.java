package org.verygroup.verybook.dto.book;

import java.time.LocalDate;

public class ReviewItem {
    private String reviewTitle;
    private String reviewAuthor;
    private LocalDate reviewPublishDate;
    private String reviewContent;

    /*
     * Конструкторы
     */
    public ReviewItem() {
        // нужен исключительно для задания типа этого класса в jsp через jsp:useBean
    }

    public ReviewItem(String reviewTitle, String reviewAuthor, LocalDate reviewPublishDate, String reviewContent) {
        this.reviewTitle = reviewTitle;
        this.reviewAuthor = reviewAuthor;
        this.reviewPublishDate = reviewPublishDate;
        this.reviewContent = reviewContent;
    }

    /*
     * Геттеры
     */
    public String getReviewTitle() {
        return reviewTitle;
    }

    public String getReviewAuthor() {
        return reviewAuthor;
    }

    public LocalDate getReviewPublishDate() {
        return reviewPublishDate;
    }

    public String getReviewContent() {
        return reviewContent;
    }

    /*
     * Сеттеры
     */
    public void setReviewTitle(String reviewTitle) {
        this.reviewTitle = reviewTitle;
    }

    public void setReviewAuthor(String reviewAuthor) {
        this.reviewAuthor = reviewAuthor;
    }

    public void setReviewPublishDate(LocalDate reviewPublishDate) {
        this.reviewPublishDate = reviewPublishDate;
    }

    public void setReviewContent(String reviewContent) {
        this.reviewContent = reviewContent;
    }
}