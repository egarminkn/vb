package org.verygroup.verybook.dto.searchbook;

public enum AudiobookAuthorType {
    AUTHOR("автор"),
    STORY_TELLER("рассказчик");

    private String name;

    /*
     * Конструкторы
     */
    AudiobookAuthorType(String name) {
        this.name = name;
    }

    /*
     * Геттеры
     */
    public String getName() {
        return name;
    }
}