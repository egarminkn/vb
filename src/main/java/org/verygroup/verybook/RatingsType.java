package org.verygroup.verybook;

public enum RatingsType {
    EBOOK("электронная книга"),
    AUDIOBOOK("аудиокнига"),
    AUTHOR("автор");

    private String value;

    /*
     * Конструкторы
     */
    RatingsType(String value) {
        this.value = value;
    }

    /*
     * Геттеры
     */
    public String getValue() {
        return value;
    }
}