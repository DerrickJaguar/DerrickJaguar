CREATE DATABASE mydatabase;

CREATE USER 'root'@'localhost' IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON mydatabase.* TO 'root'@'localhost';


USE mydatabase;

CREATE TABLE users (
  id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(30) NOT NULL,
  password VARCHAR(255) NOT NULL,
  email VARCHAR(50) NOT NULL,
  Positon VARCHAR(30) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE inventory (
  id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  description VARCHAR(255),
  price DECIMAL(10, 2) NOT NULL,
  quantity INT(6) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE orders (
  id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  customer_name VARCHAR(50) NOT NULL,
  customer_email VARCHAR(50) NOT NULL,
  product_name VARCHAR(50) NOT NULL,
  product_price DECIMAL(10, 2) NOT NULL,
  quantity INT(6) NOT NULL,
  total_price DECIMAL(10, 2) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE customers (
  id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  phone VARCHAR(20),
  address VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE reports (
  id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  description VARCHAR(255),
  file_path VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (username, password, email) VALUES ('admin', 'password', 'admin@example.com');

INSERT INTO customers (id, name, email, phone, address) VALUES('1', 'Ngabirano Derrick', 'derrickngabirano1@gmail.com','0771323685', 'Andrews');


INSERT INTO reports (id, name, description, file_path, created_at) VALUES('1', 'Report1', 'This is a monthly report showing how bussiness has been throughout the month','to be updated', '2023-03-25:20:12pm');


INSERT  INTO orders (id, customer_name, customer_email, product_name, product_price, quantity, total_price, created_at) VALUES('1', 'Ahimbisibwe Janice', 'janice12@gmail.com', 'Chicken wings', '30000', '1', '300000','2023-05-10:17:25pm');


INSERT INTO inventory (id, name, description, price, quantity, created_at, updated_at) VALUES ('1', 'Beverages', 'These contain cold drinks juice among others', '1000000', '100pc', '2023-03-10:10:20am', '2023-03-13:11:10am');
