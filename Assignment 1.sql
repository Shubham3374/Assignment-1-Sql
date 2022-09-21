-- Question 1 answer :

create table Salespeople(snum number(5) constraint snum_PK primary key,sname varchar(10)not null,city varchar(10) not null,comm number(5,2) not null);
    
insert into Salespeople values('1001','Peel','London','0.12');

insert into Salespeople values('1002','Serres','San Jose','0.13');

insert into Salespeople values('1004','Motika','London','0.11');

insert into Salespeople values('1007','Rifkin','Barcelona','0.15');

insert into Salespeople values('1003','Axelrod','New York','0.10');

select * from Salespeople;



-- Question 2 answer : 

 create table Customers(Cnum number(5) constraint Cnum_PK primary key,Cname varchar2(10) notnull,city varchar(10) not null,Rating number(5) null,snum number(5) not null,constraint fk_snum foreignkey(snum) references Salespeople(snum));
 
insert into Customers values('2001','Hoffman','London','100','1001');
 
insert into Customers values('2002','Glovanni','Rome','200','1003');
 
insert into Customers values('2003','Liu','San Jose','200','1002');
 
insert into Customers values('2004','Grass','Berlin','300','1002');
 
insert into Customers values('2006','Clemens','London',Null,'1001');

insert into Customers values('2008','Cisneros','San Jose','300','1007');

insert into Customers values('2007','Pereira','Rome','300','1004');

select * from Customers ;


-- Question 3 answer :


