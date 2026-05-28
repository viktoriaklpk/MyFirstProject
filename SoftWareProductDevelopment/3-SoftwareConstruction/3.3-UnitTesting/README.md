### Модульне тестування

Для модульного тестування використовується функція `login_user`, створена у файлі `LoginUserFunction.sql`.

#### Тестові сценарії

| TC ID | Вхідні дані | Очікуваний результат |
|---|---|---|
| TC1.1 | email = user@gmail.com, password = 12345678 | 1 |
| TC1.2 | email = usergmail.com, password = 12345678 | -1 |
| TC1.3 | email = user@gmail.com, password = 1234567 | -2 |

#### SQL-виклики для тестування

```sql
SELECT login_user('user@gmail.com', '12345678');
SELECT login_user('usergmail.com', '12345678');
SELECT login_user('user@gmail.com', '1234567');
