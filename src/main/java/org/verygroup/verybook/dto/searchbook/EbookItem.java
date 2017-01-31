package org.verygroup.verybook.dto.searchbook;

import java.time.LocalDate;
import java.util.EnumSet;
import java.util.Set;

import org.verygroup.verybook.BookFormat;

public class EbookItem {
    /*
     * Поля (новые поля добавляем в начало)
     */
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

    public EbookItem(String ebookCoverUrl, String ebookTitle, String ebookAuthor, String ebookDescription, LocalDate ebookPublishDate, int ebookReviewsCount, BookFormat ebookFormat, BookFormat... ebookFormats) {
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