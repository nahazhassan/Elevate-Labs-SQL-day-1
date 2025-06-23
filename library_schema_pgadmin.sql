
-- Create Database
CREATE DATABASE LibraryDB;
-- Connect to LibraryDB before running the following statements

-- Create Member Table
CREATE TABLE Member (
    MemberID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    MembershipDate DATE
);

-- Create Book Table
CREATE TABLE Book (
    BookID SERIAL PRIMARY KEY,
    Title VARCHAR(255),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    PublishedYear INT
);

-- Create Librarian Table
CREATE TABLE Librarian (
    LibrarianID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE
);

-- Create Loan Table
CREATE TABLE Loan (
    LoanID SERIAL PRIMARY KEY,
    BookID INT REFERENCES Book(BookID),
    MemberID INT REFERENCES Member(MemberID),
    LibrarianID INT REFERENCES Librarian(LibrarianID),
    LoanDate DATE NOT NULL,
    ReturnDate DATE
);
