# 🐉 Dofus Market Database  

## 📖 Introduction  
This project was created as part of an introductory course on databases and SQL.  
The objective is to design and implement a relational database representing the **online marketplace of the video game Dofus**, using **PostgreSQL**.  

## 🎮 Context: Dofus and its Marketplace  
**Dofus** is a massively multiplayer online role-playing game (MMORPG) developed by Ankama.  
In this game, players evolve in a medieval-fantasy world where they can:  
- fight monsters,  
- join guilds,  
- craft equipment,  
- and most importantly **trade items through the in-game marketplace** (Auction House).  

The **Dofus market** works like a real e-commerce platform:  
- **Players** list items for sale (weapons, equipment, resources, consumables).  
- Other **players** can purchase these items using **kamas** (the in-game currency).  
- Each transaction generates a **payment**.  

This model is ideal for designing a relational database.  

## 🗄️ Database Model  

Our database contains **5 main tables**:  

### 1. Players  
Represents the game’s players.  
- `player_id` *(PK)*  
- `username` *(player name)*  
- `level` *(player level)*  
- `guild` *(guild name, optional)*  
- `creation_date` *(account creation date)*  

### 2. Items  
Lists all the items that can be sold or bought.  
- `item_id` *(PK)*  
- `name` *(item name)*  
- `type` *(weapon, consumable, resource, dofus…)*  
- `rarity` *(common, rare, epic, legendary)*  
- `description` *(additional information)*  

### 3. Listings  
Represents the items listed for sale by players.  
- `listing_id` *(PK)*  
- `player_id` *(FK → Players)* → the seller  
- `item_id` *(FK → Items)* → the listed item  
- `quantity` *(quantity available)*  
- `price` *(unit price in kamas)*  
- `date_posted` *(listing date)*  

### 4. Orders  
Represents transactions made by buyers.  
- `order_id` *(PK)*  
- `buyer_id` *(FK → Players)* → the buyer  
- `listing_id` *(FK → Listings)* → the purchased listing  
- `quantity` *(quantity purchased)*  
- `total_price` *(total price paid)*  
- `date_order` *(order date)*  

### 5. Payments  
Represents payments associated with orders.  
- `payment_id` *(PK)*  
- `order_id` *(FK → Orders)*  
- `amount` *(amount paid in kamas)*  
- `payment_date` *(payment date)*  

## ✅ Conclusion  
This project demonstrates how to model a real system (the in-game marketplace of Dofus) as a relational database.  
It shows:  
- The creation of a coherent relational schema.  
- The use of primary and foreign keys.  
- The insertion of representative sample data.  
- The ability to query and analyze the system through SQL.  
