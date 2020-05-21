<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Мои подписки</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/normalize.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/style.css">
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
</body>
</html>