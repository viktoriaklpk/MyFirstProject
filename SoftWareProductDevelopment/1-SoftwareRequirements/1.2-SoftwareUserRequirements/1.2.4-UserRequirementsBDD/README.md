### BDD-специфікація вимог користувача

Feature: Food and safety support system

As a user
In order to receive food services, security notifications and professional communication
I want to use one mobile application.

Scenario 1: Ordering food
Given користувач авторизований у системі
When користувач обирає заклад харчування
And додає страву до кошика
Then система формує замовлення
And надсилає його до сервісу доставки

Scenario 2: Receiving security notification
Given користувач увімкнув геолокацію
When у районі виникає небезпечна ситуація
Then система надсилає сповіщення користувачу

Scenario 3: Viewing painting materials
Given користувач відкрив розділ живопису
When користувач обирає навчальний матеріал
Then система відображає відео та опис матеріалу
