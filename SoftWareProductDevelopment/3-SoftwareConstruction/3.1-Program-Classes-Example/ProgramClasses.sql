CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_value VARCHAR(100) NOT NULL
);

CREATE TABLE food_places (
    food_place_id SERIAL PRIMARY KEY,
    place_name VARCHAR(100) NOT NULL,
    address_value VARCHAR(150)
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    order_date DATE NOT NULL,
    order_total NUMERIC(10,2),
    user_id INTEGER REFERENCES users(user_id),
    food_place_id INTEGER REFERENCES food_places(food_place_id)
);

CREATE TABLE artworks (
    artwork_id SERIAL PRIMARY KEY,
    artwork_name VARCHAR(100),
    author_name VARCHAR(100)
);

CREATE TABLE notifications (
    notification_id SERIAL PRIMARY KEY,
    notification_text VARCHAR(255),
    user_id INTEGER REFERENCES users(user_id)
);
