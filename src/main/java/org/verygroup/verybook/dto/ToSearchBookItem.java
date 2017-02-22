package org.verygroup.verybook.dto;

import org.verygroup.verybook.BookCategory;
import org.verygroup.verybook.BookSubcategory;

import java.util.List;

public class ToSearchBookItem {

    private BookCategory category;
    private List<BookSubcategory> subcategories;

    /*
     * Конструкторы
     */
    public ToSearchBookItem() {
        // нужен исключительно для задания типа этого класса в jsp через jsp:useBean
    }

    public ToSearchBookItem(BookCategory category) {
        this.category = category;
        this.subcategories = category.getSubcategories();
    }

    /*
     * Геттеры
     */
    public BookCategory getCategory() {
        return category;
    }

    public List<BookSubcategory> getSubcategories() {
        return subcategories;
    }

    /*
     * Сеттеры
     */
    public void setCategory(BookCategory category) {
        this.category = category;
    }

    public void setSubcategories(List<BookSubcategory> subcategories) {
        this.subcategories = subcategories;
    }

}