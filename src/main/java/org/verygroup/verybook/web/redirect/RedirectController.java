package org.verygroup.verybook.web.redirect;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.verygroup.verybook.web.util.SessionObject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.security.Principal;

@Controller
public class RedirectController {

    @GetMapping("/")
    public String home() {
        return "redirect:/index";
    }

    @GetMapping("/current-page")
    public String currentPage(HttpServletRequest request, Principal currentUser, Model model) {
        HttpSession session = request.getSession();
        SessionObject sessionObject = (SessionObject) session.getAttribute(SessionObject.SESSION_OBJECT_NAME);
        return "redirect:" + sessionObject.getLastPage();
    }

    /**
     * Если вход через соц.сеть был отменен или прошел неудачно
     */
    @GetMapping("/signin")
    public String signinSocial(HttpServletRequest request, Principal currentUser, Model model) {
        HttpSession session = request.getSession();
        SessionObject sessionObject = (SessionObject) session.getAttribute(SessionObject.SESSION_OBJECT_NAME);
        return "redirect:" + sessionObject.getLastPage() + "#login";
    }

}