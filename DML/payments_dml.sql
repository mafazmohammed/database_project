USE HotelDB;

-- Add a payment
INSERT INTO Payments
(ReservationID, Amount, PaymentMethod, PaymentStatus)
VALUES (?, ?, ?, ?);

-- Display all payments
SELECT * FROM Payments;

-- Find a payment by ID
SELECT * FROM Payments
WHERE PaymentID = ?;

-- Display payments for a reservation
SELECT * FROM Payments
WHERE ReservationID = ?;

-- Update payment information
UPDATE Payments
SET Amount = ?,
    PaymentMethod = ?,
    PaymentStatus = ?
WHERE PaymentID = ?;

-- Delete a payment
DELETE FROM Payments
WHERE PaymentID = ?;