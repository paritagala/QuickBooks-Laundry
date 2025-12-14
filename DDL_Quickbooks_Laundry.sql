-- Create Customers Table
CREATE TABLE Customers (
    CustomerID INTEGER PRIMARY KEY AUTOINCREMENT,
    FirstName TEXT NOT NULL,
    LastName TEXT NOT NULL,
    Email TEXT NOT NULL UNIQUE,
    Phone TEXT NOT NULL,
    RegisteredDate DATETIME NOT NULL
);

-- Create Services Table
CREATE TABLE Services (
    ServiceID INTEGER PRIMARY KEY AUTOINCREMENT,
    ServiceName TEXT NOT NULL,
    ServiceDescription TEXT,
    BasePrice REAL NOT NULL,
    ServiceDuration INTEGER NOT NULL
);

-- Create Locations Table
CREATE TABLE Locations (
    LocationID INTEGER PRIMARY KEY AUTOINCREMENT,
    AddressLine1 TEXT NOT NULL,
    AddressLine2 TEXT,
    City TEXT NOT NULL,
    PostalCode TEXT NOT NULL,
    Latitude REAL,
    Longitude REAL
);

-- Create Orders Table
CREATE TABLE Orders (
    OrderID INTEGER PRIMARY KEY AUTOINCREMENT,
    CustomerID INTEGER NOT NULL,
    ServiceID INTEGER NOT NULL,
    LocationID INTEGER NOT NULL,
    DeliveryDateTime DATETIME NOT NULL,
    OrderStatus TEXT NOT NULL,
    PickupDateTime DATETIME NOT NULL,
    TotalAmount REAL NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID),
    FOREIGN KEY (ServiceID) REFERENCES Services (ServiceID),
    FOREIGN KEY (LocationID) REFERENCES Locations (LocationID)
);

-- Create Payments Table
CREATE TABLE Payments (
    PaymentID INTEGER PRIMARY KEY AUTOINCREMENT,
    OrderID INTEGER NOT NULL,
    PaymentDateTime DATETIME NOT NULL,
    AmountPaid REAL NOT NULL,
    PaymentMethod TEXT NOT NULL,
    PaymentStatus TEXT NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders (OrderID)
);

-- Create EmployeeAssignments Table
CREATE TABLE EmployeeAssignments (
    AssignmentID INTEGER PRIMARY KEY AUTOINCREMENT,
    OrderID INTEGER NOT NULL,
    EmployeeID INTEGER NOT NULL,
    AssignmentType TEXT NOT NULL,
    AssignedDateTime DATETIME NOT NULL,
    CompletionDateTime DATETIME,
    FOREIGN KEY (OrderID) REFERENCES Orders (OrderID)
);
