CREATE DATABASE Day51_DB;
USE Day51_DB;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Address VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    PostalCode VARCHAR(10),
    RegistrationDate DATE
);

INSERT INTO Customers
(FirstName, LastName, Email, Phone, Address, City, State, PostalCode, RegistrationDate)
VALUES
('Madhavan', 'S', 'madhavan@gmail.com', '9876543210', 'Anna Nagar', 'Chennai', 'Tamil Nadu', '600040', '2026-01-10'),
('Arun', 'Kumar', 'arun@gmail.com', '9876543211', 'Gandhi Road', 'Trichy', 'Tamil Nadu', '620001', '2026-02-15'),
('Priya', 'Devi', NULL, '9876543212', 'Main Street', 'Madurai', 'Tamil Nadu', '625001', '2026-03-20'),
('Ravi', 'Raj', 'ravi@gmail.com', '9876543213', 'Park Road', 'Chennai', 'Tamil Nadu', '600020', '2026-04-05'),
('Kumar', 'Vel', '', '9876543214', 'Market Road', 'Coimbatore', 'Tamil Nadu', '641001', '2026-05-12');


DELIMITER $$
CREATE PROCEDURE AddCustomer(
    IN p_FirstName VARCHAR(50),
    IN p_LastName VARCHAR(50),
    IN p_Email VARCHAR(100),
    IN p_Phone VARCHAR(15),
    IN p_Address VARCHAR(100),
    IN p_City VARCHAR(50),
    IN p_State VARCHAR(50),
    IN p_PostalCode VARCHAR(10)
)
BEGIN
    INSERT INTO Customers
    (FirstName, LastName, Email, Phone, Address, City, State, PostalCode, RegistrationDate)
    VALUES
    (p_FirstName, p_LastName, p_Email, p_Phone,
     p_Address, p_City, p_State, p_PostalCode, CURDATE());
END $$
DELIMITER ;


CALL AddCustomer(
    'Vijay', 'Kumar', 'vijay@gmail.com', '9876543215',
    'Lake Road', 'Chennai', 'Tamil Nadu', '600001'
);
SELECT * FROM Customers;



DELIMITER $$
CREATE PROCEDURE GetCustomerByID(
    IN p_CustomerID INT
)
BEGIN
    SELECT *
    FROM Customers
    WHERE CustomerID = p_CustomerID;
END $$
DELIMITER ;

CALL GetCustomerByID(1);


DELIMITER $$
CREATE PROCEDURE UpdateCustomerContact(
    IN p_CustomerID INT,
    IN p_Email VARCHAR(100),
    IN p_Phone VARCHAR(15)
)
BEGIN
    UPDATE Customers
    SET Email = p_Email,
        Phone = p_Phone
    WHERE CustomerID = p_CustomerID;
END $$
DELIMITER ;

CALL UpdateCustomerContact(1, 'newemail@gmail.com', '9999999999');
SELECT * FROM Customers WHERE CustomerID = 1;


DELIMITER $$
CREATE PROCEDURE GetCustomersByCity(
    IN p_City VARCHAR(50)
)
BEGIN
    SELECT *
    FROM Customers
    WHERE City = p_City;
END $$
DELIMITER ;

CALL GetCustomersByCity('Chennai');


DELIMITER $$
CREATE PROCEDURE DeleteCustomer(
    IN p_CustomerID INT
)
BEGIN
    DELETE FROM Customers
    WHERE CustomerID = p_CustomerID;
END $$
DELIMITER ;

CALL DeleteCustomer(5);
SELECT * FROM Customers;


DELIMITER $$
CREATE PROCEDURE GetCustomersByDateRange(
    IN p_StartDate DATE,
    IN p_EndDate DATE
)
BEGIN
    SELECT *
    FROM Customers
    WHERE RegistrationDate BETWEEN p_StartDate AND p_EndDate;
END $$
DELIMITER ;

CALL GetCustomersByDateRange('2026-01-01', '2026-03-31');


DELIMITER $$
CREATE PROCEDURE GetCustomersWithoutEmail()
BEGIN
    SELECT *
    FROM Customers
    WHERE Email IS NULL OR Email = '';
END $$
DELIMITER ;

CALL GetCustomersWithoutEmail();
