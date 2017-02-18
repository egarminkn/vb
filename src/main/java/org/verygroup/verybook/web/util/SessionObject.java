package org.verygroup.verybook.web.util;

public class SessionObject {

    public static final String SESSION_OBJECT_NAME = "sessionObject";

    private String lastPage;

    /*
     * Конструкторы
     */
    public SessionObject() {
        // конструктор по умолчанию
    }

    /*
     * Геттеры
     */
    public String getLastPage() {
        return lastPage;
    }

    /*
     * Сеттеры
     */
    public void setLastPage(String lastPage) {
        this.lastPage = lastPage;
    }

}