package org.verygroup.verybook.dto.authorpa;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

public class WrittenBookRow {
    /*
     * Поля (новые поля добавляем в начало)
     */
    private String bookRejectReason;
    private String bookCoverUrl;
    private String bookTitle;
    private String bookStatusAddClass;
    private int bookFreeDownloadsCount;
    private int bookPaidDownloadsCount;
    private int bookLikesCount;
    private int bookDislikesCount;
    private String bookCurrentPriceValue;
    private String bookCurrentPriceCurrency = "руб";
    private String bookTotalProfitValue;
    private String bookTotalProfitCurrency = "руб";
    private List<WrittenBookAction> bookActions;

    /*
     * Конструкторы
     */
    public WrittenBookRow() {
        // нужен исключительно для задания типа этого класса в jsp через jsp:useBean
    }

    public WrittenBookRow(String bookRejectReason, String bookCoverUrl, String bookTitle, String bookStatusAddClass, int bookFreeDownloadsCount, int bookPaidDownloadsCount, int bookLikesCount, int bookDislikesCount, String bookCurrentPriceValue, String bookCurrentPriceCurrency, String bookTotalProfitValue, String bookTotalProfitCurrency, WrittenBookAction bookAction, WrittenBookAction... bookActions) {
        this.bookRejectReason = bookRejectReason;
        this.bookCoverUrl = bookCoverUrl;
        this.bookTitle = bookTitle;
        this.bookStatusAddClass = bookStatusAddClass;
        this.bookFreeDownloadsCount = bookFreeDownloadsCount;
        this.bookPaidDownloadsCount = bookPaidDownloadsCount;
        this.bookLikesCount = bookLikesCount;
        this.bookDislikesCount = bookDislikesCount;
        this.bookCurrentPriceValue = bookCurrentPriceValue;
        this.bookCurrentPriceCurrency = bookCurrentPriceCurrency;
        this.bookTotalProfitValue = bookTotalProfitValue;
        this.bookTotalProfitCurrency = bookTotalProfitCurrency;

        this.bookActions = new LinkedList<>();
        this.bookActions.add(bookAction);
        this.bookActions.addAll(Arrays.asList(bookActions));
    }

    /*
     * Геттеры
     */
    public String getBookRejectReason() {
        return bookRejectReason;
    }

    public String getBookCoverUrl() {
        return bookCoverUrl;
    }

    public String getBookTitle() {
        return bookTitle;
    }

    public String getBookStatusAddClass() {
        return bookStatusAddClass;
    }

    public int getBookFreeDownloadsCount() {
        return bookFreeDownloadsCount;
    }

    public int getBookPaidDownloadsCount() {
        return bookPaidDownloadsCount;
    }

    public int getBookLikesCount() {
        return bookLikesCount;
    }

    public int getBookDislikesCount() {
        return bookDislikesCount;
    }

    public String getBookCurrentPriceValue() {
        return bookCurrentPriceValue;
    }

    public String getBookCurrentPriceCurrency() {
        return bookCurrentPriceCurrency;
    }

    public String getBookTotalProfitValue() {
        return bookTotalProfitValue;
    }

    public String getBookTotalProfitCurrency() {
        return bookTotalProfitCurrency;
    }

    public List<WrittenBookAction> getBookActions() {
        return bookActions;
    }

    /*
     * Сеттеры
     */
    public void setBookRejectReason(String bookRejectReason) {
        this.bookRejectReason = bookRejectReason;
    }

    public void setBookCoverUrl(String bookCoverUrl) {
        this.bookCoverUrl = bookCoverUrl;
    }

    public void setBookTitle(String bookTitle) {
        this.bookTitle = bookTitle;
    }

    public void setBookStatusAddClass(String bookStatusAddClass) {
        this.bookStatusAddClass = bookStatusAddClass;
    }

    public void setBookFreeDownloadsCount(int bookFreeDownloadsCount) {
        this.bookFreeDownloadsCount = bookFreeDownloadsCount;
    }

    public void setBookPaidDownloadsCount(int bookPaidDownloadsCount) {
        this.bookPaidDownloadsCount = bookPaidDownloadsCount;
    }

    public void setBookLikesCount(int bookLikesCount) {
        this.bookLikesCount = bookLikesCount;
    }

    public void setBookDislikesCount(int bookDislikesCount) {
        this.bookDislikesCount = bookDislikesCount;
    }

    public void setBookCurrentPriceValue(String bookCurrentPriceValue) {
        this.bookCurrentPriceValue = bookCurrentPriceValue;
    }

    public void setBookCurrentPriceCurrency(String bookCurrentPriceCurrency) {
        this.bookCurrentPriceCurrency = bookCurrentPriceCurrency;
    }

    public void setBookTotalProfitValue(String bookTotalProfitValue) {
        this.bookTotalProfitValue = bookTotalProfitValue;
    }

    public void setBookTotalProfitCurrency(String bookTotalProfitCurrency) {
        this.bookTotalProfitCurrency = bookTotalProfitCurrency;
    }

    public void setBookActions(List<WrittenBookAction> bookActions) {
        this.bookActions = bookActions;
    }
}