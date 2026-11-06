CREATE DATABASE IF NOT EXISTS Sample5;
USE Sample5;
CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    price DECIMAL(10,2),
    stock_quantity INT,
    status VARCHAR(20) DEFAULT 'Available'
);
CREATE TABLE Inventory_Audit (
    audit_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    action_type VARCHAR(50),
    old_value VARCHAR(100),
    new_value VARCHAR(100),
    changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Products (name, price, stock_quantity)
VALUES
('Laptop', 50000, 10),
('Mobile', 20000, 5),
('Keyboard', 1000, 20),
('Mouse', 500, 0);

DELIMITER //
CREATE TRIGGER PreventNegativeStock
BEFORE UPDATE ON Products
FOR EACH ROW
BEGIN
    IF NEW.stock_quantity < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Stock quantity cannot be negative';
    END IF;
END //
DELIMITER 


DELIMITER //
CREATE TRIGGER AuditPriceChanges
AFTER UPDATE ON Products
FOR EACH ROW
BEGIN
    IF OLD.price <> NEW.price THEN
        INSERT INTO Inventory_Audit
        (product_id, action_type, old_value, new_value)
        VALUES
        (OLD.product_id, 'PRICE UPDATE',
         OLD.price, NEW.price);
    END IF;
END //
DELIMITER ;


DELIMITER //
CREATE TRIGGER UpdateProductStatus
BEFORE UPDATE ON Products
FOR EACH ROW
BEGIN
    IF NEW.stock_quantity = 0 THEN
        SET NEW.status = 'Out of Stock';
    ELSE
        SET NEW.status = 'Available';
    END IF;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER UppercaseProductName
BEFORE INSERT ON Products
FOR EACH ROW
BEGIN
    SET NEW.name = UPPER(NEW.name);
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER LogNewProduct
AFTER INSERT ON Products
FOR EACH ROW
BEGIN
    INSERT INTO Inventory_Audit
    (product_id, action_type, old_value, new_value)
    VALUES
    (NEW.product_id, 'PRODUCT INSERT',
     NULL, NEW.name);
END //
DELIMITER ;


SHOW TRIGGERS;