package org.verygroup.verybook.web.util;

import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;

public interface Util {

    void setModel(HttpServletRequest request, Principal currentUser, Model model);

}