- Create a reservation
INSERT INTO reservations
(CustomerID, RoomID, CheckInDate, CheckOutDate)
VALUES (?, ?, ?, ?);

-- Display all reservations
SELECT * FROM reservations;

-- Find a reservation by ID
SELECT * FROM reservations
WHERE ReservationID = ?;

-- Display reservations for a customer
SELECT * FROM reservations
WHERE CustomerID = ?;

-- Update reservation information
UPDATE reservations
SET RoomID = ?,
    CheckInDate = ?,
    CheckOutDate = ?,
    ReservationStatus = ?
WHERE ReservationID = ?;

-- Cancel a reservation
UPDATE reservations
SET ReservationStatus = 'Cancelled'
WHERE ReservationID = ?;