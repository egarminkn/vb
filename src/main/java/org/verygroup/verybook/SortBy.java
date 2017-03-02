package org.verygroup.verybook;

public enum SortBy {
    POPULARITY("популярность"),
    RATING("рейтинг"),
    PUBLICATION_DATE("дата публикации"),
    PRICE("цена");

    private String value;

    /*
     * Конструкторы
     */
    SortBy(String value) {
        this.value = value;
    }

    /*
     * Геттеры
     */
    public String getValue() {
        return value;
    }
}