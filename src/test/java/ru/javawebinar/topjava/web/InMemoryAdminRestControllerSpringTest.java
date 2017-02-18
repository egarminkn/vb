package ru.javawebinar.topjava.web;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import ru.javawebinar.topjava.UserTestData;
import ru.javawebinar.topjava.model.User;
import ru.javawebinar.topjava.repository.UserRepository;
import ru.javawebinar.topjava.util.exception.NotFoundException;
import ru.javawebinar.topjava.web.user.AdminRestController;

import java.util.Collection;

import static ru.javawebinar.topjava.UserTestData.ADMIN;
import static ru.javawebinar.topjava.UserTestData.USER;

import static ru.javawebinar.topjava.Profiles.APP_MODE;

/*
 * Исправление ошибки:
 * java.lang.IllegalStateException: WebApplicationObjectSupport instance [ResourceHttpRequestHandler [locations=[class path resource [resources/]], resolvers=[org.springframework.web.servlet.resource.PathResourceResolver@1d408060]]] does not run in a WebApplicationContext but in: org.springframework.context.support.GenericApplicationContext@65e21ce3: startup date [Sat Feb 18 15:48:13 GMT+03:00 2017]; root of context hierarchy
 * появившейся после включения профиля APP_MODE, путем добавления @WebAppConfiguration
 * (
 * источник:
 * http://stackoverflow.com/questions/21388482/how-do-i-get-my-spring-junit-test-to-think-its-running-in-a-genericapplicationco#41519808
 * )
 */
@WebAppConfiguration
@ContextConfiguration({"classpath:spring/spring-app.xml", "classpath:spring/spring-mvc.xml", "classpath:spring/mock.xml"})
@ActiveProfiles(APP_MODE)
@RunWith(SpringJUnit4ClassRunner.class)
public class InMemoryAdminRestControllerSpringTest {

    @Autowired
    private AdminRestController controller;

    @Autowired
    private UserRepository repository;

    @Before
    public void setUp() throws Exception {
        repository.getAll().forEach(u -> repository.delete(u.getId()));
        repository.save(USER);
        repository.save(ADMIN);
    }

    @Test
    public void testDelete() throws Exception {
        controller.delete(UserTestData.USER_ID);
        Collection<User> users = controller.getAll();
        Assert.assertEquals(users.size(), 1);
        Assert.assertEquals(users.iterator().next(), ADMIN);
    }

    @Test(expected = NotFoundException.class)
    public void testDeleteNotFound() throws Exception {
        controller.delete(10);
    }

}