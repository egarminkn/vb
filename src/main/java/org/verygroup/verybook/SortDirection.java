package org.verygroup.verybook;

public enum SortDirection {
    ASC("asc"),
    DESC("desc");

    private String value;

    /*
     * Конструкторы
     */
    SortDirection(String value) {
        this.value = value;
    }

    /*
     * Геттеры
     */
    public String getValue() {
        return value;
    }
}