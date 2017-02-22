package org.verygroup.verybook.dto;

public class SpecBookItem {

    private String specBookId;
    private String specBookCoverUrl;
    private String specBookTitle;
    private String specBookAuthorId;
    private String specBookAuthorName;
    private String specBookPriceValue;
    private String specBookPriceCurrency = "руб";
    private double specBookRating;

    /*
     * Конструкторы
     */
    public SpecBookItem() {
        // нужен исключительно для задания типа этого класса в jsp через jsp:useBean
    }

    public SpecBookItem(String specBookId, String specBookCoverUrl, String specBookTitle, String specBookAuthorId, String specBookAuthorName, String specBookPriceValue, String specBookPriceCurrency, double specBookRating) {
        this.specBookId = specBookId;
        this.specBookCoverUrl = specBookCoverUrl;
        this.specBookTitle = specBookTitle;
        this.specBookAuthorId = specBookAuthorId;
        this.specBookAuthorName = specBookAuthorName;
        this.specBookPriceValue = specBookPriceValue;
        this.specBookPriceCurrency = specBookPriceCurrency;
        this.specBookRating = specBookRating;
    }

    /*
     * Геттеры
     */
    public String getSpecBookId() {
        return specBookId;
    }

    public String getSpecBookCoverUrl() {
        return specBookCoverUrl;
    }

    public String getSpecBookTitle() {
        return specBookTitle;
    }

    public String getSpecBookAuthorId() {
        return specBookAuthorId;
    }

    public String getSpecBookAuthorName() {
        return specBookAuthorName;
    }

    public String getSpecBookPriceValue() {
        return specBookPriceValue;
    }

    public String getSpecBookPriceCurrency() {
        return specBookPriceCurrency;
    }

    public double getSpecBookRating() {
        return specBookRating;
    }

    /*
     * Сеттеры
     */
    public void setSpecBookId(String specBookId) {
        this.specBookId = specBookId;
    }

    public void setSpecBookCoverUrl(String specBookCoverUrl) {
        this.specBookCoverUrl = specBookCoverUrl;
    }

    public void setSpecBookTitle(String specBookTitle) {
        this.specBookTitle = specBookTitle;
    }

    public void setSpecBookAuthorId(String specBookAuthorId) {
        this.specBookAuthorId = specBookAuthorId;
    }

    public void setSpecBookAuthorName(String specBookAuthorName) {
        this.specBookAuthorName = specBookAuthorName;
    }

    public void setSpecBookPriceValue(String specBookPriceValue) {
        this.specBookPriceValue = specBookPriceValue;
    }

    public void setSpecBookPriceCurrency(String specBookPriceCurrency) {
        this.specBookPriceCurrency = specBookPriceCurrency;
    }

    public void setSpecBookRating(double specBookRating) {
        this.specBookRating = specBookRating;
    }

}