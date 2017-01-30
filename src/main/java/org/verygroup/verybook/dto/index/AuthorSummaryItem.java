package org.verygroup.verybook.dto.index;

public class AuthorSummaryItem {
    private String authorName;
    private int authorBooksCount;
    private String authorPhotoUrl;
    private int authorLikesCount;
    private int authorDislikesCount;

    /*
     * Конструкторы
     */
    public AuthorSummaryItem() {
        // нужен исключительно для задания типа этого класса в jsp через jsp:useBean
    }

    public AuthorSummaryItem(String authorName, int authorBooksCount, String authorPhotoUrl, int authorLikesCount, int authorDislikesCount) {
        this.authorName = authorName;
        this.authorBooksCount = authorBooksCount;
        this.authorPhotoUrl = authorPhotoUrl;
        this.authorLikesCount = authorLikesCount;
        this.authorDislikesCount = authorDislikesCount;
    }

    /*
     * Геттеры
     */
    public String getAuthorName() {
        return authorName;
    }

    public int getAuthorBooksCount() {
        return authorBooksCount;
    }

    public String getAuthorPhotoUrl() {
        return authorPhotoUrl;
    }

    public int getAuthorLikesCount() {
        return authorLikesCount;
    }

    public int getAuthorDislikesCount() {
        return authorDislikesCount;
    }

    /*
     * Сеттеры
     */
    public void setAuthorName(String authorName) {
        this.authorName = authorName;
    }

    public void setAuthorBooksCount(int authorBooksCount) {
        this.authorBooksCount = authorBooksCount;
    }

    public void setAuthorPhotoUrl(String authorPhotoUrl) {
        this.authorPhotoUrl = authorPhotoUrl;
    }

    public void setAuthorLikesCount(int authorLikesCount) {
        this.authorLikesCount = authorLikesCount;
    }

    public void setAuthorDislikesCount(int authorDislikesCount) {
        this.authorDislikesCount = authorDislikesCount;
    }
}