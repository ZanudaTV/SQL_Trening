CREATE DATABASE IF	NOT	EXISTS dz2;
USE	dz2;

DROP TABLE IF EXISTS sales;
CREATE TABLE IF NOT EXISTS sales(
id INT PRIMARY KEY AUTO_INCREMENT,
order_data YEAR NOT NULL,
count_product INT
);

INSERT INTO sales (order_data, count_product)
VALUES
(2022-01-01, 156),
(2022-01-02, 180),
(2022-01-03, 21),
(2022-01-04, 124),
(2022-01-05, 341);

SELECT * FROM sales;

SELECT 
id 'id заказа',
count_product 'Продажи',
	IF(count_product < 100, 'Маленький заказ',
		IF(count_product > 100 AND count_product < 300, 'Средний заказ',
			IF(count_product > 300, 'Большой заказ', 'Черти че'))) 'Тип заказа'
FROM sales;	

CREATE TABLE IF NOT EXISTS orders(
id INT PRIMARY KEY AUTO_INCREMENT,
employee_id VARCHAR(20),
amount FLOAT,
order_status VARCHAR(20)
);

INSERT INTO orders (employee_id, amount, order_status)
VALUES
('e03', 15.00, 'OPEN'),
('e01', 25.50, 'OPEN'),
('e05', 100.70, 'CLOSED'),
('e02', 22.18, 'OPEN'),
('e04', 9.50, 'CANCELLED');

SELECT * FROM orders; -- почему 100.70 и 22.18 в таблице имеют километровый хвост??

SELECT amount, order_status,
	CASE
		WHEN amount > 10 AND amount < 100 THEN 'открыто'
		WHEN amount > 100 THEN 'закрыто'
		ELSE 'отменено'
	END 'order_status'
FROM orders;	
	
SELECT id, employee_id, amount,
	CASE 
		WHEN order_status = 'OPEN' THEN 'Order is in open state'
		WHEN order_status = 'CLOSED' THEN 'Order is closed'
		ELSE 'Order is cancelled'
	END 'full_order_status:'
FROM orders;

-- Чем NULL отличается от 0? Тем что 0 имеет арифметическое значение нуля, когла NULL означет именно что значение не определенно.
	
	

