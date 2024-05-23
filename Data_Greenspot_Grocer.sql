SET FOREIGN_KEY_CHECKS = 0;
-- Insert data into Vendor Table
TRUNCATE TABLE Vendors;
INSERT INTO Vendors (vendor_name, vendor_address) VALUES
  ('Bennet Farms', 'Rt. 17 Evansville, IL 55446')
, ('Freshness, Inc.', '202 E. Maple St., St. Joseph, MO 45678')
, ('Ruby Redd Produce, LLC', '1212 Milam St., Kenosha, AL, 34567')
;

-- Insert data into Products Table
TRUNCATE TABLE Products;
INSERT INTO Products (item_id, item_descreption, item_type, unit, location, cost, vendor_id) VALUES
  (1000, 'Bennet Farm free-range eggs', 'Dairy', 'dozen', 'D12', 2.35, 1)
, (2000, "Ruby's Kale", 'Produce', 'bunch', 'p12', 1.29, 3)
, (1100, 'Freshness White beans', 'Canned', '12 ounce can', 'a2', 0.69, 2)
, (1222, 'Freshness Green beans', 'Canned', '12 ounce can', 'a3', 0.59, 2)
, (1223, 'Freshness Green beans', 'Canned', '36 ounce can', 'a7', 1.75, 2)
, (1224, 'Freshness Wax beans', 'Canned', '12 ounce can', 'a3', 0.65, 2)
, (2001, "Ruby's Organic Kale", 'Produce', 'bunch', 'po2', 2.19, 3)
;

-- Insert data into Inventory Table
TRUNCATE TABLE Inventory;
INSERT INTO Inventory (item_id, quantity_on_hand, purchase_date, expiry_date) VALUES
  (1000, 29, '2022-02-01', NULL)
, (1100, 53, '2022-02-02', NULL)
, (2000, 3, '2022-02-12', NULL)
, (1222, 59, '2022-02-10', NULL)
, (1223, 12, '2022-02-10', NULL)
, (1224, 31, '2022-02-10', NULL)
, (2000, 28, '2022-01-12', NULL)
, (2001, 20, '2022-02-12', NULL)
, (1223, 17, '2022-02-15', NULL)
;

-- Insert data into Customer Table
TRUNCATE TABLE Customers;
INSERT INTO Customers (customer_id, name, address, email, phone) VALUES
  (111000, 'John Bailes', 'Bridgetown, WA 6255', 'john.b@google.com', 0897665511)
, (198765, 'Gary Smith', 'Perth, WA 6100', 'gary.smith@yahoo.com', 0477558114)
, (202900, 'Laura Gale', 'Mandurah, WA 6210', 'l.gale01@google.com', 0422111555)
, (196777, 'Ian Walker', 'Perth, Wa 6100', 'iwalker10@hotmail.com', 0499885512)
, (277177, 'Belinda Dole', 'Mandurah, WA 6210', 'beldole@google.com', 0897112258)
, (100988, 'Sandra Park', 'Perth, WA 6100', 's.park@yahoo.com', 0897075454)
;

-- Insert data into Sales Table
TRUNCATE TABLE Sales;
INSERT INTO Sales (item_id, sold_date, customer_id, quantity, price, total_amount) VALUES
  (1000, '2022-02-02', 198765, 2, 5.49, 10.98)
, (1100, '2022-02-02', 202900, 2, 1.49, 2.98)
, (1000, '2022-02-04', 196777, 2, 5.99, 11.98)
, (1000, '2022-02-11', 277177, 4, 5.49, 10.98)
, (1222, '2022-02-12', 111000, 12, 1.29, 15.48)
, (1223, '2022-02-13', 198765, 5, 3.49, 17.45)
, (2001, '2022-02-13', 100988, 1, 6.99, 6.99)
, (2001, '2022-02-14', 202900, 12, 6.99,83.88)
, (2000, '2022-02-15', 111000, 2, 3.99, 7.98)
;
