package org.verygroup.verybook.web.social;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.verygroup.verybook.web.util.SessionObject;
import org.verygroup.verybook.web.util.SocialControllerUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.security.Principal;

@Controller
public class SocialController {

    @Autowired
    private SocialControllerUtil util;

    /**
     * Если вход через соц.сеть был отменен или прошел неудачно
     */
    @GetMapping("/signin")
    public String signin(HttpServletRequest request, Principal currentUser, Model model) {
        HttpSession session = request.getSession();
        SessionObject sessionObject = (SessionObject) session.getAttribute(SessionObject.SESSION_OBJECT_NAME);
        return "redirect:" + sessionObject.getLastPage() + "#login";
    }

}