package org.verygroup.verybook.web.util;

import org.verygroup.verybook.repository.social.DataDao;
import org.verygroup.verybook.repository.social.UsersDao;
import org.verygroup.verybook.model.social.UserConnection;
import org.verygroup.verybook.model.social.UserProfile;
import org.verygroup.verybook.session.SessionObject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.social.security.SocialAuthenticationToken;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.web.WebAttributes;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.security.Principal;

import java.util.Enumeration;
import java.util.Map;
import java.util.Set;

@Component
public class SocialControllerUtil implements Util {

    private static final Logger LOG = LoggerFactory.getLogger(SocialControllerUtil.class);

    public static final String USER_CONNECTION = "MY_USER_CONNECTION";
    private static final String USER_PROFILE = "MY_USER_PROFILE";

    public static final String CURRENT_USER_CONNECTION = "currentUserConnection";

    @Autowired
    private DataDao dataDao;

    @Autowired
    private UsersDao usersDao;

    @Override
    public void setModel(HttpServletRequest request, Principal currentUser, Model model) {
        HttpSession session = request.getSession();

        if (session.getAttribute(SessionObject.SESSION_OBJECT_NAME) == null) {
            session.setAttribute(SessionObject.SESSION_OBJECT_NAME, new SessionObject());
        }
        SessionObject sessionObject = (SessionObject) session.getAttribute(SessionObject.SESSION_OBJECT_NAME);
        sessionObject.setLastPage(request.getServletPath());

        Throwable exception = (Throwable) session.getAttribute(WebAttributes.AUTHENTICATION_EXCEPTION);
        session.setAttribute(WebAttributes.AUTHENTICATION_EXCEPTION, null);
        model.addAttribute("exception", exception == null ? null : exception.getMessage());

        if (currentUser != null && SocialAuthenticationToken.class.isInstance(currentUser)) {
            // SecurityContext ctx = (SecurityContext) session.getAttribute("SPRING_SECURITY_CONTEXT");

            // Collect info
            String userId = currentUser.getName();

            // Get the current UserConnection from the http session
            UserConnection connection = getUserConnection(session, userId);

            // Get the current UserProfile from the http session
            UserProfile profile = getUserProfile(session, userId);

            // Compile the best display name from the connection and the profile
            String displayName = getDisplayName(connection, profile);

            // Get user data from persistence storage
            String data = dataDao.getData(userId);

            // Update the model with the information we collected
            model.addAttribute("currentUserId", userId);
            model.addAttribute(CURRENT_USER_CONNECTION, connection);
            model.addAttribute("currentUserProfile", profile);
            model.addAttribute("currentUserDisplayName", displayName);
            model.addAttribute("currentData", data);

            if (LOG.isDebugEnabled()) {
                logInfo(request, model, userId, session);
            }
        }
    }

    private void logInfo(HttpServletRequest request, Model model, String userId, HttpSession session) {
        String path = request.getRequestURI();

        // Log the content of the model
        LOG.debug("Path: " + path + ", currentUserId: " + userId);

        LOG.debug("Non-null request-attributes:");
        for (Enumeration<String> rane = request.getAttributeNames(); rane.hasMoreElements();) {
            String key = rane.nextElement();
            Object value = session.getAttribute(key);
            if (value != null) {
                LOG.debug(" - " + key + " = " + value);
            }
        }

        LOG.debug("Session-attributes:");
        for (Enumeration<String> sane = session.getAttributeNames(); sane.hasMoreElements();) {
            String key = sane.nextElement();
            LOG.debug(" - " + key + " = " + session.getAttribute(key));
        }

        Set<Map.Entry<String, Object>> me = model.asMap().entrySet();
        LOG.debug("ModelElements (" + me.size() + "):");
        for (Map.Entry<String, Object> e: me) {
            LOG.debug(" - " + e.getKey() + " = " + e.getValue());
        }
    }

    /**
     * Get the current UserProfile from the http session
     *
     * @param session
     * @param userId
     * @return
     */
    private UserProfile getUserProfile(HttpSession session, String userId) {
        UserProfile profile = (UserProfile) session.getAttribute(USER_PROFILE);

        // Reload from persistence storage if not set or invalid (i.e. no valid userId)
        if (profile == null || !userId.equals(profile.getUserId())) {
            profile = usersDao.getUserProfile(userId);
            session.setAttribute(USER_PROFILE, profile);
        }
        return profile;
    }

    /**
     * Get the current UserConnection from the http session
     *
     * @param session
     * @param userId
     * @return
     */
    private UserConnection getUserConnection(HttpSession session, String userId) {
        UserConnection connection = (UserConnection) session.getAttribute(USER_CONNECTION);

        // Reload from persistence storage if not set or invalid (i.e. no valid userId)
        if (connection == null || !userId.equals(connection.getUserId())) {
            connection = usersDao.getUserConnection(userId);
            session.setAttribute(USER_CONNECTION, connection);
        }
        return connection;
    }

    /**
     * Compile the best display name from the connection and the profile
     *
     * @param connection
     * @param profile
     * @return
     */
    private String getDisplayName(UserConnection connection, UserProfile profile) {
        // The name is set differently in different providers so we better look in both places...
        if (connection.getDisplayName() != null) {
            return connection.getDisplayName();
        } else {
            return profile.getName();
        }
    }

}