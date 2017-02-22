package org.verygroup.verybook.session;

public class SessionObject {

    public static final String SESSION_OBJECT_NAME = "sessionObject";

    private String lastPage;
    private ShopCart shopCart = new ShopCart();

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

    public ShopCart getShopCart() {
        return shopCart;
    }

    /*
     * Сеттеры
     */
    public void setLastPage(String lastPage) {
        this.lastPage = lastPage;
    }

    public void setShopCart(ShopCart shopCart) {
        this.shopCart = shopCart;
    }

}