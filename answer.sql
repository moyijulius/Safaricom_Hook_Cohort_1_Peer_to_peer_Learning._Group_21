-- Creating database name
CREATE DATABASE Train_Booking_System;
-- Adding tables within the database
-- Creating TrainStations Table
CREATE TABLE TrainStations (
    StationID INT PRIMARY KEY AUTO_INCREMENT,
    StationName VARCHAR(100) NOT NULL,
    Location VARCHAR(100) NOT NULL
);

-- Creating Passengers Table
CREATE TABLE Passengers (
    PassengerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE
);

-- Creating Trains Table
CREATE TABLE Trains (
    TrainID INT PRIMARY KEY AUTO_INCREMENT,
    TrainName VARCHAR(100) NOT NULL,
    TrainType VARCHAR(50) NOT NULL
);

-- Creating Bookings Table
CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY AUTO_INCREMENT,
    PassengerID INT NOT NULL,
    TrainID INT NOT NULL,
    StationID INT NOT NULL,
    BookingDate DATE NOT NULL,
    TravelDate DATE NOT NULL,
    FOREIGN KEY (PassengerID) REFERENCES Passengers(PassengerID),
    FOREIGN KEY (TrainID) REFERENCES Trains(TrainID),
    FOREIGN KEY (StationID) REFERENCES TrainStations(StationID)
);
-- Insert sample data into TrainStations
INSERT INTO TrainStations (StationName, Location) VALUES
('Central Station', 'City Center'),
('North Station', 'Uptown'),
('South Station', 'Downtown');

-- Insert sample data into Passengers
INSERT INTO Passengers (FirstName, LastName, Email) VALUES
('John', 'kibet', 'john.kibet@example.com'),
('Jane', 'alice', 'jane.alice@example.com');

-- Insert sample data into Trains
INSERT INTO Trains (TrainName, TrainType) VALUES
('Express 101', 'Express'),
('Local 202', 'Local');

-- Insert sample data into Bookings
INSERT INTO Bookings (PassengerID, TrainID, StationID, BookingDate, TravelDate) VALUES
(1, 1, 1, '2025-01-01', '2025-01-05'),
(2, 2, 2, '2025-01-02', '2025-01-06');
