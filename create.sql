CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Eliminar restricciones de clave foránea en la tabla Invoices
ALTER TABLE invoices DROP FOREIGN KEY invoices_ibfk_1;
ALTER TABLE invoices DROP FOREIGN KEY invoices_ibfk_2;
ALTER TABLE invoices DROP FOREIGN KEY invoices_ibfk_3;

-- Eliminar las tablas si existen
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

-- Crear la tabla Cars
CREATE TABLE cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    vin CHAR(17) UNIQUE,
    fabricante VARCHAR(10),
    modelo VARCHAR(20),
    año YEAR,
    color VARCHAR(10)
);

-- Crear la tabla Customers
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id CHAR(4) UNIQUE,   -- ID personalizado único
    name VARCHAR(50),
    phone VARCHAR(15),
    email VARCHAR(50),
    address VARCHAR(100),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country VARCHAR(50),
    zip_code CHAR(10)
);

-- Crear la tabla Salespersons
CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id CHAR(4) UNIQUE,      -- ID personalizado único
    name VARCHAR(50),
    store VARCHAR(50)
);

-- Crear la tabla Invoices
CREATE TABLE invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    car_id INT,
    customer_id INT,
    salesperson_id INT,
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);
