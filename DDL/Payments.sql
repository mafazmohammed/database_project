USE HotelDB;


CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    ReservationID INT NOT NULL,
    Amount DECIMAL (10,2) NOT NULL,
    PaymentDate DATE DEFAULT (CURRENT_DATE),
    PaymentMethod VARCHAR(30) NOT NULL,
    PaymentStatus VARCHAR(20) DEFAULT 'Pending',
    FOREIGN KEY (ReservationID)REFERENCES reservations(ReservationID),
    CHECK (Amount > 0),
    CHECK (PaymentMethod IN('Cash', 'Credit Card', 'Bank Transfer')), 
    CHECK (PaymentStatus IN('Pending', 'Paid', 'Failed'))
);