package org.verygroup.verybook.web.redirect;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import org.verygroup.verybook.web.util.SessionObject;

import javax.servlet.http.HttpSession;

@Controller
public class RedirectController {

    @GetMapping("/")
    public String home() {
        return "redirect:/index";
    }

    @GetMapping("/current-page")
    public String currentPage(HttpSession session) {
        SessionObject sessionObject = (SessionObject) session.getAttribute(SessionObject.SESSION_OBJECT_NAME);
        return "redirect:" + sessionObject.getLastPage();
    }

    /**
     * Если вход через соц.сеть был отменен или прошел неудачно
     */
    @GetMapping("/signin")
    public String signinSocial(HttpSession session) {
        SessionObject sessionObject = (SessionObject) session.getAttribute(SessionObject.SESSION_OBJECT_NAME);
        return "redirect:" + sessionObject.getLastPage() + "#login";
    }

}