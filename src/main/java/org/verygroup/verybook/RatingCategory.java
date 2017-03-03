package org.verygroup.verybook;

import java.util.LinkedList;
import java.util.List;

public enum RatingCategory {

    /**
     * Всегда нужно помнить о корреляции этого enum-а с enum-ами
     * BookGenre, BookCategory и BookSubcategory.
     * Они - первичны, а RatingCategory и RatingSubcategory - вторичны
     */

    EDUCATIONAL(RatingCategoryType.BOOK_CATEGORY, "Учебная литература"),
    CHILDREN(RatingCategoryType.BOOK_CATEGORY, "Детям и родителям"),
    BUSINESS(RatingCategoryType.BOOK_CATEGORY, "Бизнес-литература"),
    FICTION(RatingCategoryType.BOOK_CATEGORY, "Художественная литература"),
    NON_FICTION(RatingCategoryType.BOOK_CATEGORY, "Нехудожественная литература"),
    GENRES(RatingCategoryType.BOOK_GENRE, "Жанры");

    private RatingCategoryType type;
    private String value;

    RatingCategory(RatingCategoryType type, String value) {
        this.type = type;
        this.value = value;
    }

    public RatingCategoryType getType() {
        return type;
    }

    public String getValue() {
        return value;
    }

    public List<RatingSubcategory> getSubcategories() {
        List<RatingSubcategory> subcategories = new LinkedList<>();
        for (RatingSubcategory subcategory : RatingSubcategory.values()) {
            if (subcategory.getCategory() == this) {
                subcategories.add(subcategory);
            }
        }
        return subcategories;
    }

}