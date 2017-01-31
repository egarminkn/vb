package org.verygroup.verybook;

public enum AudiobookFormat {
    MP3("mp3"),
    WAV("wav");

    private String formatName;

    /*
     * Конструкторы
     */
    AudiobookFormat(String formatName) {
        this.formatName = formatName;
    }

    /*
     * Геттеры
     */
    public String getFormatName() {
        return formatName;
    }
}