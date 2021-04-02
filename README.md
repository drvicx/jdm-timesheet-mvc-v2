# jdm2
Some experiments with JavaEE "Timesheet" web App from "drvicx/jdm" repo<hr/>


<b>=ИСТОРИЯ ИЗМЕНЕНИЙ:</b><br/>
*сначала самые новые;<br/>
<hr/>

06: 20210401: Connect DB
- на Linux Ubuntu сервер устанавлена СУБД HSQLDB (HyperSQL DataBase);
- на серврер скопирован рабочий каталог содержащий скрипты описания БД из проекта drvicx/jdm.timesheet;
- создан скрипт "HSQL_start.sh" запускающий СУБД;
- создан скрипт "HSQL_stop.sh" безопасно останавливающий СУБД;
- добавлены необходимые зависимости в pom.xml;
- создана конфигурация подключения к БД в "persistence.xml";
- создана конфигурация JPA в "JpaConfig.java;
- внесены изменения в Модель: создаем Интерфейс "UserRepository.java";
- вносены изменения в Контроллер: добавляем связь с данными в Модели (в БД);
- внесены изменения в Вид: "user/form.jsp", "user/list.jsp", "index.jsp";
- добавлены CSS-стили ко всем JSP страницам;
<hr/>  

05: 20210315: Model and View
- создана Модель: класс "User" и тестовые данные;
- создан Вид: созданы разделы "/user" и "/user/list";
- внесены изменения в Контроллер: добавлены маршруты к новым разделам;
- добавлены ссылки на разделы на странице "index.jsp";
- проверена работа разделов:<br/>
  http://locahost:8080/timesheet2/user <br/>
  http://locahost:8080/timesheet2/user/list <br/>
- приложение "timesheet2" обновлено на: <br/>
  http://dotspace.ru:8080/timesheet2
<hr/>

04: 20210315: Create Main Page:
- создан каркас основной страницы "index.jsp";
- создан Контроллер и настроена маршрутизация к странице "index.jsp";
- настроен автоматический запуск веб-приложения из IDE на локальном веб-сервере
- проверена работа основного раздела: <br/>
  http://locahost:8080/timesheet2
- веб-приложение размещено на облачном веб-сервере: <br/>
  https://dotspace.ru <br/>
  http://dotspace.ru:8080/timesheet2
<hr/>

03: 20210315: Create Spring MVC Application:
- создан каркас SpringMVC - приложения;
- настроен локальный контейнер сервлетов Apache Tomcat (веб-сервер);
- настроен автоматический деплой веб-приложения из IDE на веб-сервер
  и проверена работа основного раздела веб-приложения: <br/>
  http://locahost:8080/timesheet2
<hr/>

02: 20210315: Create Remote GitHub Project and Sync with local:
- на GitHub создан репозиторий, добавлен проект "Timesheet2", создан первый "issue";
- произведена выгрузка каркаса Локального Maven-проекта (ветки "create-maven-project") из IDE в GitHub аккаунт;
- на GitHub создан первый "Pull Request" на слияние изменений с веткой "main";
<hr/>

01: 20210315: Create Local Maven Project:
- в IDE с помощью артефакта создан каркас Maven-проекта и подключены базовые зависимости в "pom.xml";
<hr/>


00: Base System Requirements | Базовые системные требования:

--dev env | среда разработки:
- OS Windows 7/10
- IDE IntelliJ IDEA Ultimate Edition 2020.3.2
- Oracle Java SE 1.8.0_231 JDK
- Git клиент для Windows 2.28.0.windows.1
- Apache Maven 3.6.3
- Apache Tomcat 9.0.43
- Java In-Memory BD HSQLBD 2.5.1

--prod env | среда запуска:
- OS Linux Ubuntu Server 20.04 LTS  
- Oracle Java SE 1.8.0_231 JDK
- Apache Tomcat 9.0.43
- Java In-Memory СУБД HSQLBD 2.5.1
