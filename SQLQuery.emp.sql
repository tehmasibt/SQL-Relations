
--------TASK1--------
CREATE DATABASE Course
USE Course

CREATE TABLE Users
(
Id int,
[Name] nvarchar(50),
Surname nvarchar(50),
Age int CHECK (Age>0),
Email nvarchar(50),
IsDeleted bit
)
INSERT INTO Users VALUES
(8,'Tehmasib','Taghiyev',20,'thms@gmail.com',1),
(7,'Nofel','Baghirov',19,'nflb@gmail.com',0),
(5,'Taleh','Quliyev',18,'tlhq@gmail.com',1),
(1,'Xeyal','Taghiyev',19,'xylt@gmail.com',0)


CREATE TABLE Educations
(
Id int,
[Name] nvarchar(50)
)

CREATE TABLE Teachers
(
Id int,
FullName nvarchar(50),
Age int CHECK(Age>0),
Email nvarchar(50),
[Address] nvarchar(50),
IsDeleted bit
)
INSERT INTO Teachers VALUES
(2,'Zeynalov Araz',37,'araz@gmail.com','Tovuz',1),
(3,'Murselov Fikret',55,'araz@gmail.com','Tovuz',0),
(4,'Zeynalabdiyev Faiq',48,'araz@gmail.com','Tovuz',1),
(5,'Humbetov Ismayil',67,'araz@gmail.com','Tovuz',0)


SELECT * FROM Users

SELECT * FROM Users WHERE Age<20

SELECT COUNT(*) AS UserCount FROM Users

SELECT FullName, Age, [Address] FROM Teachers WHERE IsDeleted=0

SELECT COUNT(*) AS TeacherCount FROM Teachers WHERE Age>30

--------TASK1--------

--------TASK2--------

CREATE TABLE Employee
(
Id int PRIMARY KEY IDENTITY,
FullName nvarchar(25) NOT NULL,
Age int NOT NULL CHECK(Age>0),
Email nvarchar(50) NOT NULL UNIQUE,
Salary decimal NOT NULL CHECK(Salary>300 AND Salary<2000)
)
INSERT INTO Employee (FullName, Age, Email, Salary) VALUES
('Tehmasib Taghiyev', 20, 'thmstag@gmail.com', 1500),
('Ayxan Taghizade', 20, 'ayxant@gmail.com', 1700),
('Kamran Bakhsaliyev', 26, 'makranb@gmail.com', 1900),
('Akif Taghiyev', 20, 'akifff@gmail.com', 1300)

SELECT * FROM Employee

--------TASK2--------










