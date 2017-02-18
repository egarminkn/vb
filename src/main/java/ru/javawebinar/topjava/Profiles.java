package ru.javawebinar.topjava;

public class Profiles {

    public static final String
            // выбор БД
            POSTGRES = "postgres",
            HSQLDB = "hsqldb",
            HEROKU = "heroku",

            // выбор технологии доступа к данным
            JDBC = "jdbc",
            JPA = "jpa",
            DATAJPA = "datajpa",

            // режим работы
            DEV = "dev", //разработка
            PRODUCT = "prod"; // продакшн

    public static final String ACTIVE_DB = POSTGRES;
    public static final String DB_IMPLEMENTATION = DATAJPA;
    public static final String APP_MODE = DEV;

}