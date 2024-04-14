
--------One-to-One--------
CREATE DATABASE Relations
USE Relations
USE master

CREATE TABLE People
(
Id int PRIMARY KEY IDENTITY,
[Name] nvarchar(30),
Surname nvarchar(25)
)
INSERT INTO People ([Name], Surname) VALUES
('Tehmasib', 'Taghiyev'),
('Emil', 'Abbasov'),
('Kenan', 'Quliyev')

CREATE TABLE Suitability
(
Id int PRIMARY KEY IDENTITY,
QanQrupu nvarchar(10),
PersonId int FOREIGN KEY REFERENCES People(Id)
)

INSERT INTO Suitability (QanQrupu, PersonId) VALUES
('RH@+',1),
('RH4+',3),
('RH3-',2)

SELECT * FROM People
SELECT * FROM Suitability

--------One-to-One--------

--------One-to-Many--------

CREATE TABLE Cars
(
Id int PRIMARY KEY IDENTITY,
[Name] nvarchar(20)
)
INSERT INTO Cars ([Name]) VALUES
('Mercedes'),
('BMW')

CREATE TABLE Species
(
Id int PRIMARY KEY IDENTITY,
Brand nvarchar(20),
CarId int FOREIGN KEY REFERENCES Cars(Id)
)

INSERT INTO Species (Brand, CarId) VALUES
('GTR',1),
('F30',2),
('M8 Compitation',2),
('GT63s',1),
('E63s',1)

SELECT * FROM Cars
SELECT * FROM Species

--------One-to-Many--------

--------Many-to-Many--------
CREATE TABLE Comands
(
Id int PRIMARY KEY IDENTITY,
[Name] nvarchar(20)
)
INSERT INTO Comands ([Name]) VALUES
('Real Madrid'),
('Juventus'),
('Manchester United'),
('Barcelona'),
('Paris Saint-Germain')

CREATE TABLE Players
(
Id int PRIMARY KEY IDENTITY,
FullName nvarchar(30),
)
INSERT INTO Players (FullName) VALUES
('Cristiano Ronaldo'),
('Lionel Messi'),
('Neymar Junior')

CREATE TABLE ComandsPlayers
(
Id int PRIMARY KEY IDENTITY,
ComandId int FOREIGN KEY REFERENCES Comands(Id),
PlayerId int FOREIGN KEY REFERENCES Players(Id)
)

INSERT INTO ComandsPlayers (ComandId, PlayerId) VALUES
(1,1),
(4,3),
(5,3),
(4,2),
(3,2),
(2,1),
(3,1)

--------Many-to-Many--------






