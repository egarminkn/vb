package org.verygroup.verybook.dto.authorrating;

import java.util.List;

public class RatingCategoryFilterItem {

    private List<AuthorItem> authorItems;
    private boolean hasMore;
    private int totalAuthorsCount;

    /*
     * Конструкторы
     */
    public RatingCategoryFilterItem(List<AuthorItem> authorItems, boolean hasMore, int totalAuthorsCount) {
        this.authorItems = authorItems;
        this.hasMore = hasMore;
        this.totalAuthorsCount = totalAuthorsCount;
    }

    /*
     * Геттеры
     */
    public List<AuthorItem> getAuthorItems() {
        return authorItems;
    }

    public boolean isHasMore() {
        return hasMore;
    }

    public int getTotalAuthorsCount() {
        return totalAuthorsCount;
    }

    /*
     * Сеттеры
     */
    public void setAuthorItems(List<AuthorItem> authorItems) {
        this.authorItems = authorItems;
    }

    public void setHasMore(boolean hasMore) {
        this.hasMore = hasMore;
    }

    public void setTotalAuthorsCount(int totalAuthorsCount) {
        this.totalAuthorsCount = totalAuthorsCount;
    }

}