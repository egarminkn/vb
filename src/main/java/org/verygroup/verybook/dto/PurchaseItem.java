package org.verygroup.verybook.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.verygroup.verybook.BookType;

public class PurchaseItem {

    private BookType type;
    private String id;

    /*
     * Конструкторы
     */
    public PurchaseItem(@JsonProperty("type") BookType type,
                        @JsonProperty("id") String id) {
        this.type = type;
        this.id = id;
    }

    /*
     * Методы класса Object
     */
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        PurchaseItem that = (PurchaseItem) o;

        if (type != that.type) return false;
        return id != null ? id.equals(that.id) : that.id == null;
    }

    @Override
    public int hashCode() {
        int result = type != null ? type.hashCode() : 0;
        result = 31 * result + (id != null ? id.hashCode() : 0);
        return result;
    }

    /*
     * Геттеры
     */
    public BookType getType() {
        return type;
    }

    public String getId() {
        return id;
    }

    /*
     * Сеттеры
     */
    public void setType(BookType type) {
        this.type = type;
    }

    public void setId(String id) {
        this.id = id;
    }

}