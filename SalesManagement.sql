create database salesManagement;
use salesManagement;
create table customer (
customerID int primary key auto_increment,
customerName varchar(50),
customerAge int
);

create table orderList (
oderID int primary key auto_increment,
customerID int not null,
orderDate date,
totalPrice int,
FOREIGN KEY (customerID) references customer(customerID)
);

create table product(
productID int primary key auto_increment,
productName varchar(50),
price float
);

create table OrderDetail (
oderID int not null,
productID int not null,
orderQty int,
FOREIGN KEY (oderID) references orderList(oderID),
FOREIGN KEY (productID) references product(productID),
PRIMARY KEY (oderID, productID)
);

