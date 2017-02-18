package org.verygroup.verybook.config.social;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.social.security.SocialUserDetailsService;
import org.springframework.social.security.SpringSocialConfigurer;

import javax.sql.DataSource;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

    @Autowired
    @Qualifier("dataSourceSocial")
    private DataSource dataSource;

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth
            .jdbcAuthentication()
            .dataSource(dataSource);

            /*
             * Исправление ошибки:
             * org.h2.jdbc.JdbcSQLException: Таблица "USERS" уже существует
             * Table "USERS" already exists; SQL statement:
             * create table users(username varchar_ignorecase(50) not null primary key,password varchar_ignorecase(500) not null,enabled boolean not null)
             * связанной с созданием служебных таблиц Spring Security, путем удаления вызова скриптов инициализации БД withDefaultSchema() из этого класса
             * и переноса инициализации БД в контекст спринга spring-social.xml
             * (
             * источник:
             * http://stackoverflow.com/questions/33402489/spring-security-creates-a-table-named-users#33420030
             * }
             */
//            .withDefaultSchema();
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
            .formLogin()
                .loginPage("/index#login")
//                .loginProcessingUrl("/login/authenticate")
//                .failureUrl("/login?param.error=bad_credentials")
        .and()
            .logout()
                .logoutUrl("/exit") // - куда отправлять POST-запрос для выхода
                .logoutSuccessUrl("/index")
                .deleteCookies("JSESSIONID")
        .and()
            .authorizeRequests()
                .antMatchers("/author-pa").authenticated()
                .antMatchers("/**").permitAll()
        .and()
            .rememberMe()
        .and()
            .apply(new SpringSocialConfigurer()
                    .postLoginUrl("/author-pa")
                    .alwaysUsePostLoginUrl(true)
            );
    }

    @Bean
    public SocialUserDetailsService socialUsersDetailService() {
        return new SimpleSocialUsersDetailService(userDetailsService());
    }

}