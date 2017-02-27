package org.verygroup.verybook;

import java.util.LinkedList;
import java.util.List;

public enum RatingCategory {

    EDUCATIONAL("Учебная литература"),
    CHILDREN("Детям и родителям"),
    BUSINESS("Бизнес-литература"),
    FICTION("Художественная литература"),
    NON_FICTION("Нехудожественная литература"),
    GENRES("Жанры");

    private String value;

    RatingCategory(String value) {
        this.value = value;
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