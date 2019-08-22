CREATE TABLE person (
  person_id SERIAL PRIMARY KEY,
  name VARCHAR(40),
  height INTEGER,
  age INTEGER,
  city VARCHAR(40),
  favorite_color VARCHAR(20)
 );



INSERT INTO person
(name, height, age, city, favorite_color)
VALUES
('mckay', 180, 27, 'perkasie', 'turqoise');

INSERT INTO person
(name, height, age, city, favorite_color)
VALUES
('abby', 172, 27, 'rome', 'purple');

INSERT INTO person
(name, height, age, city, favorite_color)
VALUES
('jayna', 172, 52, 'idaho falls', 'red');

INSERT INTO person
(name, height, age, city, favorite_color)
VALUES
('tom', 183, 51, 'fairfield', 'green');

INSERT INTO person
(name, height, age, city, favorite_color)
VALUES
('grant', 175, 28, 'jamison', 'orange');



SELECT * FROM person
ORDER BY height DESC;



SELECT * FROM person
ORDER BY height;



SELECT * FROM person
ORDER BY age DESC;



SELECT * FROM person
WHERE age > 20;



SELECT * FROM person
WHERE age = 18;



SELECT * FROM person
WHERE age > 30 OR age < 20;



SELECT * FROM person
WHERE age != 27;



SELECT * FROM person
WHERE favorite_color != 'red';



SELECT * FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue';



SELECT * FROM person
WHERE favorite_color = 'green' OR favorite_color = 'orange';



SELECT * FROM person
WHERE favorite_color
IN (
  'orange',
  'green',
  'blue'
);



SELECT * FROM person
WHERE favorite_color
IN (
  'orange',
  'green',
  'blue'
);



CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  person_id INTEGER,
  product_name VARCHAR(20),
  product_price DECIMAL,
  quantity INTEGER
);



INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(1, 'fries', .99, 2);

INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(1, 'burger', 7.99, 2);

INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(5, 'fries', .99, 1);

INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(5, 'burger', 7.99, 1);

INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(3, 'milkshake', 3.99, 1);



SELECT * FROM orders;



SELECT sum(quantity) FROM orders;



SELECT sum(product_price * quantity) from orders;



SELECT sum(product_price * quantity)
from orders
where person_id = 1;



INSERT INTO artist
(name)
VALUES
('kalin nelson');

INSERT INTO artist
(name)
VALUES
('Streelight Manefesto');

INSERT INTO artist
(name)
VALUES
('Hoobastank');



SELECT * from artist
ORDER BY name DESC
LIMIT 10;



SELECT * from artist
ORDER BY name
LIMIT 5;



SELECT * from artist
WHERE name LIKE 'Black%'
LIMIT 5;



SELECT * from artist
WHERE name LIKE '%Black%'
LIMIT 5;



SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';



SELECT birth_date FROM employee
ORDER BY birth_date DESC
LIMIT 1



SELECT birth_date FROM employee
ORDER BY birth_date
LIMIT 1



SELECT * FROM employee
WHERE reports_to = 2;



SELECT count(city) FROM employee
WHERE city = 'Lethbridge';



SELECT count(billing_country) FROM invoice
WHERE billing_country = 'USA';



SELECT max(total) FROM invoice;



SELECT min(total) FROM invoice;



SELECT * FROM invoice
WHERE total > 5;



SELECT count(total) FROM invoice
WHERE total < 5;



SELECT count(billing_state) FROM invoice
WHERE billing_state
IN (
  'CA',
  'TX',
  'AZ'
);



SELECT avg(total) FROM invoice;



SELECT sum(total) FROM invoice;