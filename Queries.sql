-------- | list all items for sale with seller and price | -------------

SELECT 
    l.listing_id,
    i.name AS item_name,
    l.quantity,
    l.price,
    p.username AS seller
FROM Listings l
JOIN Items i ON l.item_id = i.item_id
JOIN Players p ON l.player_id = p.player_id
ORDER BY l.date_posted DESC;

-------- | Show all purchases of a given player | -------------

SELECT 
    o.order_id,
    i.name AS item_name,
    o.quantity,
    o.total_price,
    o.date_order
FROM Orders o
JOIN Listings l ON o.listing_id = l.listing_id
JOIN Items i ON l.item_id = i.item_id
WHERE o.buyer_id = 2; -- example: player with player_id = 2

-------- | Calculate total sales (kamas) per salesperson | -------------

SELECT 
    p.username AS seller,
    SUM(o.total_price) AS total_sales
FROM Orders o
JOIN Listings l ON o.listing_id = l.listing_id
JOIN Players p ON l.player_id = p.player_id
GROUP BY p.username
ORDER BY total_sales DESC;

-------- | Find the best-selling items | -------------

SELECT 
    i.name AS item_name,
    SUM(o.quantity) AS total_sold
FROM Orders o
JOIN Listings l ON o.listing_id = l.listing_id
JOIN Items i ON l.item_id = i.item_id
GROUP BY i.name
ORDER BY total_sold DESC;

-------- | List recent payments | -------------

SELECT 
    pay.payment_id,
    o.order_id,
    pay.amount,
    pay.payment_date,
    b.username AS buyer,
    s.username AS seller
FROM Payments pay
JOIN Orders o ON pay.order_id = o.order_id
JOIN Players b ON o.buyer_id = b.player_id
JOIN Listings l ON o.listing_id = l.listing_id
JOIN Players s ON l.player_id = s.player_id
ORDER BY pay.payment_date DESC;
