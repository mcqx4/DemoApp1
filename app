<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Мое Мини-Приложение</title>
    <script src="https://telegram.org/js/telegram-web-app.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            color: var(--tg-theme-text-color);
            background-color: var(--tg-theme-bg-color);
        }
        button {
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <h1>Добро пожаловать в мое мини-приложение!</h1>
    <p>Это простой пример мини-приложения для Telegram.</p>
    <button id="mainButton">Нажми меня</button>

    <script>
        const tg = window.Telegram.WebApp;
        tg.expand();

        const mainButton = document.getElementById('mainButton');
        mainButton.addEventListener('click', () => {
            tg.MainButton.setText("Вы нажали кнопку!").show();
            tg.showAlert("Вы нажали кнопку!");
        });

        // Пример получения информации о пользователе
        if (tg.initDataUnsafe && tg.initDataUnsafe.user) {
            const user = tg.initDataUnsafe.user;
            const welcomeMessage = document.createElement('p');
            welcomeMessage.textContent = `Привет, ${user.first_name} ${user.last_name || ''}!`;
            document.body.appendChild(welcomeMessage);
        }
    </script>
</body>
</html>
