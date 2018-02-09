CREATE DATABASE ProjectManagementSystem;
USE ProjectManagementSystem;

CREATE TABLE Student (
	SID INT PRIMARY KEY,
	NAME VARCHAR(30),
	Gender CHAR(1),
	email VARCHAR(30)
);

CREATE TABLE Projects (
	PID INT PRIMARY KEY,
	NAME VARCHAR(30)
);
        
CREATE TABLE Teams (
	TID INT PRIMARY KEY,
    LeaderID INT,
    NoOfMembers INT
);

CREATE TABLE Members (
	SID INT,
    TID INT,
    DateJoined DATE,
    Role VARCHAR(30),
    PRIMARY KEY(SID, TID)
);

CREATE TABLE Demos (
	SID INT,
    TID INT,
    `Date` DATE,
    `Time` TIME,
    Grade CHAR(1),
    PRIMARY KEY(SID, TID)
);