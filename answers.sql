CREATE TABLE ProductDetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(100)
);

INSERT INTO ProductDetail_1NF VALUES (101, 'John Doe', 'Laptop');
INSERT INTO ProductDetail_1NF VALUES (101, 'John Doe', 'Mouse');
INSERT INTO ProductDetail_1NF VALUES (102, 'Jane Smith', 'Tablet');
INSERT INTO ProductDetail_1NF VALUES (102, 'Jane Smith', 'Keyboard');
INSERT INTO ProductDetail_1NF VALUES (102, 'Jane Smith', 'Mouse');
INSERT INTO ProductDetail_1NF VALUES (103, 'Emily Clark', 'Phone');




CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

INSERT INTO Orders VALUES 
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

CREATE TABLE OrderItems (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO OrderItems VALUES 
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);