CREATE DATABASE	test1;

USE	test1;

CREATE TABLE smartfone(
id INT PRIMARY KEY AUTO_INCREMENT,
tipe VARCHAR(100),
company VARCHAR(100),
price FLOAT
);

INSERT INTO smartfone (tipe, company, price)
VALUES
('Phone', 'Samsung', 5700.57),
('Smart', 'Samsung', 13500),
('Phone', 'Nokia', 2500);

SELECT * FROM smartfone;

SELECT * FROM smartfone WHERE company = 'Samsung';
