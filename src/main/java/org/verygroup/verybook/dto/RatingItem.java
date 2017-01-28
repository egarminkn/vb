package org.verygroup.verybook.dto;

public class RatingItem {
    private boolean isGrown;
    private int number;
    private String name;

    /*
     * Конструкторы
     */
    public RatingItem() {
        // нужен исключительно для задания типа этого класса в jsp через jsp:useBean
    }

    public RatingItem(boolean isGrown, int number, String name) {
        this.isGrown = isGrown;
        this.number = number;
        this.name = name;
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

    public String getName() {
        return name;
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

    public void setName(String name) {
        this.name = name;
    }
}