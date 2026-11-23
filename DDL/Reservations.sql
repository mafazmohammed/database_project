USE HotelDB;

CREATE TABLE Reservations (
    ReservationID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    CustomerID INT NOT NULL,
    RoomID INT NOT NULL,
    CheckInDate DATE NOT NULL,
    CheckOutDate DATE NOT NULL,
    BookingDate DATE DEFAULT(CURRENT_DATE),
    ReservationStatus VARCHAR(20) NOT NULL DEFAULT 'Confirmed',

    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),

   FOREIGN KEY (RoomID)REFERENCES rooms(RoomID),

    CHECK (CheckOutDate > CheckInDate),

    CHECK (ReservationStatus IN ('Confirmed','Cancelled','Completed'))

);