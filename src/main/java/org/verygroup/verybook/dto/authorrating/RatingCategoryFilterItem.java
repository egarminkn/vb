package org.verygroup.verybook.dto.authorrating;

import java.util.List;

public class RatingCategoryFilterItem {

    private List<AuthorItem> authorItems;
    private boolean hasMore;

    /*
     * Конструкторы
     */
    public RatingCategoryFilterItem(List<AuthorItem> authorItems, boolean hasMore) {
        this.authorItems = authorItems;
        this.hasMore = hasMore;
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

    /*
     * Сеттеры
     */
    public void setAuthorItems(List<AuthorItem> authorItems) {
        this.authorItems = authorItems;
    }

    public void setHasMore(boolean hasMore) {
        this.hasMore = hasMore;
    }

}