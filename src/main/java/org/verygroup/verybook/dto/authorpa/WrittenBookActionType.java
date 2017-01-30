package org.verygroup.verybook.dto.authorpa;

public enum WrittenBookActionType {
    WITHDRAW("withdraw"), // действия, связанные с отзывом или снятием с публикации
    PUBLISH("publish"); // действия, связанные с отправкой на модерацию

    private String cssClass;

    /*
     * Конструкторы
     */
    WrittenBookActionType(String cssClass) {
        this.cssClass = cssClass;
    }

    /*
     * Геттеры
     */
    public String getCssClass() {
        return cssClass;
    }
}
