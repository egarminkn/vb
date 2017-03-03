package org.verygroup.verybook.dto.shopcart;

import org.verygroup.verybook.BookType;

public class ShopCartRow {
    private String bookId;
    private BookType bookType;
    private String bookAuthorId;
    private String bookCoverUrl;
    private String bookTitle;
    private String bookAuthor;
    private String priceValue;
    private String priceCurrency = "руб";

    /*
     * Конструкторы
     */
    public ShopCartRow() {
        // нужен исключительно для задания типа этого класса в jsp через jsp:useBean
    }

    public ShopCartRow(String bookId, BookType bookType, String bookAuthorId, String bookCoverUrl, String bookTitle, String bookAuthor, String priceValue, String priceCurrency) {
        this.bookId = bookId;
        this.bookType = bookType;
        this.bookAuthorId = bookAuthorId;
        this.bookCoverUrl = bookCoverUrl;
        this.bookTitle = bookTitle;
        this.bookAuthor = bookAuthor;
        this.priceValue = priceValue;
        this.priceCurrency = priceCurrency;
    }

    /*
     * Геттеры
     */
    public String getBookId() {
        return bookId;
    }

    public BookType getBookType() {
        return bookType;
    }

    public String getBookAuthorId() {
        return bookAuthorId;
    }

    public String getBookCoverUrl() {
        return bookCoverUrl;
    }

    public String getBookTitle() {
        return bookTitle;
    }

    public String getBookAuthor() {
        return bookAuthor;
    }

    public String getPriceValue() {
        return priceValue;
    }

    public String getPriceCurrency() {
        return priceCurrency;
    }

    /*
     * Сеттеры
     */
    public void setBookId(String bookId) {
        this.bookId = bookId;
    }

    public void setBookType(BookType bookType) {
        this.bookType = bookType;
    }

    public void setBookAuthorId(String bookAuthorId) {
        this.bookAuthorId = bookAuthorId;
    }

    public void setBookCoverUrl(String bookCoverUrl) {
        this.bookCoverUrl = bookCoverUrl;
    }

    public void setBookTitle(String bookTitle) {
        this.bookTitle = bookTitle;
    }

    public void setBookAuthor(String bookAuthor) {
        this.bookAuthor = bookAuthor;
    }

    public void setPriceValue(String priceValue) {
        this.priceValue = priceValue;
    }

    public void setPriceCurrency(String priceCurrency) {
        this.priceCurrency = priceCurrency;
    }
}