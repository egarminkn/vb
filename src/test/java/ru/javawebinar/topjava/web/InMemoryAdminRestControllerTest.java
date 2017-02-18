package ru.javawebinar.topjava.web;

import org.junit.*;

import org.springframework.web.context.support.XmlWebApplicationContext;
import org.springframework.mock.web.MockServletContext;

import ru.javawebinar.topjava.UserTestData;
import ru.javawebinar.topjava.model.User;
import ru.javawebinar.topjava.repository.UserRepository;
import ru.javawebinar.topjava.util.exception.NotFoundException;
import ru.javawebinar.topjava.web.user.AdminRestController;

import java.util.Arrays;
import java.util.Collection;

import static ru.javawebinar.topjava.UserTestData.ADMIN;
import static ru.javawebinar.topjava.UserTestData.USER;

import static ru.javawebinar.topjava.Profiles.APP_MODE;

public class InMemoryAdminRestControllerTest {

    private static XmlWebApplicationContext appCtx;
    private static AdminRestController controller;

    @BeforeClass
    public static void beforeClass() {
        /*
         * Исправление ошибки:
         * java.lang.IllegalStateException: WebApplicationObjectSupport instance [ResourceHttpRequestHandler [locations=[class path resource [resources/]], resolvers=[org.springframework.web.servlet.resource.PathResourceResolver@1d408060]]] does not run in a WebApplicationContext but in: org.springframework.context.support.GenericApplicationContext@65e21ce3: startup date [Sat Feb 18 15:48:13 GMT+03:00 2017]; root of context hierarchy
         * появившейся после включения профиля APP_MODE, путем изменения типа контекста спринга на вебовский
         * (
         * источник:
         * http://stackoverflow.com/questions/21388482/how-do-i-get-my-spring-junit-test-to-think-its-running-in-a-genericapplicationco#41519808
         * )
         */
        appCtx = new XmlWebApplicationContext();
        appCtx.setConfigLocations("spring/spring-app.xml", "spring/spring-mvc.xml", "spring/mock.xml");
        appCtx.getEnvironment().setActiveProfiles(APP_MODE);
        appCtx.setServletContext(new MockServletContext());
        appCtx.refresh();

        System.out.println("\n" + Arrays.toString(appCtx.getBeanDefinitionNames()) + "\n");
        controller = appCtx.getBean(AdminRestController.class);
    }

    @AfterClass
    public static void afterClass() {
//        May cause during JUnit "Cache is not alive (STATUS_SHUTDOWN)" as JUnit share Spring context for speed
//        http://stackoverflow.com/questions/16281802/ehcache-shutdown-causing-an-exception-while-running-test-suite
//        appCtx.close();
    }

    @Before
    public void setUp() throws Exception {
        // Re-initialize
        UserRepository repository = appCtx.getBean(UserRepository.class);
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