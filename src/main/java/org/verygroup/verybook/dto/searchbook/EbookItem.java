package org.verygroup.verybook.dto.searchbook;

import java.time.LocalDate;
import java.util.EnumSet;
import java.util.Set;

import org.verygroup.verybook.BookFormat;

public class EbookItem {
    /*
     * Поля (новые поля добавляем в начало)
     */
    private String ebookId;
    private String ebookAuthorId;
    private double ebookRating;
    private String ebookPriceValue;
    private String ebookPriceCurrency = "руб";
    private String ebookCoverUrl;
    private String ebookTitle;
    private String ebookAuthor;
    private String ebookDescription;
    private LocalDate ebookPublishDate;
    private int ebookReviewsCount;
    private Set<BookFormat> ebookFormats;

    /*
     * Конструкторы
     */
    public EbookItem() {
        // нужен исключительно для задания типа этого класса в jsp через jsp:useBean
    }

    public EbookItem(String ebookId, String ebookAuthorId, double ebookRating, String ebookPriceValue, String ebookPriceCurrency, String ebookCoverUrl, String ebookTitle, String ebookAuthor, String ebookDescription, LocalDate ebookPublishDate, int ebookReviewsCount, BookFormat ebookFormat, BookFormat... ebookFormats) {
        this.ebookId = ebookId;
        this.ebookAuthorId = ebookAuthorId;
        this.ebookRating = ebookRating;
        this.ebookPriceValue = ebookPriceValue;
        this.ebookPriceCurrency = ebookPriceCurrency;
        this.ebookCoverUrl = ebookCoverUrl;
        this.ebookTitle = ebookTitle;
        this.ebookAuthor = ebookAuthor;
        this.ebookDescription = ebookDescription;
        this.ebookPublishDate = ebookPublishDate;
        this.ebookReviewsCount = ebookReviewsCount;
        this.ebookFormats = EnumSet.of(ebookFormat, ebookFormats);
    }

    /*
     * Геттеры
     */
    public String getEbookId() {
        return ebookId;
    }

    public String getEbookAuthorId() {
        return ebookAuthorId;
    }

    public double getEbookRating() {
        return ebookRating;
    }

    public String getEbookPriceValue() {
        return ebookPriceValue;
    }

    public String getEbookPriceCurrency() {
        return ebookPriceCurrency;
    }

    public String getEbookCoverUrl() {
        return ebookCoverUrl;
    }

    public String getEbookTitle() {
        return ebookTitle;
    }

    public String getEbookAuthor() {
        return ebookAuthor;
    }

    public String getEbookDescription() {
        return ebookDescription;
    }

    public LocalDate getEbookPublishDate() {
        return ebookPublishDate;
    }

    public int getEbookReviewsCount() {
        return ebookReviewsCount;
    }

    public Set<BookFormat> getEbookFormats() {
        return ebookFormats;
    }

    /*
     * Сеттеры
     */
    public void setEbookId(String ebookId) {
        this.ebookId = ebookId;
    }

    public void setEbookAuthorId(String ebookAuthorId) {
        this.ebookAuthorId = ebookAuthorId;
    }

    public void setEbookRating(double ebookRating) {
        this.ebookRating = ebookRating;
    }

    public void setEbookPriceValue(String ebookPriceValue) {
        this.ebookPriceValue = ebookPriceValue;
    }

    public void setEbookPriceCurrency(String ebookPriceCurrency) {
        this.ebookPriceCurrency = ebookPriceCurrency;
    }

    public void setEbookCoverUrl(String ebookCoverUrl) {
        this.ebookCoverUrl = ebookCoverUrl;
    }

    public void setEbookTitle(String ebookTitle) {
        this.ebookTitle = ebookTitle;
    }

    public void setEbookAuthor(String ebookAuthor) {
        this.ebookAuthor = ebookAuthor;
    }

    public void setEbookDescription(String ebookDescription) {
        this.ebookDescription = ebookDescription;
    }

    public void setEbookPublishDate(LocalDate ebookPublishDate) {
        this.ebookPublishDate = ebookPublishDate;
    }

    public void setEbookReviewsCount(int ebookReviewsCount) {
        this.ebookReviewsCount = ebookReviewsCount;
    }

    public void setEbookFormats(Set<BookFormat> ebookFormats) {
        this.ebookFormats = ebookFormats;
    }
}