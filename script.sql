CREATE TABLE customers
(
    id         INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(60) NOT NULL,
    last_name  VARCHAR(60) NOT NULL,
    city       VARCHAR(60) NOT NULL,
    contact    VARCHAR(20) NOT NULL
);

INSERT INTO customers(first_name, last_name, city, contact)
VALUES ('Ivan', 'Ivić', 'Osijek', '+38595123456'),
       ('Pero', 'Perić', 'Vinkovci', '+38598123654');

DELETE
FROM customers
WHERE id = 1;
DELETE
FROM customers
WHERE id = 2;

INSERT INTO customers(first_name, last_name, city, contact)
VALUES ('Ivan', 'Ivić', 'Osijek', '+38595123456'),
       ('Pero', 'Perić', 'Vinkovci', '+38598123654'),
       ('Marko', 'Markić', 'Vukovar', '096874521'),
       ('Jana', 'Janić', 'Split', '096822521'),
       ('Marija', 'Ilić', 'Zagreb', '096874565'),
       ('Dino', 'Dinić', 'Delnice', '096000565'),
       ('Perica', 'Perković', 'Zadar', '+38596874090'),
       ('Marica', 'Vulić', 'Šibenik', '+38599721090'),
       ('Marin', 'Marinić', 'Rijeka', '094801565'),
       ('Marijan', 'Marjanić', 'Županja', '094806874');

UPDATE customers
SET contact = '096874522'
WHERE id = 5;
UPDATE customers
SET city   = 'Kaštel Stari',
    contact= '096822529'
WHERE id = 6;

SELECT c.id, c.first_name, c.last_name, c.city, c.contact
FROM customers AS c;

CREATE TABLE vehicles
(
    id          INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    brand       VARCHAR(20) NOT NULL,
    model       VARCHAR(50) NOT NULL,
    class       VARCHAR(20),
    engine_type VARCHAR(15) NOT NULL,
    man_year    TINYINT,
    serial      INT         NOT NULL

);

INSERT INTO vehicles(brand, model, class, engine_type, man_year, serial)
VALUES ('Opel', 'Insignia', 'Limousine', 'Diesel', '17', '8746957'),
       ('Opel', 'Corsa', 'Hatchback', 'Gasoline', '18', '8746941'),
       ('Volkswagen', 'Arteon', 'Limousine', 'Diesel', '19', '8746968'),
       ('Volkswagen', 'Golf', 'Hatchback', 'Electric', '19', '8746966'),
       ('Renault', 'Megane', 'Hatchback', 'Gasoline', '17', '8746431'),
       ('Renault', 'Zoe', 'Hatchback', 'Electric', '20', '87464654'),
       ('Ford', 'Focus', 'Hatchback', 'Diesel', '16', '87464902'),
       ('Tesla', 'Model S', 'Limousine', 'Electric', '19', '87464949'),
       ('Tesla', 'Model 3', 'Limousine', 'Electric', '17', '87464946'),
       ('Tesla', 'Model X', 'SUV', 'Electric', '18', '87464942');

UPDATE vehicles
SET engine_type = 'Diesel'
WHERE id = 2;
UPDATE vehicles
SET man_year = '20',
    serial   = '8746961'
WHERE id = 4;

SELECT v.id, v.brand, v.model, v.class, v.engine_type, v.man_year, v.serial
FROM vehicles AS v;

CREATE TABLE vehicle_exchanges
(
    id         INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    customer   INT NOT NULL,
    vehicle    INT NOT NULL,
    employee   INT NOT NULL,
    store_from INT NOT NULL,
    store_to   INT,
    delivered  DATETIME,
    returned   DATETIME,
    FOREIGN KEY (customer) REFERENCES customers (id),
    FOREIGN KEY (vehicle) REFERENCES vehicles (id),
    FOREIGN KEY (store_from) REFERENCES stores (id),
    FOREIGN KEY (store_to) REFERENCES stores (id),
    FOREIGN KEY (employee) REFERENCES employees (id)
);

SELECT ve.id,
       ve.customer,
       ve.vehicle,
       ve.employee,
       ve.store_from,
       ve.store_to,
       ve.delivered,
       ve.returned
FROM vehicle_exchanges AS ve;

INSERT INTO vehicle_exchanges (customer, vehicle, employee, store_from, store_to, delivered, returned)
VALUES (4, 5, 2, 3, 5, '2020-08-18 00:21:17', '2020-08-22 00:10:12'),
       (7, 10, 5, 6, 7, '2020-05-12 02:06:28', '2020-05-14 13:21:54'),
       (9, 9, 3, 4, 3, '2020-02-05 23:03:07', '2020-02-10 23:25:48'),
       (4, 7, 7, 8, 10, '2020-02-10 21:40:52', '2020-02-11 22:18:27'),
       (10, 4, 6, 12, 8, '2020-07-03 15:15:26', '2020-07-10 16:41:09'),
       (7, 2, 8, 7, 7, '2020-06-14 06:23:57', '2020-06-17 08:08:14'),
       (12, 1, 7, 9, 12, '2020-02-15 15:31:34', '2020-02-26 18:13:51'),
       (11, 8, 11, 11, 5, '2020-05-03 01:03:03', '2020-05-7 09:42:02'),
       (9, 10, 9, 4, 3, '2020-09-08 00:05:53', '2020-09-09 07:26:17'),
       (5, 9, 10, 5, 5, '2020-06-05 02:21:09', '2020-06-18 13:31:00'),
       (10, 2, 2, 8, 4, '2020-09-08 00:05:53', '2020-09-09 12:37:49'),
       (3, 7, 9, 11, 7, '2020-02-05 23:03:07', '2020-02-12 21:36:12');

CREATE TABLE stores
(
    id      INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(60) NOT NULL,
    city    VARCHAR(80) NOT NULL,
    zip     VARCHAR(10),
    address VARCHAR(80) NOT NULL
);

INSERT INTO stores (name, city, zip, address)
VALUES ('Store1', 'Osijek', '31000', 'Street 1'),
       ('Store2', 'Vukovar', '32000', 'Street 2');

DELETE
FROM stores
WHERE id = 1;
DELETE
FROM stores
WHERE id = 2;

INSERT INTO stores (name, city, zip, address)
VALUES ('Store1', 'Osijek', '31000', 'Street 1'),
       ('Store2', 'Vukovar', '32000', 'Street 2'),
       ('Store3', 'Vinkovci', '32100', 'Street 3'),
       ('Store4', 'Županja', '', 'Street 4'),
       ('Store5', 'Zagreb', '10000', 'Street 5'),
       ('Store6', 'Delnice', '51300', 'Street 6'),
       ('Store7', 'Rijeka', '51000', 'Street 7'),
       ('Store8', 'Pula', '', 'Street 8'),
       ('Store9', 'Zadar', '23000', 'Street 9'),
       ('Store10', 'Split', '21000', 'Street 10');

SELECT s.id, s.name, s.city, s.zip, s.address
FROM stores AS s;

CREATE TABLE employees
(
    id         INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(60) NOT NULL,
    last_name  VARCHAR(60) NOT NULL,
    role       VARCHAR(60)
);

INSERT INTO employees (first_name, last_name, role)
VALUES ('Branimir', 'Ladić', 'CEO'),
       ('Davor', 'Marić', 'CMO'),
       ('Hrvoje', 'Larić', 'COO'),
       ('Krešimir', 'Perić', 'Salesman'),
       ('Ivana', 'Mislić', ''),
       ('Velimir', 'Katić', 'Salesman'),
       ('Domagoj', 'Horvat', ''),
       ('Marica', 'Babić', 'Sales Manager'),
       ('Tomislav', 'Kovačević', 'Salesman'),
       ('Maja', 'Majić', 'Sales Assistant');

DELETE
FROM employees
WHERE id = 4;

INSERT INTO employees (first_name, last_name, role)
VALUES ('Krešimir', 'Perić', 'Salesman');

UPDATE employees
SET role = 'Sales Assistant'
WHERE id = 6;

SELECT e.id, e.first_name, e.last_name, e.role
FROM employees AS e;

# built-in functions

SELECT first_name, CHAR_LENGTH(first_name) AS LengthOfName
FROM customers;

SELECT CONCAT(first_name, ' ', last_name) AS FullName
FROM customers;

SELECT UPPER(role) AS UpperRole
FROM employees;

SELECT LOWER(role) AS LowerRole
FROM employees;

SELECT LEFT(city, 2) AS ExtractCity
FROM stores;

# joins

SELECT customers.first_name, customers.last_name, stores.city, stores.zip
FROM customers
         INNER JOIN stores ON customers.id = stores.id
ORDER BY customers.last_name;

SELECT employees.first_name, employees.last_name, vehicles.brand, vehicles.model, vehicles.serial
FROM employees
         INNER JOIN vehicles ON employees.id = vehicles.id
ORDER BY employees.first_name;

SELECT ve.id,
       v.brand,
       v.model,
       CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
       CONCAT(e.first_name, ' ', e.last_name) AS empployee_name,
       s.name                                 AS store_from,
       ve.delivered                           AS delivered_date,
       s2.name                                AS store_to,
       ve.returned                            AS returned_date

FROM vehicle_exchanges AS ve
         LEFT JOIN customers c ON ve.customer = c.id
         LEFT JOIN employees e ON ve.employee = e.id
         LEFT JOIN vehicles v ON v.id = ve.vehicle
         LEFT JOIN stores s ON ve.store_from = s.id
         LEFT JOIN stores s2 ON ve.store_to = s2.id;

# trigger

CREATE TABLE trg_msg
(
    message VARCHAR(50)
);

DELIMITER $$
CREATE TRIGGER trg
    BEFORE INSERT
    ON vehicle_exchanges
    FOR EACH ROW
BEGIN
    INSERT INTO trg_msg VALUES ('Message is added to each row');
END $$
DELIMITER ;

INSERT INTO vehicle_exchanges (customer, vehicle, employee, store_from, store_to, delivered, returned)
VALUES (4, 5, 2, 3, 5, '2020-01-18 00:10:13', '2020-02-22 00:16:56');

SELECT message FROM trg_msg;







