------------ | Players | ------------
INSERT INTO Players (username, level, guild, creation_date) VALUES
('AstroCra', 200, 'Eternity', '2020-01-01'),
('NekoMage', 150, 'Moonlight', '2021-03-15'),
('KamaKing', 180, 'GoldenOrder', '2019-11-10'),
('ShadowRogue', 120, 'BlackCrows', '2022-06-22'),
('LunaHealer', 90, 'Moonlight', '2023-02-05');


----------- | Items | ------------

INSERT INTO Items (name, type, rarity, description) VALUES
('Bâton Brageut', 'Arme', 'Légendaire', 'Bâton de feu très puissant'),
('Dofus Turquoise', 'Dofus', 'Rare', 'Augmente le taux de coups critiques'),
('Pain aux céréales', 'Consommable', 'Commun', 'Rend 100 points de vie'),
('Gelano', 'Anneau', 'Rare', 'Ajoute 1 PA'),
('Cape du Minotoror', 'Cape', 'Épique', 'Augmente la vitalité et la force');


------------ | listings | -----------

INSERT INTO Listings (player_id, item_id, quantity, price) VALUES
(1, 1, 1, 5000000),
(2, 3, 50, 1000),
(3, 2, 1, 15000000),
(4, 4, 2, 700000),
(5, 5, 1, 2500000);


------------ | Orders | ------------

INSERT INTO Orders (buyer_id, listing_id, quantity, total_price) VALUES
(2, 1, 1, 5000000),
(1, 2, 10, 10000),
(5, 3, 1, 15000000),
(3, 4, 1, 350000),
(4, 5, 1, 2500000);


------------ | Payments | ------------

INSERT INTO Payments (order_id, amount) VALUES
(1, 5000000),
(2, 10000),
(3, 15000000),
(4, 350000),
(5, 2500000);
