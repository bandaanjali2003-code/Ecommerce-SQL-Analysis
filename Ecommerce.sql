-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    country VARCHAR(50)
);

-- Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

-- Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Order Items Table
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers VALUES
(1,'Aarav Sharma','aarav@example.com','India'),
(2,'Emily Davis','emily@example.com','USA'),
(3,'Rohan Patel','rohan@example.com','India'),
(4,'Sophia Miller','sophia@example.com','UK'),
(5,'Liam Wilson','liam@example.com','Canada'),
(6,'Noah Brown','noah@example.com','Australia'),
(7,'Mia Johnson','mia@example.com','USA'),
(8,'Lucas Martin','lucas@example.com','France'),
(9,'Olivia Garcia','olivia@example.com','Spain'),
(10,'Ethan Moore','ethan@example.com','India'),
(11,'Arjun Reddy','arjun@example.com','India'),
(12,'Harini Rao','harini@example.com','India'),
(13,'Vikram Singh','vikram@example.com','India'),
(14,'Alicia Gomez','alicia@example.com','Mexico'),
(15,'Grace Lee','grace@example.com','South Korea'),
(16,'Kevin White','kevin@example.com','USA'),
(17,'William Scott','william@example.com','UK'),
(18,'Daniel King','daniel@example.com','Canada'),
(19,'Ava Lewis','ava@example.com','USA'),
(20,'Isabella Hall','isabella@example.com','Germany'),
(21,'Benjamin Young','ben@example.com','USA'),
(22,'Chloe Turner','chloe@example.com','France'),
(23,'Ryan Adams','ryan@example.com','USA'),
(24,'Saanvi Gupta','saanvi@example.com','India'),
(25,'Ananya Iyer','ananya@example.com','India'),
(26,'Devansh Mehta','devansh@example.com','India'),
(27,'Prisha Sharma','prisha@example.com','India'),
(28,'Emma Clark','emma@example.com','UK'),
(29,'Jack Harris','jack@example.com','USA'),
(30,'Henry Martin','henry@example.com','Germany'),
(31,'Aditi Rao','aditi@example.com','India'),
(32,'Nina Krish','nina@example.com','India'),
(33,'Aaryan Joshi','aaryan@example.com','India'),
(34,'Sarthak Menon','sarthak@example.com','India'),
(35,'Tara Singh','tara@example.com','India'),
(36,'Karan Yadav','karan@example.com','India'),
(37,'Sohan Lal','sohan@example.com','India'),
(38,'Pooja Nair','pooja@example.com','India'),
(39,'John Walker','john@example.com','USA'),
(40,'David Wright','david@example.com','USA'),
(41,'Meera Kapoor','meera@example.com','India'),
(42,'Sia Fernandes','sia@example.com','India'),
(43,'Veer Khanna','veer@example.com','India'),
(44,'Ishaan Vora','ishaan@example.com','India'),
(45,'Aarohi Sheth','aarohi@example.com','India'),
(46,'Maya Desai','maya@example.com','India'),
(47,'Nikhil Jain','nikhil@example.com','India'),
(48,'Kabir Bose','kabir@example.com','India'),
(49,'Zara Ali','zara@example.com','India'),
(50,'Riya Shah','riya@example.com','India');

INSERT INTO products VALUES
(1,'Laptop Pro 15','Electronics',95000),
(2,'Laptop Air 13','Electronics',72000),
(3,'Gaming Mouse','Electronics',2500),
(4,'Mechanical Keyboard','Electronics',4500),
(5,'4K Monitor','Electronics',23000),
(6,'USB-C Cable','Accessories',500),
(7,'Wireless Charger','Accessories',1500),
(8,'Bluetooth Speaker','Electronics',3200),
(9,'Smartwatch X','Wearables',15000),
(10,'Smartwatch Lite','Wearables',8000),
(11,'Noise Cancelling Headphones','Electronics',12000),
(12,'Backpack Tech','Bags',2000),
(13,'Office Chair','Furniture',9500),
(14,'Desk Lamp','Furniture',1200),
(15,'Water Bottle','Accessories',300),
(16,'Running Shoes','Sports',4500),
(17,'Cricket Bat','Sports',6000),
(18,'Football','Sports',800),
(19,'Tennis Racket','Sports',3500),
(20,'Yoga Mat','Sports',900),
(21,'Portable SSD 1TB','Electronics',10000),
(22,'Hard Drive 2TB','Electronics',6000),
(23,'Router X1500','Electronics',3000),
(24,'Router Ultra','Electronics',5500),
(25,'Power Bank 20000mAh','Electronics',1800),
(26,'Drone Pro','Gadgets',55000),
(27,'Drone Mini','Gadgets',25000),
(28,'DSLR Camera','Electronics',45000),
(29,'Tripod Stand','Accessories',900),
(30,'Memory Card 64GB','Accessories',700),
(31,'Pen Drive 32GB','Accessories',400),
(32,'Graphic Tablet','Electronics',15000),
(33,'Stylus Pen','Accessories',800),
(34,'Home Theatre','Electronics',18000),
(35,'LED Bulb Pack','Home',350),
(36,'Electric Kettle','Home',1200),
(37,'Air Fryer','Home',4500),
(38,'Microwave Oven','Home',9000),
(39,'Vacuum Cleaner','Home',5500),
(40,'Hair Dryer','Beauty',1000),
(41,'Perfume Classic','Beauty',1500),
(42,'Lipstick Set','Beauty',800),
(43,'Face Wash','Beauty',250),
(44,'Moisturizer','Beauty',400),
(45,'Shampoo','Beauty',350),
(46,'Conditioner','Beauty',300),
(47,'Handbag Leather','Bags',4500),
(48,'Sling Bag','Bags',1800),
(49,'Wallet','Bags',700),
(50,'Sunglasses','Accessories',1200),
(51,'Watch Analog','Accessories',900),
(52,'Watch Digital','Accessories',1500),
(53,'Bluetooth Earbuds','Electronics',2500),
(54,'TV 43 Inch','Electronics',35000),
(55,'TV 55 Inch','Electronics',52000),
(56,'Keyboard Basic','Electronics',600),
(57,'Mouse Basic','Electronics',400),
(58,'Shoes Casual','Fashion',2200),
(59,'Jacket Winter','Fashion',3500),
(60,'T-Shirt','Fashion',500),
(61,'Jeans','Fashion',1500),
(62,'Formal Shirt','Fashion',900),
(63,'Watch Premium','Accessories',7500),
(64,'Camera Lens','Electronics',25000),
(65,'Projector HD','Electronics',28000),
(66,'Speaker Bar','Electronics',5000),
(67,'Washing Machine','Home',25000),
(68,'Refrigerator','Home',30000),
(69,'AC 1.5 Ton','Home',42000),
(70,'Cooler','Home',5000),
(71,'Heater','Home',1500),
(72,'Mixer Grinder','Home',3000),
(73,'Rice Cooker','Home',2000),
(74,'Induction Stove','Home',2500),
(75,'Juicer','Home',3500),
(76,'Sandwich Maker','Home',1500),
(77,'Coffee Maker','Home',4000),
(78,'Toaster','Home',1200),
(79,'Table Fan','Home',1400),
(80,'Ceiling Fan','Home',2500);

INSERT INTO orders VALUES
(1, 1, '2024-01-05', 95000),
(2, 5, '2024-01-08', 4500),
(3, 12, '2024-01-10', 15000),
(4, 20, '2024-01-11', 3200),
(5, 7, '2024-01-12', 55000),
(6, 14, '2024-01-14', 8000),
(7, 28, '2024-01-15', 45000),
(8, 35, '2024-01-16', 4000),
(9, 10, '2024-01-18', 12000),
(10, 22, '2024-01-19', 900),
(11, 47, '2024-01-20', 1800),
(12, 44, '2024-01-21', 6000),
(13, 3, '2024-01-22', 1500),
(14, 19, '2024-01-22', 2500),
(15, 31, '2024-01-23', 4500),
(16, 32, '2024-01-24', 2500),
(17, 26, '2024-01-25', 18000),
(18, 49, '2024-01-26', 35000),
(19, 48, '2024-01-28', 52000),
(20, 11, '2024-01-29', 7000),
(21, 14, '2024-01-30', 2500),
(22, 37, '2024-02-01', 4800),
(23, 6, '2024-02-02', 15000),
(24, 18, '2024-02-03', 32000),
(25, 25, '2024-02-04', 5200),
(26, 9, '2024-02-05', 11000),
(27, 41, '2024-02-06', 7000),
(28, 12, '2024-02-07', 8500),
(29, 4, '2024-02-08', 2600),
(30, 33, '2024-02-09', 4900),
(31, 28, '2024-02-10', 12500),
(32, 40, '2024-02-11', 3400),
(33, 21, '2024-02-12', 9000),
(34, 10, '2024-02-13', 2200),
(35, 45, '2024-02-14', 17500),
(36, 2, '2024-02-15', 5500),
(37, 8, '2024-02-16', 4200),
(38, 34, '2024-02-17', 18000),
(39, 49, '2024-02-18', 7900),
(40, 5, '2024-02-19', 5600),
(41, 17, '2024-02-20', 13200),
(42, 31, '2024-02-21', 2700),
(43, 35, '2024-02-22', 3300),
(44, 38, '2024-02-23', 21000),
(45, 16, '2024-02-24', 4500),
(46, 50, '2024-02-25', 19000),
(47, 30, '2024-02-26', 2400),
(48, 29, '2024-02-27', 9500),
(49, 27, '2024-02-28', 8700),
(50, 46, '2024-02-29', 12900),
(51, 24, '2024-03-01', 2500),
(52, 18, '2024-03-02', 45000),
(53, 12, '2024-03-03', 5600),
(54, 3, '2024-03-04', 1900),
(55, 41, '2024-03-05', 2800),
(56, 19, '2024-03-06', 7500),
(57, 39, '2024-03-07', 33000),
(58, 11, '2024-03-08', 8900),
(59, 22, '2024-03-09', 5600),
(60, 1, '2024-03-10', 21000),
(61, 40, '2024-03-11', 4000),
(62, 43, '2024-03-12', 2400),
(63, 6, '2024-03-13', 17500),
(64, 32, '2024-03-14', 1600),
(65, 9, '2024-03-15', 900),
(66, 37, '2024-03-16', 19500),
(67, 48, '2024-03-17', 5200),
(68, 26, '2024-03-18', 3100),
(69, 15, '2024-03-19', 8500),
(70, 14, '2024-03-20', 24500),
(71, 7, '2024-03-21', 1400),
(72, 17, '2024-03-22', 49000),
(73, 23, '2024-03-23', 3200),
(74, 28, '2024-03-24', 5000),
(75, 13, '2024-03-25', 4600),
(76, 35, '2024-03-26', 10000),
(77, 29, '2024-03-27', 7200),
(78, 33, '2024-03-28', 6500),
(79, 8, '2024-03-29', 9000),
(80, 30, '2024-03-30', 2800),
(81, 47, '2024-03-31', 15500),
(82, 25, '2024-04-01', 900),
(83, 50, '2024-04-02', 14000),
(84, 44, '2024-04-03', 1100),
(85, 39, '2024-04-04', 16500),
(86, 11, '2024-04-05', 2400),
(87, 20, '2024-04-06', 2700),
(88, 18, '2024-04-07', 8900),
(89, 12, '2024-04-08', 13000),
(90, 46, '2024-04-09', 5600),
(91, 36, '2024-04-10', 2100),
(92, 24, '2024-04-11', 6300),
(93, 15, '2024-04-12', 7500),
(94, 5, '2024-04-13', 6500),
(95, 42, '2024-04-14', 7900),
(96, 21, '2024-04-15', 3000),
(97, 9, '2024-04-16', 45000),
(98, 10, '2024-04-17', 5600),
(99, 33, '2024-04-18', 4800),
(100, 7, '2024-04-19', 2200),
(101, 3, '2024-04-20', 9500),
(102, 45, '2024-04-21', 2800),
(103, 41, '2024-04-22', 30000),
(104, 6, '2024-04-23', 1700),
(105, 26, '2024-04-24', 12500),
(106, 22, '2024-04-25', 3600),
(107, 50, '2024-04-26', 25000),
(108, 17, '2024-04-27', 7000),
(109, 8, '2024-04-28', 3200),
(110, 28, '2024-04-29', 9500),
(111, 19, '2024-04-30', 21000),
(112, 13, '2024-05-01', 3400),
(113, 4, '2024-05-02', 1500),
(114, 39, '2024-05-03', 23000),
(115, 24, '2024-05-04', 8700),
(116, 44, '2024-05-05', 6500),
(117, 48, '2024-05-06', 8000),
(118, 36, '2024-05-07', 9500),
(119, 29, '2024-05-08', 1800),
(120, 2, '2024-05-09', 12000),
(121, 11, '2024-05-10', 5000),
(122, 45, '2024-05-11', 900),
(123, 5, '2024-05-12', 1300),
(124, 32, '2024-05-13', 2500),
(125, 35, '2024-05-14', 4300),
(126, 9, '2024-05-15', 7800),
(127, 18, '2024-05-16', 9100),
(128, 49, '2024-05-17', 6400),
(129, 23, '2024-05-18', 18500),
(130, 31, '2024-05-19', 3900),
(131, 41, '2024-05-20', 9900),
(132, 28, '2024-05-21', 1600),
(133, 47, '2024-05-22', 7800),
(134, 14, '2024-05-23', 15000),
(135, 20, '2024-05-24', 2500),
(136, 37, '2024-05-25', 3500),
(137, 6, '2024-05-26', 4200),
(138, 50, '2024-05-27', 17000),
(139, 8, '2024-05-28', 2100),
(140, 22, '2024-05-29', 46000),
(141, 3, '2024-05-30', 10000),
(142, 16, '2024-05-31', 4200),
(143, 33, '2024-06-01', 8500),
(144, 48, '2024-06-02', 17500),
(145, 30, '2024-06-03', 2200),
(146, 7, '2024-06-04', 7600),
(147, 25, '2024-06-05', 5500),
(148, 12, '2024-06-06', 12500),
(149, 9, '2024-06-07', 8900),
(150, 1, '2024-06-08', 95000);

INSERT INTO order_items VALUES
(1,1,1,1,95000),
(2,2,16,1,4500),
(3,3,9,1,15000),
(4,4,8,1,3200),
(5,5,26,1,55000),
(6,6,10,1,8000),
(7,7,28,1,45000),
(8,8,75,1,4000),
(9,9,11,1,12000),
(10,10,20,1,900),
(11,11,25,1,1800),
(12,12,17,1,6000),
(13,13,7,1,1500),
(14,14,3,1,2500),
(15,15,16,1,4500),
(16,16,53,1,2500),
(17,17,34,1,18000),
(18,18,54,1,35000),
(19,19,55,1,52000),
(20,20,11,1,7000),
(21,21,19,1,2500),
(22,22,14,1,3200),
(23,23,47,1,18000),
(24,24,32,1,22000),
(25,25,9,1,15000),
(26,26,5,1,1250),
(27,27,27,1,48000),
(28,28,44,1,35000),
(29,29,18,1,6200),
(30,30,8,1,2900),
(31,31,63,1,4500),
(32,32,12,1,18000),
(33,33,29,1,22000),
(34,34,71,1,34000),
(35,35,15,1,2600),
(36,36,17,1,6500),
(37,37,52,1,31000),
(38,38,46,1,14000),
(39,39,55,1,52000),
(40,40,41,1,6000),
(41,41,36,1,27000),
(42,42,4,1,2000),
(43,43,7,1,1500),
(44,44,10,1,8000),
(45,45,31,1,12000),
(46,46,60,1,25000),
(47,47,76,1,3800),
(48,48,14,1,3300),
(49,49,22,1,9000),
(50,50,39,1,18000),
(51,51,6,1,2000),
(52,52,12,1,18500),
(53,53,57,1,44000),
(54,54,11,1,11000),
(55,55,5,1,1150),
(56,56,73,1,28000),
(57,57,25,1,1800),
(58,58,19,1,2500),
(59,59,44,1,36000),
(60,60,28,1,45000),
(61,61,38,1,16000),
(62,62,7,1,1500),
(63,63,15,1,2600),
(64,64,18,1,6200),
(65,65,24,1,9500),
(66,66,29,1,23000),
(67,67,52,1,31000),
(68,68,47,1,17000),
(69,69,36,1,27500),
(70,70,9,1,15000),
(71,71,20,1,900),
(72,72,22,1,9200),
(73,73,30,1,14500),
(74,74,48,1,38000),
(75,75,33,1,21000),
(76,76,41,1,6200),
(77,77,11,1,13000),
(78,78,25,1,1800),
(79,79,8,1,3200),
(80,80,4,1,2000),
(81,81,10,1,7500),
(82,82,6,1,2100),
(83,83,14,1,3400),
(84,84,29,1,22000),
(85,85,55,1,52000),
(86,86,53,1,2500),
(87,87,43,1,16000),
(88,88,72,1,33000),
(89,89,63,1,4800),
(90,90,19,1,2600),
(91,91,38,1,17000),
(92,92,22,1,8700),
(93,93,41,1,6200),
(94,94,47,1,18000),
(95,95,12,1,17500),
(96,96,5,1,1300),
(97,97,7,1,1500),
(98,98,25,1,1800),
(99,99,31,1,12000),
(100,100,44,1,36000);


-- 1. Basic SELECT, WHERE, ORDER BY
SELECT * FROM customers WHERE country = 'India';
SELECT * FROM products ORDER BY price DESC LIMIT 10;

-- 2. GROUP BY + Aggregations
SELECT p.product_name, SUM(oi.quantity * oi.price) AS total_sales
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sales DESC;

SELECT c.customer_name, AVG(o.total_amount) AS avg_order_value
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_name;

-- 3. JOINS
SELECT o.order_id, c.customer_name, o.order_date, o.total_amount
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id;

SELECT c.customer_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

SELECT o.order_id, c.customer_name
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;

-- 4. Subqueries
SELECT customer_id, customer_name
FROM customers
WHERE customer_id IN (
    SELECT o.customer_id
    FROM orders o
    GROUP BY o.customer_id
    HAVING SUM(total_amount) > (SELECT AVG(total_amount) FROM orders)
);

-- 5. Views
CREATE VIEW top_selling_products AS
SELECT p.product_name, SUM(oi.quantity) AS total_qty_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_qty_sold DESC;

-- 6. Index Optimization
CREATE INDEX idx_customer_id ON orders(customer_id);
CREATE INDEX idx_product_id ON order_items(product_id);

-- 7. Ranking products by price
SELECT product_id, product_name, price,
       RANK() OVER (ORDER BY price DESC) AS price_rank
FROM products;

-- 8. Count orders per country using JOIN + GROUP BY
SELECT c.country, COUNT(o.order_id) AS total_orders
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.country
ORDER BY total_orders DESC;

-- 9. Find customers who bought products above ₹50,000 using subquery
SELECT DISTINCT customer_id
FROM orders
WHERE order_id IN (
    SELECT order_id FROM order_items WHERE price > 50000
);

-- 10. Find top 5 customers by total spending
SELECT c.customer_name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 5;

-- 11. Get average product price per category
SELECT category, AVG(price) AS avg_price
FROM products
GROUP BY category;

