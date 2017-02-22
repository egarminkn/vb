package org.verygroup.verybook.session;

import org.verygroup.verybook.BookType;
import org.verygroup.verybook.dto.PurchaseItem;

import java.util.HashSet;
import java.util.Set;

public class ShopCart {

    private Set<PurchaseItem> purchaseItems = new HashSet<>();

    /*
     * Конструкторы
     */
    public ShopCart() {
        // конструктор по умолчанию
    }

    /*
     * Методы
     */
    public int addPurchaseItem(PurchaseItem purchaseItem) {
        purchaseItems.add(purchaseItem);
        return purchaseItems.size();
    }

    public boolean containsPurchaseItem(BookType type, String id) {
        return purchaseItems.contains(new PurchaseItem(type, id));
    }

    /*
     * Геттеры
     */
    public Set<PurchaseItem> getPurchaseItems() {
        return purchaseItems;
    }

    /*
     * Сеттеры
     */
    public void setPurchaseItems(Set<PurchaseItem> purchaseItems) {
        this.purchaseItems = purchaseItems;
    }

}