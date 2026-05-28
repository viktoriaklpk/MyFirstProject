CREATE TABLE users (
    user_id NUMBER PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_value VARCHAR(100) NOT NULL,
    CHECK (REGEXP_LIKE(email, '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$')),
    CHECK (REGEXP_LIKE(user_name, '^[A-Za-zА-Яа-яІіЇїЄєҐґ ]{2,50}$'))
);

CREATE TABLE food_places (
    food_place_id NUMBER PRIMARY KEY,
    place_name VARCHAR(100) NOT NULL,
    address_value VARCHAR(150) NOT NULL,
    rating_value FLOAT,
    CHECK (rating_value >= 0 AND rating_value <= 5)
);

CREATE TABLE orders (
    order_id NUMBER PRIMARY KEY,
    order_date DATE NOT NULL,
    order_status VARCHAR(30) NOT NULL,
    order_total NUMBER NOT NULL,
    user_id NUMBER NOT NULL,
    food_place_id NUMBER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (food_place_id) REFERENCES food_places(food_place_id),
    CHECK (order_total > 0)
);

CREATE TABLE artworks (
    artwork_id NUMBER PRIMARY KEY,
    artwork_name VARCHAR(100) NOT NULL,
    author_name VARCHAR(100) NOT NULL,
    style_name VARCHAR(50)
);

CREATE TABLE notifications (
    notification_id NUMBER PRIMARY KEY,
    notification_text VARCHAR(255) NOT NULL,
    notification_type VARCHAR(50) NOT NULL,
    notification_date DATE NOT NULL,
    user_id NUMBER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
