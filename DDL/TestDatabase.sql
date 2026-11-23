USE HotelDB;

-- this to Check all tables
SHOW TABLES;

-- this to Check table structures
DESCRIBE Customers;
DESCRIBE rooms;
DESCRIBE reservations;
DESCRIBE Payments;

-- this to Check foreign keys and constraints
SHOW CREATE TABLE reservations;
SHOW CREATE TABLE Payments;