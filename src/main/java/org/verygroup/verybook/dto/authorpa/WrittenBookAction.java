package org.verygroup.verybook.dto.authorpa;

public class WrittenBookAction {
    private WrittenBookActionType type;
    private String name;

    /*
     * Конструкторы
     */
    public WrittenBookAction() {
        // нужен исключительно для задания типа этого класса в jsp через jsp:useBean
    }

    public WrittenBookAction(WrittenBookActionType type, String name) {
        this.type = type;
        this.name = name;
    }

    /*
     * Геттеры
     */
    public WrittenBookActionType getType() {
        return type;
    }

    public String getName() {
        return name;
    }

    /*
     * Сеттеры
     */
    public void setType(WrittenBookActionType type) {
        this.type = type;
    }

    public void setName(String name) {
        this.name = name;
    }
}
