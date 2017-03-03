package org.verygroup.verybook.web.shopcart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.verygroup.verybook.dto.PurchaseItem;
import org.verygroup.verybook.dto.shopcart.ShopCartRow;
import org.verygroup.verybook.session.SessionObject;
import org.verygroup.verybook.session.ShopCart;
import org.verygroup.verybook.web.util.SocialControllerUtil;
import org.verygroup.verybook.web.util.SpecAudiobookUtil;
import org.verygroup.verybook.web.util.SpecEbookUtil;
import org.verygroup.verybook.web.util.ToSearchBookUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.security.Principal;

import java.util.LinkedList;
import java.util.List;

@Controller
public class ShopCartController {

    @Autowired
    private SocialControllerUtil socialUtil;
    @Autowired
    private ToSearchBookUtil searchBookUtil;
    @Autowired
    private SpecEbookUtil specEbookUtil;
    @Autowired
    private SpecAudiobookUtil specAudiobookUtil;

    @GetMapping("/shop-cart")
    public String shopCart(HttpServletRequest request, Principal currentUser, Model model) {
        socialUtil.setModel(request, currentUser, model);
        searchBookUtil.setModel(request, currentUser, model);
        specEbookUtil.setModel(request, currentUser, model);
//        specAudiobookUtil.setModel(request, currentUser, model);

        List<ShopCartRow> mainShopCartRows = new LinkedList<>();
        List<ShopCartRow> spareShopCartRows = new LinkedList<>();

        HttpSession session = request.getSession();
        SessionObject sessionObject = (SessionObject) session.getAttribute(SessionObject.SESSION_OBJECT_NAME);
        ShopCart shopCart = sessionObject.getShopCart();
        for (PurchaseItem purchaseItem : shopCart.getPurchaseItems()) {
            // >>> FIXME заглушка. Сделать выборку книги из БД по ее purchaseItem.getId() и purchaseItem.getType()
            mainShopCartRows.add(new ShopCartRow("resources/vb/img/tmp/book-1.jpg", "Полет над гнездом кукушки", "Александр Константинопольский", "415", "руб"));
            // <<<

            // >>> FIXME заглушка. Сделать выборку из БД книг, связанных с книгой purchaseItem.getId() и purchaseItem.getType()
            spareShopCartRows.add(new ShopCartRow("resources/vb/img/tmp/book-2.jpg", "Как рожать на вершине скалы", "Мария Малиновская", "0", "руб"));
            spareShopCartRows.add(new ShopCartRow("resources/vb/img/tmp/book-3.jpg", "Кто подставил кролика роджера?", "Владимир Вольфович Константинопольский", "230", "руб"));
        }

        model.addAttribute("mainShopCartRows", mainShopCartRows);
        model.addAttribute("spareShopCartRows", spareShopCartRows);

        return "vb/shop-cart";
    }

}