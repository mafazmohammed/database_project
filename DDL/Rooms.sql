
USE HotelDB;


CREATE TABLE Rooms (
    RoomID INT PRIMARY KEY AUTO_INCREMENT,
    RoomNumber INT UNIQUE NOT NULL, RoomType VARCHAR(50) NOT NULL,
    PricePerNight DECIMAL (10,2) NOT NULL, Status VARCHAR(20) DEFAULT 'Available',
    CHECK (PricePerNight > 0),
    CHECK (Status IN ('Available', 'Maintenance'))
);