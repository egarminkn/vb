package org.verygroup.verybook.dto;

import org.verygroup.verybook.RatingSubcategory;

public class RatingItem {

    private boolean isGrown;
    private int number;
    private RatingSubcategory ratingSubcategory;

    /*
     * Конструкторы
     */
    public RatingItem() {
        // нужен исключительно для задания типа этого класса в jsp через jsp:useBean
    }

    public RatingItem(boolean isGrown, int number, RatingSubcategory ratingSubcategory) {
        this.isGrown = isGrown;
        this.number = number;
        this.ratingSubcategory = ratingSubcategory;
    }

    /*
     * Геттеры
     */
    public boolean isGrown() {
        return isGrown;
    }

    public int getNumber() {
        return number;
    }

    public RatingSubcategory getRatingSubcategory() {
        return ratingSubcategory;
    }

    /*
     * Сеттеры
     */
    public void setGrown(boolean grown) {
        isGrown = grown;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public void setRatingSubcategory(RatingSubcategory ratingSubcategory) {
        this.ratingSubcategory = ratingSubcategory;
    }

}