package org.verygroup.verybook;

public enum BookFormat {
    EPUB("epub"),
    PDF("pdf");

    private String formatName;

    /*
     * Конструкторы
     */
    BookFormat(String formatName) {
        this.formatName = formatName;
    }

    /*
     * Геттеры
     */
    public String getFormatName() {
        return formatName;
    }
}