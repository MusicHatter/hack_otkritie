<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Регистрация</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/normalize.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/style.css">
</head>
<body class="login-page">
<main class="login-content">
    <div class="container">
        <div class="login-column">
            <a href="/index" class="header-logo">
                <img src="${contextPath}/resources/img/logo_blue.svg" alt="logo">
            </a>
            <div class="login-section">
                <h1 class="input-title">Зарегистрироваться</h1>
                <form:form method="POST" modelAttribute="userForm" class="user-logging">
                    <p>
                        <label class="visually-hidden" for="user-login-input">Email</label>
                        <form:input class="input-login" id="user-login-input" type="email" path="username" placeholder="Почта" autofocus="true"></form:input>
                        <form:errors path="username"></form:errors>
                            ${usernameError}
                        <!--<input class="input-login" id="user-login-input" type="email" name="email" placeholder="Почта">-->
                    </p>
                    <p>
                        <label class="visually-hidden" for="user-login-password">Пароль</label>
                        <form:input class="input-login" id="user-login-password" type="password" path="password" placeholder="Пароль"></form:input>
                        <!--<input class="input-login" id="user-login-password" type="password" name="password" placeholder="Пароль">-->
                    </p>
                    <p>
                        <label class="visually-hidden" for="user-login-password-2">Повторите пароль</label>
                        <form:input class="input-login" id="user-login-password-2" type="password" path="passwordConfirm" placeholder="Повторите пароль"></form:input>
                        <form:errors path="password"></form:errors>
                            ${passwordError}
                        <!--<input class="input-login" id="user-login-password-2" type="password" name="password-2" placeholder="Повторите пароль">-->
                    </p>
                    <button type="submit" class="login-button">Зарегистрироваться</button>
                </form:form>
                <div class="extra-help-login">
                    <a href="/login" class="login-register">Уже есть аккаунт?</a>
                </div>
            </div>
        </div>
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
            <p class="copyright">© Copyright 2020. All rights reserved. </p>
        </div>
    </div>
</footer>
</body>
</html>

