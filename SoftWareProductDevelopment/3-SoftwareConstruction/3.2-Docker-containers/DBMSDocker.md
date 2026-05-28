### Робота з Docker-контейнером PostgreSQL

#### Крок 1. Завантаження Docker-образу PostgreSQL

```bash
docker pull postgres
```

#### Крок 2. Запуск Docker-контейнера PostgreSQL

```bash
docker run \
  --name boyko-postgres \
  -p 5455:5432 \
  -e POSTGRES_PASSWORD=1234 \
  -w /scripts \
  -v ${PWD}:/scripts \
  -d \
  --rm \
  postgres
```

#### Крок 3. Вхід у контейнер

```bash
docker exec -it boyko-postgres bash
```

#### Крок 4. Створення бази даних

```bash
createdb safefoodartdb -U postgres
```

#### Крок 5. Завантаження SQL-скриптів

```bash
psql -U postgres -d safefoodartdb < /scripts/ProgramClasses.sql
psql -U postgres -d safefoodartdb < /scripts/LoginUserFunction.sql
```

#### Крок 6. Вихід з контейнера

```bash
exit
```

#### Крок 7. Зупинка контейнера

```bash
docker stop boyko-postgres
```
