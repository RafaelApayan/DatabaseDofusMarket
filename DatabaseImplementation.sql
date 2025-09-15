------------- | Table Players | -------------
CREATE TABLE Players (
    player_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    level INT NOT NULL,
    guild VARCHAR(50),
    creation_date DATE DEFAULT CURRENT_DATE
);

------------- | Table Items | -------------
CREATE TABLE Items (
    item_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    type VARCHAR(50),
    rarity VARCHAR(50),
    description TEXT
);

------------- | Table Listings | -------------
CREATE TABLE Listings (
    listing_id SERIAL PRIMARY KEY,
    player_id INT REFERENCES Players(player_id),
    item_id INT REFERENCES Items(item_id),
    quantity INT NOT NULL,
    price INT NOT NULL,
    date_posted TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

------------- | Table Orders | -------------
CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,
    buyer_id INT REFERENCES Players(player_id),
    listing_id INT REFERENCES Listings(listing_id),
    quantity INT NOT NULL,
    total_price INT NOT NULL,
    date_order TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

------------- | Table Payments | -------------
CREATE TABLE Payments (
    payment_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES Orders(order_id),
    amount INT NOT NULL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
