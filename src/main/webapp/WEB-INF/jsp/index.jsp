<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Главная</title>

    <!-- Yandex.Metrika counter <script type="text/javascript" > (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)}; m[i].l=1*new Date();k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)}) (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym"); ym(63083692, "init", { clickmap:true, trackLinks:true, accurateTrackBounce:true, webvisor:true }); </script> <noscript><div><img src="https://mc.yandex.ru/watch/63083692" style="position:absolute; left:-9999px;" alt="" /></div></noscript> --><!-- /Yandex.Metrika counter -->

    <link rel="stylesheet" href="${contextPath}/resources/css/style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/normalize.css">
</head>
<body class="main-page">
<sec:authorize access="isAuthenticated()">
    <% response.sendRedirect("/main"); %>
</sec:authorize>
<header class="main-header">
    <div class="container">
        <nav class="main-navigation">
            <a class="header-logo">
                <img src="${contextPath}/resources/img/Group_6.svg" alt="Open tracker">
            </a>
            <ul class="user-list">
                <li><a onclick="ym(63083692,'reachGoal','login-button'); return true;" href="/login" class="user-list-link user-list-log">Войти</a></li>
                <li><a onclick="ym(63083692,'reachGoal','registration-button'); return true;" href="/registration" class="user-list-link user-list-link-sign">Зарегистрироваться</a></li>
            </ul>
        </nav>
    </div>
</header>

<main class="main-content">
    <div class="main-desctiption-background">
        <div class="container">
            <div class="column-main-description">
                <section class="start-description">
                    <h1 class="start-description-title">Open Tracker - сервис, который упростит отслеживание
                        подписок на платные продукты</h1>
                    <p class="start-description-about">С нашим сервисом вы всегда будете знать, когда подходит
                        срок истечения подписки, и с легкостью сможете её продлить.
                    </p>
                    <a onclick="ym(63083692,'reachGoal','login-button'); return true;" class="main-desctiption-button" href="/login">Попробовать!</a>
                </section>
                <div>
                    <img class="image-start-description" src="${contextPath}/resources/img/main-photo.png" width="540">
                </div>
            </div>
        </div>
    </div>

    <section class="main-content-features">
        <div class="container">
            <h2 class="visually-hidden">Преимущества сервиса</h2>
            <div class="main-content-column">
                <div class="column-text">
                    <h3 class="features-title">Управляйте вашими подписками</h3>
                    <p class="features-description">Подписки на ваши сервисы будут автоматически добавляться в раздел,
                        в котором вы сможете контролировать их и вносить свои изменения.
                    </p>
                </div>
                <div class="column-image">
                    <img class="photo-features-list" src="${contextPath}/resources/img/phone.jpg" alt="Телефон с планером занятий">
                </div>
            </div>

            <div class="main-content-column">
                <div class="column-image">
                    <img class="photo-features-list" src="${contextPath}/resources/img/peple.jpg" alt="Помощник">
                </div>
                <div class="column-text">
                    <h3 class="features-title">Отслеживайте срок истечения подписки</h3>
                    <p class="features-description">Вам больше не нужно запоминать все используемые услуги.
                        Мы пришлем вам уведомление о заканчивающей подписке.
                    </p>
                </div>
            </div>

            <div class="main-tutorial">
                <a onclick="ym(63083692,'reachGoal','login-button'); return true;" href="/login"><h2 class="tutorial-title">Попробуйте!</h2></a>
                <!-- <img class="tutorial-slider" alt="Обучение" src="img/site.png"> -->
            </div>
        </div>
    </section>



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