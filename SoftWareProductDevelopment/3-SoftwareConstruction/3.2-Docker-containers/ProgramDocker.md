### Запуск Java-програми через Docker-контейнер

#### Крок 1. Завантаження Docker-образу openjdk

```bash
docker pull openjdk
```

#### Крок 2. Компіляція Java-програми

```bash
docker run \
  --name boyko-java \
  -w //app \
  -v /${PWD}://app \
  --rm \
  openjdk javac ProgramClientCode.java
```

#### Крок 3. Запуск Java-програми

```bash
docker run \
  --name boyko-java \
  -w //app \
  -v /${PWD}://app \
  --rm \
  openjdk java ProgramClientCode
```
