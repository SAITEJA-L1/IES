create database ies;

use ies;
create table Products(productid integer primary key,productName text,desription text,price integer,category text);

create table Regions(regionid integer primary key,regionName text);


create table TimePeriods(TimePeriodId int primary key,TimePeriodName text);

create table Customers(CustomerId int primary key, CustomerName text,Address text,age int,loyalityStatus text);

create table Purchases(PurchaseId int, CustomerId int,TimePeriodID int,Amount int);

create table PurchaseProduct(PurchaseId int,ProductId int);

create table ProductRegion as select p.ProductId,r.RegionId from Products p join Regions r;

create table InventoryTable(invId int,ProductId int,stock int);


select * from productRegion;
