package org.verygroup.verybook.dto.authorpa;

import java.time.LocalDate;
import java.util.EnumSet;
import java.util.Set;

import org.verygroup.verybook.BookFormat;

public class ReadBookRow {
    /*
     * Поля (новые поля добавляем в начало)
     */
    private String bookCoverUrl;
    private String bookTitle;
    private String bookAuthor;
    private LocalDate bookPublishDate;
    private int bookLikesCount;
    private int bookDislikesCount;
    private String bookBuyingPriceValue;
    private String bookBuyingPriceCurrency = "руб";
    private Set<BookFormat> bookFormats;

    /*
     * Конструкторы
     */
    public ReadBookRow() {
        // нужен исключительно для задания типа этого класса в jsp через jsp:useBean
    }

    public ReadBookRow(String bookCoverUrl, String bookTitle, String bookAuthor, LocalDate bookPublishDate, int bookLikesCount, int bookDislikesCount, String bookBuyingPriceValue, String bookBuyingPriceCurrency, BookFormat bookFormat, BookFormat... bookFormats) {
        this.bookCoverUrl = bookCoverUrl;
        this.bookTitle = bookTitle;
        this.bookAuthor = bookAuthor;
        this.bookPublishDate = bookPublishDate;
        this.bookLikesCount = bookLikesCount;
        this.bookDislikesCount = bookDislikesCount;
        this.bookBuyingPriceValue = bookBuyingPriceValue;
        this.bookBuyingPriceCurrency = bookBuyingPriceCurrency;
        this.bookFormats = EnumSet.of(bookFormat, bookFormats);
    }

    /*
     * Геттеры
     */
    public String getBookCoverUrl() {
        return bookCoverUrl;
    }

    public String getBookTitle() {
        return bookTitle;
    }

    public String getBookAuthor() {
        return bookAuthor;
    }

    public LocalDate getBookPublishDate() {
        return bookPublishDate;
    }

    public int getBookLikesCount() {
        return bookLikesCount;
    }

    public int getBookDislikesCount() {
        return bookDislikesCount;
    }

    public String getBookBuyingPriceValue() {
        return bookBuyingPriceValue;
    }

    public String getBookBuyingPriceCurrency() {
        return bookBuyingPriceCurrency;
    }

    public Set<BookFormat> getBookFormats() {
        return bookFormats;
    }

    /*
     * Сеттеры
     */
    public void setBookCoverUrl(String bookCoverUrl) {
        this.bookCoverUrl = bookCoverUrl;
    }

    public void setBookTitle(String bookTitle) {
        this.bookTitle = bookTitle;
    }

    public void setBookAuthor(String bookAuthor) {
        this.bookAuthor = bookAuthor;
    }

    public void setBookPublishDate(LocalDate bookPublishDate) {
        this.bookPublishDate = bookPublishDate;
    }

    public void setBookLikesCount(int bookLikesCount) {
        this.bookLikesCount = bookLikesCount;
    }

    public void setBookDislikesCount(int bookDislikesCount) {
        this.bookDislikesCount = bookDislikesCount;
    }

    public void setBookBuyingPriceValue(String bookBuyingPriceValue) {
        this.bookBuyingPriceValue = bookBuyingPriceValue;
    }

    public void setBookBuyingPriceCurrency(String bookBuyingPriceCurrency) {
        this.bookBuyingPriceCurrency = bookBuyingPriceCurrency;
    }

    public void setBookFormats(Set<BookFormat> bookFormats) {
        this.bookFormats = bookFormats;
    }
}