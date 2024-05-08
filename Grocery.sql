USE master;  
GO
IF DB_ID ( N'GroceriesDB' ) IS NOT NULL
DROP DATABASE GroceriesDB;
GO
CREATE DATABASE GroceriesDB;  
GO
use GroceriesDB;
IF OBJECT_ID(N'dbo.Product', N'U') IS NOT NULL  
   DROP TABLE [dbo].[Product];  
GO
IF OBJECT_ID(N'dbo.Grocery', N'U') IS NOT NULL  
   DROP TABLE [dbo].[Grocery];  
GO
CREATE TABLE Product (Product_Id INT PRIMARY KEY IDENTITY (1, 1),Product_Name nchar(150) NOT NULL, Product_Price numeric(18,2) NOT NULL);

CREATE TABLE Grocery (Grocery_Id INT PRIMARY KEY IDENTITY (1,1),Grocery_Amount numeric(18,2) NOT NULL, Grocery_Date datetime NOT NULL);
INSERT INTO Product ([Product_Name],[Product_Price]) VALUES ('Oranges',3.20);
INSERT INTO Product ([Product_Name],[Product_Price]) VALUES ('Pasteque',1.00);
INSERT INTO Product ([Product_Name],[Product_Price]) VALUES ('Onions',3.14);
INSERT INTO Grocery([Grocery_Amount],[Grocery_Date]) VALUES (3.20, GETDATE());
INSERT INTO Grocery([Grocery_Amount],[Grocery_Date]) VALUES (6.34, GETDATE());