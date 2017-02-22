package org.verygroup.verybook;

public enum BookType {

    EBOOK("электронная книга"),
    AUDIOBOOK("аудиокнига");

    private String value;

    BookType(String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }

}