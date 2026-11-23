-- 1. INSERT
INSERT INTO Customers (FullName, Email, Phone, Nationality)
VALUES ( ? , ? , ? , ? );

-- 2. SELECT ALL
SELECT * FROM Customers;

-- 3. SELECT BY ID
SELECT * FROM Customers

WHERE CustomerID = ?;

4. Update customer information
UPDATE Customers
SET FullName = ?,
    Email = ?,
    Phone = ?,
    Nationality = ?
WHERE CustomerID = ?;
5. DELETE

DELETE FROM Customers

WHERE CustomerID = ?;