
-- Different Orders

INSERT INTO Orders (CustomerID, ServiceID, LocationID, DeliveryDateTime, OrderStatus, PickupDateTime, TotalAmount)
VALUES
    (1, 1, 1, '2024-01-01 10:00:00', 'Pending', '2023-12-30 09:00:00', 15.00),
    (2, 2, 2, '2024-01-02 12:00:00', 'Completed', '2023-12-30 10:00:00', 20.00),
    (3, 3, 3, '2024-01-03 14:00:00', 'In Progress', '2023-12-31 11:00:00', 5.00),
    (4, 4, 4, '2024-01-04 16:00:00', 'Delivered', '2023-12-31 12:00:00', 15.00),
    (5, 5, 5, '2024-01-05 18:00:00', 'Pending', '2024-01-01 08:00:00', 25.00),
    (1, 3, 1, '2024-01-06 20:00:00', 'Completed', '2024-01-01 09:00:00', 5.00),
    (2, 4, 2, '2024-01-07 22:00:00', 'In Progress', '2024-01-02 10:00:00', 15.00),
    (3, 5, 3, '2024-01-08 11:00:00', 'Delivered', '2024-01-02 11:00:00', 25.00),
    (4, 1, 4, '2024-01-09 13:00:00', 'Pending', '2024-01-03 08:00:00', 10.00),
    (5, 2, 5, '2024-01-10 15:00:00', 'Completed', '2024-01-03 09:00:00', 20.00),
    (1, 4, 1, '2024-01-11 17:00:00', 'In Progress', '2024-01-04 10:00:00', 15.00),
    (2, 5, 2, '2024-01-12 19:00:00', 'Delivered', '2024-01-04 11:00:00', 25.00),
    (3, 1, 3, '2024-01-13 08:00:00', 'Pending', '2024-01-05 08:00:00', 10.00),
    (4, 2, 4, '2024-01-14 09:00:00', 'Completed', '2024-01-05 09:00:00', 20.00),
    (5, 3, 5, '2024-01-15 10:00:00', 'In Progress', '2024-01-06 10:00:00', 5.00),
    (1, 5, 1, '2024-01-16 12:00:00', 'Delivered', '2024-01-06 11:00:00', 25.00),
    (2, 1, 2, '2024-01-17 14:00:00', 'Pending', '2024-01-07 12:00:00', 10.00),
    (3, 2, 3, '2024-01-18 16:00:00', 'Completed', '2024-01-07 13:00:00', 20.00),
    (4, 3, 4, '2024-01-19 18:00:00', 'In Progress', '2024-01-08 14:00:00', 5.00),
    (5, 4, 5, '2024-01-20 20:00:00', 'Delivered', '2024-01-08 15:00:00', 15.00);

-- Different Customers

INSERT INTO Customers (FirstName, LastName, Email, Phone, RegisteredDate)
VALUES
    ('John', 'Doe', 'john.doe@example.com', '555-1234', '2023-12-01'),
    ('Jane', 'Smith', 'jane.smith@example.com', '555-5678', '2023-12-02'),
    ('Alice', 'Johnson', 'alice.j@example.com', '555-8765', '2023-12-03'),
    ('Bob', 'Brown', 'bob.brown@example.com', '555-4321', '2023-12-04'),
    ('Charlie', 'Davis', 'charlie.d@example.com', '555-6789', '2023-12-05');

-- Different Services

INSERT INTO Services (ServiceName, ServiceDescription, BasePrice, ServiceDuration)
VALUES
    ('Laundry', 'Washing and drying clothes.', 10.00, 48),
    ('Dry Cleaning', 'Chemical cleaning for delicate fabrics.', 20.00, 72),
    ('Ironing', 'Pressing clothes to remove wrinkles.', 5.00, 24),
    ('Wash & Fold', 'Complete washing and folding service.', 15.00, 36),
    ('Deluxe Wash', 'Premium washing with special care.', 25.00, 48);

-- Different Locations

INSERT INTO Locations (AddressLine1, AddressLine2, City, PostalCode, Latitude, Longitude)
VALUES
    ('123 Main St', NULL, 'Anytown', '12345', 35.6895, 139.6917),
    ('456 Elm St', 'Apt 101', 'Othertown', '54321', 40.7128, -74.0060),
    ('789 Oak St', NULL, 'Sometown', '11223', 34.0522, -118.2437),
    ('101 Pine St', NULL, 'Yourtown', '22134', 41.8781, -87.6298),
    ('202 Maple St', 'Suite 200', 'Theirville', '33245', 37.7749, -122.4194);
	
-- Payment

INSERT INTO Payments (OrderID, PaymentDateTime, AmountPaid, PaymentMethod, PaymentStatus)
VALUES
    (1, '2023-12-03 10:00:00', 15.00, 'Credit Card', 'Paid'),
    (2, '2023-12-04 10:00:00', 25.00, 'Debit Card', 'Paid'),
    (3, '2023-12-05 10:00:00', 20.00, 'Credit Card', 'Paid'),
    (4, '2023-12-06 10:00:00', 30.00, 'Cash', 'Paid'),
    (5, '2023-12-07 10:00:00', 10.00, 'Credit Card', 'Paid');

-- Employee Assignments

INSERT INTO EmployeeAssignments (OrderID, EmployeeID, AssignmentType, AssignedDateTime, CompletionDateTime)
VALUES
    (1, 1, 'Pickup', '2023-12-03 09:00:00', '2023-12-03 09:30:00'),
    (2, 2, 'Delivery', '2023-12-04 09:00:00', '2023-12-04 09:45:00'),
    (3, 1, 'Pickup', '2023-12-05 09:00:00', '2023-12-05 09:20:00'),
    (4, 1, 'Delivery', '2023-12-06 09:00:00', '2023-12-06 09:50:00'),
    (5, 1, 'Pickup', '2023-12-07 09:00:00', '2023-12-07 09:15:00');

	


	