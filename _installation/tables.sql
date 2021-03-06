CREATE TABLE IF NOT EXISTS Product (
    ProductID int(11) NOT NULL AUTO_INCREMENT,
    SupplierProductID varchar(50),
    ProductDescription varchar(225),
    SupplierID int(11),
    CategoryID int(11),
    PRIMARY KEY (ProductID)
    );
CREATE TABLE IF NOT EXISTS ProductDetail (
    ProductDetailID int(11) NOT NULL AUTO_INCREMENT,
    ProductID int(11) COMMENT 'foreign key to Product',
    Color varchar(50),
    Weight varchar(50),
    boxSize varchar(50),
    PRIMARY KEY (ProductDetailID)
    );
CREATE TABLE IF NOT EXISTS Supplier (
    SupplierID int(11) NOT NULL AUTO_INCREMENT,
    CompanyName varchar(50),
    ContactFName varchar(50),
    ContactLName varchar(50),
    ContactTitle varchar(50),
    Address1 varchar(50),
    Address2 varchar(50),
    City varchar(15),
    State varchar(25),
    PostalCode varchar(15),
    Country varchar(20),
    Phone varchar(20),
    email varchar(50),
    website varchar(50),
    PRIMARY KEY (SupplierID)
    );
CREATE TABLE IF NOT EXISTS OOrder(
    OrderID int(11) NOT NULL AUTO_INCREMENT,
    CustomerID int(11),
    PaymentID int(11),
    OrderDate datetime,
    PaymentDate datetime,
    Amount numeric(15, 2),
    SalesTax numeric(15, 2),
    Paid numeric(15, 2),
    PRIMARY KEY (OrderID)
    
    );
CREATE TABLE IF NOT EXISTS OrderDetail(
    OrderDetailID int(11) NOT NULL AUTO_INCREMENT,
    OrderID int(11) COMMENT 'foreign key of order',
    ProductID int(11),
    Price numeric(15, 2),
    Quantity numeric(15, 2),
    Discount float,
    SalesTax numeric(15, 2),
    Total numeric(15, 2),
    BillDate datetime,
    ShipDate datetime,
    ShipperID int(11),
    PRIMARY KEY (OrderDetailID)
    );
CREATE TABLE IF NOT EXISTS Category(
  CategoryID int(11) NOT NULL AUTO_INCREMENT,
  Name varchar(50),
  PRIMARY KEY (CategoryID)
);


insert into Category(Name) values ('Mobile & Accessories');
insert into Category(Name) values ('Computer');
insert into Category(Name) values ('Electronics');
insert into Category(Name) values ('Home & Kitchen');
insert into Category(Name) values ('Sports & Health');
insert into Category(Name) values ('Cars & Bikes');
insert into Category(Name) values ('Gifts & Sweets');
insert into Category(Name) values ('Fashion');
insert into Category(Name) values ('Books');
insert into Category(Name) values ('Stationery');

insert into OOrder(PaymentID, PaymentDate, Amount)
insert into Product(ProductDescrition, Price) values ('Asus Zenfone Max 16 GB', 11549.00)
http://www.databaseanswers.org/data_models/
https://www.princeton.edu/~rcurtis/ultradev/ecommdatabase2.html
