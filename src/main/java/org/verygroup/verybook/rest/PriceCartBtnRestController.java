package org.verygroup.verybook.rest;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.http.MediaType;

import org.verygroup.verybook.dto.PurchaseItem;
import org.verygroup.verybook.session.SessionObject;

import javax.servlet.http.HttpSession;

@RestController
@RequestMapping("/rest")
public class PriceCartBtnRestController {

    @PostMapping(value = "/put-to-cart", consumes = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public int putToCart(@RequestBody PurchaseItem purchaseItem, HttpSession session) {
        SessionObject sessionObject = (SessionObject) session.getAttribute(SessionObject.SESSION_OBJECT_NAME);
        return sessionObject.getShopCart().addPurchaseItem(purchaseItem);
    }

}