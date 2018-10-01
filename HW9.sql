CREATE DATABASE College;  
GO  

use College;
Go

CREATE TABLE Students 
(ID int IDENTITY(1,1) PRIMARY KEY CLUSTERED,
 FName varchar(100),
 Lname varchar(100),
 SSN int,
 Address varchar(255),
 City varchar(100),
 State varchar(100),
 Zip int,
 Phone# bigint
);  

use College;
Go

CREATE TABLE Classes 
(ID int IDENTITY(1,1) PRIMARY KEY CLUSTERED,
 StudentID int NOT NULL REFERENCES Students(ID),
 Title varchar(100),
 Number tinyint,
 Department varchar(255),
); 

use College;
Go

CREATE TABLE Scores 
(ID int IDENTITY(1,1) PRIMARY KEY CLUSTERED,
 ClassID int NOT NULL REFERENCES Classes(ID),
 Type varchar (100), 
 Description varchar (255), 
 DateAssigned datetime, 
 DateDue datetime,
 DateSubmitted datetime, 
 PointsEarned int, 
 PointsPossible int,
); 

use College;
Go

insert into dbo.Students 
VALUES('Justin', 'Holubek', 123456789, '123 Any Street', 'Any City', 'Any State', 44444, 4442222222),
('Zachary', 'Holubek', 234567891, '123 Any Street', 'Any City', 'Any State', 44444, 4442222223),
('Sammy', 'Holubek', 345678912, '123 Any Street', 'Any City', 'Any State', 44444, 4442222224);

use College;
Go

insert into dbo.Classes 
VALUES(1, 'C Sharp', 101, 'Information Technology'),
(2, 'Food Preparation', 102, 'Cullinary Arts'),
(3, 'Beginning Engineering', 103, 'Engineering');

use College;
Go

insert into dbo.Scores 
VALUES (1, 'HW', 'Learn C Sharp Without Loosing Your Mind', '09/15/2018', '09/20/2018', '09/22/2018', 20, 100),
(2, 'Exam', 'Prepare Paprikash Soup', '09/20/2018', '09/22/2018', '09/22/2018', 100, 100),
(3, 'Quiz', 'Quiz on basic concepts', '09/27/2018', '09/27/2018', '09/27/2018', 90, 100);

 
