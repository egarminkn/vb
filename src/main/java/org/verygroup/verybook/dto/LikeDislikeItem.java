package org.verygroup.verybook.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.verygroup.verybook.BookType;

public class LikeDislikeItem {

    private BookType type;
    private String id;

    /*
     * Конструкторы
     */
    public LikeDislikeItem(@JsonProperty("type") BookType type,
                           @JsonProperty("id") String id) {
        this.type = type;
        this.id = id;
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