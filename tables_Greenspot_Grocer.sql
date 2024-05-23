-- USE GreenspotGrocerDB;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE if exists Vendors;
CREATE TABLE Vendors(
	vendor_id INT auto_increment PRIMARY KEY,
    vendor_name VARCHAR(255) NOT NULL,
    vendor_address varchar(255) not null
    );

DROP TABLE if exists Products;
CREATE TABLE Products(
	item_id INT PRIMARY KEY,
    item_descreption VARCHAR(255) NOT NULL,
    item_type VARCHAR(25) NOT NULL,
    location VARCHAR(25) NOT NULL,
    unit VARCHAR(25) NOT NULL,
    cost FLOAT NOT NULL,
    vendor_id int not null,
    foreign key (vendor_id) references Vendors(vendor_id)
    );
    
DROP TABLE if exists Inventory;
CREATE TABLE Inventory(
	inventory_id INT AUTO_INCREMENT PRIMARY KEY,
    quantity_on_hand int not null,
    purchase_date date not null,
    expiry_date date ,
    item_id int not null,
    foreign key(item_id) references Products(item_id)
    );

    
DROP TABLE if exists Customers;
CREATE TABLE Customers(
	customer_id INT auto_increment PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address varchar(255),
    email varchar(255) unique,
    phone varchar(20)
    );
    
DROP TABLE if exists Sales;
CREATE TABLE Sales(
	sales_id INT auto_increment PRIMARY KEY,
    sold_date date NOT NULL,
    quantity int not null,
    price float not null,
    total_amount float,
    item_id int not null,
    customer_id int not null,
    foreign key(item_id) references Products(item_id),
    foreign key(customer_id) references Customers(customer_id)
    );
    
