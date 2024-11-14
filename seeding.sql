USE lab_mysql;

SET FOREIGN_KEY_CHECKS = 0;


TRUNCATE TABLE cars;
TRUNCATE TABLE customers;
TRUNCATE TABLE salespersons;
TRUNCATE TABLE invoices;

SET FOREIGN_KEY_CHECKS = 1;

-- Tabla Cars
INSERT INTO cars (vin, fabricante, modelo, año, color) 
VALUES
    ('3K096I98581DHSNU2', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
    ('ZM8G7BEUQZ97IH462', 'Peugeot', 'Rifter', 2019, 'Red'),
    ('RKXVNNIHLVVZOUB42', 'Ford', 'Fusion', 2018, 'White'),
    ('HKNDGS7CU31E9Z7J2', 'Toyota', 'RAV4', 2018, 'Silver'),
    ('DAM41UDN3CHU2WVF2', 'Volvo', 'V60', 2019, 'Gray'),
    ('DAM41UDN3CHU2WV12', 'Volvo', 'V60 Cross Country', 2019, 'Gray'); 


-- Tabla Customers
INSERT INTO customers (customer_id, name, phone, email, address, city, state_province, country, zip_code)
VALUES
    ('1001', 'Pablo Picasso', '+34636176382', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
    ('2001', 'Abraham Lincoln', '+13059077086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
    ('3001', 'Napoléon Bonaparte', '+33179754000', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

-- Tabla Salespersons
INSERT INTO salespersons (staff_id, name, store)
VALUES
    ('0001', 'Petey Cruiser', 'Madrid'),
    ('0002', 'Anna Sthesia', 'Barcelona'),
    ('0003', 'Paul Molive', 'Berlin'),
    ('0004', 'Gail Forcewind', 'Paris'),
    ('0005', 'Paige Turner', 'Miami'),
    ('0006', 'Bob Frapples', 'Mexico City'),
    ('0007', 'Walter Melon', 'Amsterdam'),
    ('0008', 'Shonda Leer', 'São Paulo');

-- Tabla Invoices
INSERT INTO invoices (date, car_id, customer_id, salesperson_id)
VALUES
    ('2018-08-22', 1, 1, 3),
    ('2018-12-31', 3, 3, 5),
    ('2019-01-22', 2, 2, 7);
