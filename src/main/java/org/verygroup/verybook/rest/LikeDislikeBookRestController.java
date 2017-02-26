package org.verygroup.verybook.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.security.SocialAuthenticationToken;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.http.MediaType;

import org.verygroup.verybook.dto.LikeDislikeItem;
import org.verygroup.verybook.model.social.UserConnection;
import org.verygroup.verybook.repository.social.UsersDao;
import org.verygroup.verybook.service.UserBooksService;
import org.verygroup.verybook.web.util.SocialControllerUtil;

import javax.servlet.http.HttpSession;
import java.security.Principal;

@RestController
@RequestMapping("/rest")
public class LikeDislikeBookRestController {

    @Autowired
    private UserBooksService userBooksService;

    @Autowired
    private UsersDao usersDao;

    private String getLogin(HttpSession session, Principal currentUser) {
        String login = null;
        if (currentUser != null && SocialAuthenticationToken.class.isInstance(currentUser)) {
            String userId = currentUser.getName();
            UserConnection userConnection = (UserConnection) session.getAttribute(SocialControllerUtil.USER_CONNECTION);
            if (userConnection == null || !userId.equals(userConnection.getUserId())) {
                userConnection = usersDao.getUserConnection(userId);
                session.setAttribute(SocialControllerUtil.USER_CONNECTION, userConnection);
            }

            // FIXME временно сделал логин по имени соц.сети
            //login = userConnection.getProviderId() + "-" + userConnection.getProviderUserId();
            login = userConnection.getProviderId();
        }
        return login;
    }

    @PutMapping(value = "/like-book", consumes = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public boolean likeBook(HttpSession session, Principal currentUser, @RequestBody LikeDislikeItem likeDislikeItem) {
        String login = getLogin(session, currentUser);
        return userBooksService.likeDislikeBook(login, likeDislikeItem.getType(), likeDislikeItem.getId(), true);
    }

    @PutMapping(value = "/dislike-book", consumes = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public boolean dislikeBook(HttpSession session, Principal currentUser, @RequestBody LikeDislikeItem likeDislikeItem) {
        String login = getLogin(session, currentUser);
        return userBooksService.likeDislikeBook(login, likeDislikeItem.getType(), likeDislikeItem.getId(), false);
    }

}