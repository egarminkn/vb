package org.verygroup.verybook;

import java.util.LinkedList;
import java.util.List;

public enum BookCategory {

    PROMO("Акции и спецпредложения"),
    BESTSELLERS("Бестселлеры"),
    NOVELTY("Новинки"),
    EDUCATIONAL("Учебная литература"),
    CHILDREN("Детям и родителям"),
    BUSINESS("Бизнес-литература"),
    FICTION("Художественная литература"),
    NON_FICTION("Нехудожественная литература");

    private String value;

    BookCategory(String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }

    public List<BookSubcategory> getSubcategories() {
        List<BookSubcategory> subcategories = new LinkedList<>();
        for (BookSubcategory subcategory : BookSubcategory.values()) {
            if (subcategory.getCategory() == this) {
                subcategories.add(subcategory);
            }
        }
        return subcategories;
    }

}