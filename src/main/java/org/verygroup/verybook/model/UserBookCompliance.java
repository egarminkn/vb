package org.verygroup.verybook.model;

import org.verygroup.verybook.BookType;

public class UserBookCompliance {

    private String userId;
    private BookType bookType;
    private String bookId;

    /*
     * Конструкторы
     */
    public UserBookCompliance() {
        // конструктор по умолчанию
    }

    public UserBookCompliance(String userId, BookType bookType, String bookId) {
        this.userId = userId;
        this.bookType = bookType;
        this.bookId = bookId;
    }

    /*
     * Методы класса Object
     */
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UserBookCompliance that = (UserBookCompliance) o;

        if (userId != null ? !userId.equals(that.userId) : that.userId != null) return false;
        if (bookType != that.bookType) return false;
        return bookId != null ? bookId.equals(that.bookId) : that.bookId == null;
    }

    @Override
    public int hashCode() {
        int result = userId != null ? userId.hashCode() : 0;
        result = 31 * result + (bookType != null ? bookType.hashCode() : 0);
        result = 31 * result + (bookId != null ? bookId.hashCode() : 0);
        return result;
    }

    /*
     * Геттеры
     */
    public String getUserId() {
        return userId;
    }

    public BookType getBookType() {
        return bookType;
    }

    public String getBookId() {
        return bookId;
    }

    /*
     * Сеттеры
     */
    public void setUserId(String userId) {
        this.userId = userId;
    }

    public void setBookType(BookType bookType) {
        this.bookType = bookType;
    }

    public void setBookId(String bookId) {
        this.bookId = bookId;
    }

}