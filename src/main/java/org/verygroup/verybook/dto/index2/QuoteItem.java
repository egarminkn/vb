package org.verygroup.verybook.dto.index2;

public class QuoteItem {
    private String quoteContent;
    private String quoteAuthor;

    /*
     * Конструкторы
     */
    public QuoteItem() {
        // нужен исключительно для задания типа этого класса в jsp через jsp:useBean
    }

    public QuoteItem(String quoteContent, String quoteAuthor) {
        this.quoteContent = quoteContent;
        this.quoteAuthor = quoteAuthor;
    }

    /*
     * Геттеры
     */
    public String getQuoteContent() {
        return quoteContent;
    }

    public String getQuoteAuthor() {
        return quoteAuthor;
    }

    /*
     * Сеттеры
     */
    public void setQuoteContent(String quoteContent) {
        this.quoteContent = quoteContent;
    }

    public void setQuoteAuthor(String quoteAuthor) {
        this.quoteAuthor = quoteAuthor;
    }
}