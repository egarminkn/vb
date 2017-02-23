package org.verygroup.verybook.dto.searchbook;

import java.time.LocalDate;
import java.util.*;

import org.verygroup.verybook.AudiobookFormat;

public class AudiobookItem {
    private String audiobookId;
    private String audiobookCoverUrl;
    private String audiobookTitle;
    private String audiobookDescription;
    private LocalDate audiobookPublishDate;
    private int audiobookReviewsCount;
    private Set<AudiobookAuthor> audiobookAuthors;
    private Set<AudiobookFormat> audiobookFormats;

    /*
     * Конструкторы
     */
    public AudiobookItem() {
        // нужен исключительно для задания типа этого класса в jsp через jsp:useBean
    }

    public AudiobookItem(String audiobookId, String audiobookCoverUrl, String audiobookTitle, String audiobookDescription, LocalDate audiobookPublishDate, int audiobookReviewsCount, List<AudiobookAuthor> audiobookAuthors, List<AudiobookFormat> audiobookFormats) {
        this.audiobookId = audiobookId;
        this.audiobookCoverUrl = audiobookCoverUrl;
        this.audiobookTitle = audiobookTitle;
        this.audiobookDescription = audiobookDescription;
        this.audiobookPublishDate = audiobookPublishDate;
        this.audiobookReviewsCount = audiobookReviewsCount;
        this.audiobookAuthors = new TreeSet<>(audiobookAuthors);
        this.audiobookFormats = EnumSet.copyOf(audiobookFormats);
    }

    /*
     * Геттеры
     */
    public String getAudiobookId() {
        return audiobookId;
    }

    public String getAudiobookCoverUrl() {
        return audiobookCoverUrl;
    }

    public String getAudiobookTitle() {
        return audiobookTitle;
    }

    public String getAudiobookDescription() {
        return audiobookDescription;
    }

    public LocalDate getAudiobookPublishDate() {
        return audiobookPublishDate;
    }

    public int getAudiobookReviewsCount() {
        return audiobookReviewsCount;
    }

    public Set<AudiobookAuthor> getAudiobookAuthors() {
        return audiobookAuthors;
    }

    public Set<AudiobookFormat> getAudiobookFormats() {
        return audiobookFormats;
    }

    /*
     * Сеттеры
     */
    public void setAudiobookId(String audiobookId) {
        this.audiobookId = audiobookId;
    }

    public void setAudiobookCoverUrl(String audiobookCoverUrl) {
        this.audiobookCoverUrl = audiobookCoverUrl;
    }

    public void setAudiobookTitle(String audiobookTitle) {
        this.audiobookTitle = audiobookTitle;
    }

    public void setAudiobookDescription(String audiobookDescription) {
        this.audiobookDescription = audiobookDescription;
    }

    public void setAudiobookPublishDate(LocalDate audiobookPublishDate) {
        this.audiobookPublishDate = audiobookPublishDate;
    }

    public void setAudiobookReviewsCount(int audiobookReviewsCount) {
        this.audiobookReviewsCount = audiobookReviewsCount;
    }

    public void setAudiobookAuthors(Set<AudiobookAuthor> audiobookAuthors) {
        this.audiobookAuthors = audiobookAuthors;
    }

    public void setAudiobookFormats(Set<AudiobookFormat> audiobookFormats) {
        this.audiobookFormats = audiobookFormats;
    }
}