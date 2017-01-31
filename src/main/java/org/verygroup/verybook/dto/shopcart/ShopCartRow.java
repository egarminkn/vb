package org.verygroup.verybook.dto.shopcart;

public class ShopCartRow {
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

    public ShopCartRow(String bookCoverUrl, String bookTitle, String bookAuthor, String priceValue, String priceCurrency) {
        this.bookCoverUrl = bookCoverUrl;
        this.bookTitle = bookTitle;
        this.bookAuthor = bookAuthor;
        this.priceValue = priceValue;
        this.priceCurrency = priceCurrency;
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

    public String getPriceValue() {
        return priceValue;
    }

    public String getPriceCurrency() {
        return priceCurrency;
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

    public void setPriceValue(String priceValue) {
        this.priceValue = priceValue;
    }

    public void setPriceCurrency(String priceCurrency) {
        this.priceCurrency = priceCurrency;
    }
}