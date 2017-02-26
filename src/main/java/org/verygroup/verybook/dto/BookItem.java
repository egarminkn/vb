package org.verygroup.verybook.dto;

import java.time.LocalDate;

public class BookItem {
    private String bookId;
    private String authorId;
    private double bookRatingNumber;

    /**
     * Если grade == null - значит не поставлен ни лайк, ни дизлайк
     * Если grade == true - значит поставлен лайк
     * Если grade == false - значит поставлен дизлайк
     */
    private Boolean likesDislikesGrade;

    private boolean likesLink;
    private boolean dislikesLink;
    private int likesCount;
    private int dislikesCount;
    private String priceUnderBookValue;
    private String priceUnderBookCurrency = "руб";
    private LocalDate bookPublishDate;
    private int bookCount;
    private String authorName;
    private String bookTitle;
    private String bookCoverUrl;
    private boolean isAuthorHidden;

    /*
     * Конструкторы
     */
    public BookItem() {
        // нужен исключительно для задания типа этого класса в jsp через jsp:useBean
    }

    public BookItem(String bookId, String authorId, double bookRatingNumber, Boolean likesDislikesGrade, boolean likesLink, boolean dislikesLink, int likesCount, int dislikesCount, String priceUnderBookValue, String priceUnderBookCurrency, LocalDate bookPublishDate, int bookCount, String authorName, String bookTitle, String bookCoverUrl, boolean isAuthorHidden) {
        this.bookId = bookId;
        this.authorId = authorId;
        this.bookRatingNumber = bookRatingNumber;
        this.likesDislikesGrade = likesDislikesGrade;
        this.likesLink = likesLink;
        this.dislikesLink = dislikesLink;
        this.likesCount = likesCount;
        this.dislikesCount = dislikesCount;
        this.priceUnderBookValue = priceUnderBookValue;
        this.priceUnderBookCurrency = priceUnderBookCurrency;
        this.bookPublishDate = bookPublishDate;
        this.bookCount = bookCount;
        this.authorName = authorName;
        this.bookTitle = bookTitle;
        this.bookCoverUrl = bookCoverUrl;
        this.isAuthorHidden = isAuthorHidden;
    }

    /*
     * Геттеры
     */
    public String getBookId() {
        return bookId;
    }

    public String getAuthorId() {
        return authorId;
    }

    public double getBookRatingNumber() {
        return bookRatingNumber;
    }

    public Boolean getLikesDislikesGrade() {
        return likesDislikesGrade;
    }

    public boolean isLikesLink() {
        return likesLink;
    }

    public boolean isDislikesLink() {
        return dislikesLink;
    }

    public int getLikesCount() {
        return likesCount;
    }

    public int getDislikesCount() {
        return dislikesCount;
    }

    public String getPriceUnderBookValue() {
        return priceUnderBookValue;
    }

    public String getPriceUnderBookCurrency() {
        return priceUnderBookCurrency;
    }

    public LocalDate getBookPublishDate() {
        return bookPublishDate;
    }

    public int getBookCount() {
        return bookCount;
    }

    public String getAuthorName() {
        return authorName;
    }

    public String getBookTitle() {
        return bookTitle;
    }

    public String getBookCoverUrl() {
        return bookCoverUrl;
    }

    public boolean isAuthorHidden() {
        return isAuthorHidden;
    }

    /*
     * Сеттеры
     */
    public void setBookId(String bookId) {
        this.bookId = bookId;
    }

    public void setAuthorId(String authorId) {
        this.authorId = authorId;
    }

    public void setBookRatingNumber(double bookRatingNumber) {
        this.bookRatingNumber = bookRatingNumber;
    }

    public void setLikesDislikesGrade(Boolean likesDislikesGrade) {
        this.likesDislikesGrade = likesDislikesGrade;
    }

    public void setLikesLink(boolean likesLink) {
        this.likesLink = likesLink;
    }

    public void setDislikesLink(boolean dislikesLink) {
        this.dislikesLink = dislikesLink;
    }

    public void setLikesCount(int likesCount) {
        this.likesCount = likesCount;
    }

    public void setDislikesCount(int dislikesCount) {
        this.dislikesCount = dislikesCount;
    }

    public void setPriceUnderBookValue(String priceUnderBookValue) {
        this.priceUnderBookValue = priceUnderBookValue;
    }

    public void setPriceUnderBookCurrency(String priceUnderBookCurrency) {
        this.priceUnderBookCurrency = priceUnderBookCurrency;
    }

    public void setBookPublishDate(LocalDate bookPublishDate) {
        this.bookPublishDate = bookPublishDate;
    }

    public void setBookCount(int bookCount) {
        this.bookCount = bookCount;
    }

    public void setAuthorName(String authorName) {
        this.authorName = authorName;
    }

    public void setBookTitle(String bookTitle) {
        this.bookTitle = bookTitle;
    }

    public void setBookCoverUrl(String bookCoverUrl) {
        this.bookCoverUrl = bookCoverUrl;
    }

    public void setAuthorHidden(boolean authorHidden) {
        isAuthorHidden = authorHidden;
    }
}