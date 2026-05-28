FROM postgres

LABEL author="Viktoria Boyko"
LABEL description="SafeFoodArt PostgreSQL database image"
LABEL version="1.0"

ENV POSTGRES_DB=safefoodartdb
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=1234

COPY ProgramClasses.sql /docker-entrypoint-initdb.d/ProgramClasses.sql
COPY LoginUserFunction.sql /docker-entrypoint-initdb.d/LoginUserFunction.sql
