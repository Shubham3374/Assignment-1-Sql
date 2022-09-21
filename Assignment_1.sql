-- Question number 1 Answer :

SHOW DATABASES;
CREATE DATABASE startek;
USE startek;
CREATE TABLE SalesPeople (
    Snum INT PRIMARY KEY,
    Sname VARCHAR(50),
    city VARCHAR(50),
    comm INT
);
INSERT INTO Salespeople(Snum ,Sname ,city ,comm) VALUES (1001 ,'Peel.' ,'London.' ,12);
INSERT INTO Salespeople(Snum ,Sname ,city ,comm) VALUES (1002 ,'Serres' ,'Sanjose' ,13);
INSERT INTO Salespeople(Snum ,Sname ,city ,comm) VALUES (1004 ,'Motika' ,'London .' ,11);
INSERT INTO Salespeople(Snum ,Sname ,city ,comm) VALUES (1007 ,'Rifkin' ,'Barcelona' ,15);
INSERT INTO Salespeople(Snum ,Sname ,city ,comm) VALUES (1003 ,'Axelrod' ,'Newyork' ,10);

SELECT * FROM SalesPeople;

CREATE TABLE Customers (
    Cnum INT PRIMARY KEY,
    Cname VARCHAR(50),
    City VARCHAR(50),
    Snum INT,
    FOREIGN KEY (Snum)
        REFERENCES SalesPeople(Snum)
);
INSERT INTO Customers(Cnum ,Cname ,City ,Snum) VALUES (2001 , "Hoffman", "London",1001);
INSERT INTO Customers(Cnum ,Cname ,City ,Snum) VALUES (2002 , "Giovanni", "Rome ",1003);
INSERT INTO Customers(Cnum ,Cname ,City ,Snum) VALUES (2003 , "Liu", "Sanjose",1002);
INSERT INTO Customers(Cnum ,Cname ,City ,Snum) VALUES (2004 , "Grass", "Berlin", 1002 );
INSERT INTO Customers(Cnum ,Cname ,City ,Snum) VALUES (2006 , "Clemens", "London ",1001);
INSERT INTO Customers(Cnum ,Cname ,City ,Snum) VALUES (2008 , "Cisneros", "Sanjose ",1007);
INSERT INTO Customers(Cnum ,Cname ,City ,Snum) VALUES (2007 , "Pereira", "Rome",1004);

    
SELECT * FROM Customers;

-- Question number 3 Answer :
CREATE TABLE Orders (
    Onum INT PRIMARY KEY,
    Amt INT,
    Odate DATE,
    Snum INT,
    Cnum INT,
    FOREIGN KEY (Cnum)
        REFERENCES Customers (Cnum),
    FOREIGN KEY (Snum)
        REFERENCES SalesPeople (Snum)
);
INSERT INTO Orders(Onum,Amt,Odate,Snum,Cnum) VALUES (3001,18.69,'1990-10-03', 2008, 1007);
INSERT INTO Orders(Onum,Amt,Odate,Snum,Cnum) VALUES (3003,767.19,'1990-10-03', 2001, 1001);
INSERT INTO Orders(Onum,Amt,Odate,Snum,Cnum) VALUES (3002,1900.10,'1990-10-03', 2007, 1004);
INSERT INTO Orders(Onum,Amt,Odate,Snum,Cnum) VALUES (3005,5160.45,'1990-10-03', 2003, 1002);
INSERT INTO Orders(Onum,Amt,Odate,Snum,Cnum) VALUES (3006,1098.16,'1990-10-03', 2008, 1007);
INSERT INTO Orders(Onum,Amt,Odate,Snum,Cnum) VALUES (3009,1713.23,'1990-10-04', 2002, 1003);
INSERT INTO Orders(Onum,Amt,Odate,Snum,Cnum) VALUES (3007,75.75,'1990-10-04', 2004, 1002);
INSERT INTO Orders(Onum,Amt,Odate,Snum,Cnum) VALUES (3008,4273.00,'1990-10-05', 2006, 1001);
INSERT INTO Orders(Onum,Amt,Odate,Snum,Cnum) VALUES (3010,1309.95,'1990-10-06', 2004, 1002);
INSERT INTO Orders(Onum,Amt,Odate,Snum,Cnum) VALUES (3011,9891.88,'1990-10-06', 2006, 1001);

