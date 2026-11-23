Add a new room
INSERT INTO rooms (RoomNumber, RoomType, PricePerNight, Status)
VALUES (?, ?, ?, ?);

-- Display all rooms
SELECT * FROM rooms;

-- Find a room by ID
SELECT * FROM rooms
WHERE RoomID = ?;

-- Display available rooms
SELECT * FROM rooms
WHERE Status = 'Available';

-- Update room information
UPDATE rooms
SET RoomNumber = ?,
    RoomType = ?,
    PricePerNight = ?,
    Status = ?
WHERE RoomID = ?;

-- Delete a room
DELETE FROM rooms
WHERE RoomID = ?;