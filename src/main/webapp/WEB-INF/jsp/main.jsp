<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Мои подписки</title>
    <link rel="stylesheet" href="${contextPath}/css/normalize.css">
    <link rel="stylesheet" href="${contextPath}/css/style.css">
</head>
<body class="inner-page">
<header class="inner-header">
    <div class="container">
        <nav class="page-navigation">
            <a href="index.html"><img class="nav-logo" src="${contextPath}/resources/img/logo_blue.svg" alt="Логотип"></a>
            <ul class="page-list">
                <li>
                    <a class="page-link">Мои подписки</a>
                </li>
                <li>
                    <a class="page-link">Рекомендации</a>
                </li>
                <li>
                    <a class="page-link">Управление подписками</a>
                </li>
                <li>
                    <a class="page-link" href="/logout">Выйти</a>
                </li>
            </ul>
            <div class="profile-section">
                Email
            </div>
        </nav>
    </div>
</header>

<main class="main-inner-section">
    <div class="container">
        <form class="form-search" method="POST">
            <input class="search-input" type="text" placeholder="Найти подписку...">
            <button class="search-button">Найти</button>
        </form>

        <section class="subs-list">
            <h2 class="subs-list-title">Истекает срок подписки</h2>
            <ul class="subs-list-render">
                <li class="subs-list-item">
                    <img class="img-subs" src="${contextPath}/resources/img/peple.jpg">
                    <span class="subs-title">МТС</span>
                    <span class="subs-info-date">Осталось 3 дня!</span>
                </li>
                <li class="subs-list-item">
                    <img class="img-subs" src="${contextPath}/resources/img/peple.jpg">
                    <span class="subs-title">МТС</span>
                    <span class="subs-info-date">Осталось 3 дня!</span>
                </li>
                <li class="subs-list-item">
                    <img class="img-subs" src="${contextPath}/resources/img/peple.jpg">
                    <span class="subs-title">МТС</span>
                    <span class="subs-info-date">Осталось 3 дня!</span>
                </li>
                <li class="subs-list-item">
                    <img class="img-subs" src="${contextPath}/resources/img/peple.jpg">
                    <span class="subs-title">МТС</span>
                    <span class="subs-info-date">Осталось 3 дня!</span>
                </li>
                <li class="subs-list-item">
                    <img class="img-subs" src="${contextPath}/resources/img/peple.jpg">
                    <span class="subs-title">МТС</span>
                    <span class="subs-info-date">Осталось 3 дня!</span>
                </li>
                <li class="subs-list-item">
                    <img class="img-subs" src="${contextPath}/resources/img/peple.jpg">
                    <span class="subs-title">МТС</span>
                    <span class="subs-info-date">Осталось 3 дня!</span>
                </li>
            </ul>
        </section>

        <section class="subs-list">
            <h2 class="subs-list-title">Все подписки</h2>
            <ul class="subs-list-render">
                <li class="subs-list-item">
                    <img class="img-subs" src="${contextPath}/resources/img/peple.jpg">
                    <span class="subs-title">МТС</span>
                    <span class="subs-info-date">Осталось 3 дня!</span>
                </li>
                <li class="subs-list-item">
                    <img class="img-subs" src="${contextPath}/resources/img/peple.jpg">
                    <span class="subs-title">МТС</span>
                    <span class="subs-info-date">Осталось 3 дня!</span>
                </li>
                <li class="subs-list-item">
                    <img class="img-subs" src="${contextPath}/resources/img/peple.jpg">
                    <span class="subs-title">МТС</span>
                    <span class="subs-info-date">Осталось 3 дня!</span>
                </li>
                <li class="subs-list-item">
                    <img class="img-subs" src="${contextPath}/resources/img/peple.jpg">
                    <span class="subs-title">МТС</span>
                    <span class="subs-info-date">Осталось 3 дня!</span>
                </li>
                <li class="subs-list-item">
                    <img class="img-subs" src="${contextPath}/resources/img/peple.jpg">
                    <span class="subs-title">МТС</span>
                    <span class="subs-info-date">Осталось 3 дня!</span>
                </li>
                <li class="subs-list-item">
                    <img class="img-subs" src="${contextPath}/resources/img/peple.jpg">
                    <span class="subs-title">МТС</span>
                    <span class="subs-info-date">Осталось 3 дня!</span>
                </li>
            </ul>
        </section>

        <section class="subs-list">
            <h2 class="subs-list-title">Все подписки</h2>
            <ul class="subs-list-render">
                <li class="subs-list-item">
                    <img class="img-subs" src="${contextPath}/resources/img/peple.jpg">
                    <span class="subs-title">МТС</span>
                    <span class="subs-info-date">Осталось 3 дня!</span>
                </li>
                <li class="subs-list-item">
                    <img class="img-subs" src="${contextPath}/resources/img/peple.jpg">
                    <span class="subs-title">МТС</span>
                    <span class="subs-info-date">Осталось 3 дня!</span>
                </li>
                <li class="subs-list-item">
                    <img class="img-subs" src="${contextPath}/resources/img/peple.jpg">
                    <span class="subs-title">МТС</span>
                    <span class="subs-info-date">Осталось 3 дня!</span>
                </li>
                <li class="subs-list-item">
                    <img class="img-subs" src="${contextPath}/resources/img/peple.jpg">
                    <span class="subs-title">МТС</span>
                    <span class="subs-info-date">Осталось 3 дня!</span>
                </li>
                <li class="subs-list-item">
                    <img class="img-subs" src="${contextPath}/resources/img/peple.jpg">
                    <span class="subs-title">МТС</span>
                    <span class="subs-info-date">Осталось 3 дня!</span>
                </li>
                <li class="subs-list-item">
                    <img class="img-subs" src="${contextPath}/resources/img/peple.jpg">
                    <span class="subs-title">МТС</span>
                    <span class="subs-info-date">Осталось 3 дня!</span>
                </li>
            </ul>
        </section>
    </div>
</main>

<footer class="main-footer">
    <div class="container">
        <div class="footer-content">
            <ul class="footer-list">
                <li class="footer-list-item">
                    <a href="#">Правила</a>
                </li>
                <li class="footer-list-item">
                    <a href="#">Контакты</a>
                </li>
                <li class="footer-list-item">
                    <a href="#">О нас</a>
                </li>
                <li class="footer-list-item">
                    <a href="#">Настройки</a>
                </li>
                <li class="footer-list-item">
                    <a href="#">Приватность</a>
                </li>
            </ul>
            <p class="copytight">© Copyright 2020. All rights reserved. </p>
        </div>
    </div>
</footer>
<section class="modal-info">
    <h2>Информация</h2>
    <form action="#" method="POST">
        <div class="money-subs-column">
            <p class="money-subs-title">Название</p>
            <p class="money-subs-cost">Стоимость</p>
        </div>
        <p class="money-subs-description">Описание</p>
        <div>
            <p class="money-subs-about">Когда заканчивается подписка:</p>
            <p class="money-subs-date-end">05.05.2020</p>
        </div>
        <div class="money-subs-column">
            <input class="money-subs-btn-del" type="button" value="Удалить">
            <input class="money-subs-btn-edit" type="button" value="Редактировать">
        </div>
    </form>
</section>


<section class="modal-add">
    <h2>Редактировать подписку</h2>
    <form:form method="POST" modelAttribute="addServiceForm" class="add-service">
        <div class="money-subs-column">
            <form:input class="money-subs-title-input" type="text" path="name" placeholder="Название"></form:input>
            <form:input class="money-subs-cost-input" type="text" path="price" placeholder="Стоимость"></form:input>
        </div>
        <form:input class="money-subs-description-input" type="text" path="description" placeholder="Описание"></form:input>
        <div>
            <p class="money-subs-about">Когда заканчивается подписка:</p>
            <form:input class="money-subs-date-end-input" type="date" path="expire" placeholder="Дата окончания"></form:input>
        </div>
        <div class="money-subs-column">
            <!--<input class="money-subs-btn-del" type="submit" value="Удалить">-->
            <input class="money-subs-btn-save" type="submit" value="Сохранить">
        </div>
    </form:form>
</section>
</body>
</html>