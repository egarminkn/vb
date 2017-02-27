package org.verygroup.verybook.dto.authorrating;

import org.verygroup.verybook.RatingSubcategory;
import org.verygroup.verybook.RatingCategory;

import java.util.List;

public class RatingItem {

    private RatingCategory category;
    private List<RatingSubcategory> subcategories;

    /*
     * Конструкторы
     */
    public RatingItem() {
        // нужен исключительно для задания типа этого класса в jsp через jsp:useBean
    }

    public RatingItem(RatingCategory category) {
        this.category = category;
        this.subcategories = category.getSubcategories();
    }

    /*
     * Геттеры
     */
    public RatingCategory getCategory() {
        return category;
    }

    public List<RatingSubcategory> getSubcategories() {
        return subcategories;
    }

    /*
     * Сеттеры
     */
    public void setCategory(RatingCategory category) {
        this.category = category;
    }

    public void setSubcategories(List<RatingSubcategory> subcategories) {
        this.subcategories = subcategories;
    }

}