[![Codacy Badge](https://api.codacy.com/project/badge/Grade/ab4f0ba4701b402eb1a8db370d496874)](https://www.codacy.com/app/egarminkn/vb?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=egarminkn/vb&amp;utm_campaign=Badge_Grade)

Проект Verybook
===============================
Сайт проекта: http://verybook.org/
Исходники предоставлены для блога: http://verybook.livejournal.com/

Приложение verybook в разных соц.сетях

1) facebook:<br>
    https://developers.facebook.com/apps/313897872341206/dashboard/
2) vk:<br>
    https://vk.com/editapp?id=5865771&section=options
3) twitter:<br>
    https://apps.twitter.com/app/13404749
4) google:<br>
    а) мои домены:<br>
        https://www.google.com/webmasters/verification/home?hl=ru<br>
    б) мой проект (приложение):<br>
        https://console.developers.google.com/apis/credentials?project=verybook-org
5) linkedin:<br>
    https://www.linkedin.com/developer/apps/5075046/auth
6) ok:<br>
    https://ok.ru/game/1249777408

####   Разработка полнофункционального Spring/JPA Enterprise приложения c авторизацией и правами доступа на основе ролей с использованием <a href="http://zeroturnaround.com/rebellabs/java-tools-and-technologies-landscape-for-2014/" target="_blank">наиболее популярных инструментов и технологий Java</a>: Maven, Spring MVC, Security, JPA(Hibernate), REST(Jackson), Bootstrap (css, js), jQuery + plugins (datatables и др.), Java 8 Stream and Time API
-  Основное внимание будет уделяться способам решения многочисленных проблем разработки в Spring/JPA, а также структурному (красивому и надежному) java кодированию и архитектуре приложения.
-  Каждая итерация проекта в закрепляется домашним заданием по реализации схожей функциональности. Следующее занятие начинается с разбора домашних заданий.
-  Большое внимание уделяется тестированию кода: в проекте 88 JUnit тестов.
-  Несмотря на относительно небольшой размер, приложение разрабатывается с нуля как большой проект (например мы используем кэш 2-го уровня Hibernate, настраиваем Jenkins для работы с ленивой загрузкой
Hibernate, делаем конверторы для типов LocalDateTime (Java 8 time API), которые еще не поддерживаются ни JPA/Hibernate, ни Jackson/json).
            Разбираются архитектурные паттерны: слои приложения и как правильно разбивать логику по слоям, когда нужно применять Data Transfer Object.
            Т.е на выходе получается не учебный проект, а хорошо маштабируемый шаблон для большого проекта на всех пройденных технологиях.
-   Большое внимание уделяется деталям: популяция базы, использование транзакционности, тесты сервисов и REST
            контроллеров, насторойка EntityManagerFactory,
            выбор реализации пула коннектов. Особое внимание уделяется работе с базой: через Spring JDBC, Spring ORM и
            Spring Data Jpa.
-   Используются самые востребованные на сегодняшний момент фреймворки: Maven, Spring Security 4
            вместе с Spring Security Test, наиболее удобный для работы с базой проект Spring Data Jpa, библиотека логирования logback, реализующая SLF4J, повсеместно используемый Bootstrap и jQuery.

#### <a href="http://topjava.herokuapp.com/" target=_blank>Демо разрабатываемого приложения</a>

## План проекта (ссылки на некоторые темы открыты для просмотра)
### Архитектура проекта. Персистентность.
-  <a href="https://drive.google.com/file/d/0B9Ye2auQ_NsFSUNrdVc0bDZuX2s">Системы управления версиями</a>
-  <a href="http://www.youtube.com/watch?v=_PDIVhEs6TM">Java 8: Lambda</a>, Stream API
-  Обзор используемых в проекте технологий и инструментов.
-  <a href="https://drive.google.com/open?id=0B9Ye2auQ_NsFSlZMTXBJRXJpakU">Инструмент сборки Maven.</a>
-  WAR. Веб-контейнер Tomcat. Сервлеты.
-  Логирование.
-  Обзор стандартных библиотек. Apache Commons, Guava
-  Слои приложения. Создание каркаса приложения.
-  Обзор Spring Framework. Spring Context.
-  Тестирование через JUnit.
-  <a href="https://drive.google.com/file/d/0B9Ye2auQ_NsFai1veG9qaFZlZ2s/view">Spring Test</a>
-  Базы данных. PostgreSQL. Обзор NoSQL и Java persistence solution без ORM.
-  Настройка Database в IDEA.
-  Скрипты инициализации базы. Spring Jdbc Template.
-  <a href="https://drive.google.com/file/d/0B9Ye2auQ_NsFU0Z2R190eDllYmM/view">Spring: инициализация и популирование DB</a>
-  ORM. Hibernate. JPA.
-  Поддержка HSQLDB
-  Транзакции
-  Профили Maven и Spring
-  <a href="https://drive.google.com/open?id=0B9Ye2auQ_NsFTWJOdHduOWtNcTA">Пул коннектов</a>
-  Spring Data JPA
-  Кэш Hibernate

### Разработка WEB
-  Spring кэш
-  Spring Web
-  JSP, JSTL, i18n
-  Tomcat maven plugin. JNDI
-  Spring Web MVC
-  Spring Internationalization
-  Тестирование Spring MVC
-  REST контроллеры
-  Тестирование REST контроллеров. Jackson.
-  jackson-datatype-hibernate. Тестирование через матчеры.
-  Тестирование через SoapUi. UTF-8
-  WebJars.
-  Bootstrap. Datatables.
-  AJAX. jQuery. Notifications.
-  Spring Security
-  Spring Binding/Validation
-  Работа с Datatables через Ajax.
-  Spring Security Test
-  Encoding password
-  <a href="https://drive.google.com/file/d/0B9Ye2auQ_NsFNDlPZGdUNThzNUU/view">CSRF (добавление в проект защиты от межсайтовой подделки запроса)</a>
-  form-login. Spring Security Taglib
-  Handler interceptor
-  Spring Exception Handling
-  <a href="https://drive.google.com/open?id=0B9Ye2auQ_NsFZkpVM19QWFBOQ2c">Деплой в Heroku</a>
