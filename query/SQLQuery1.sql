CREATE TABLE Members(
MemberID INT IDENTITY(1,1) PRIMARY KEY,
Name  VARCHAR(100) not null,
Email VarCHAR(100) not null,
PhoneNumber varchar(15) not null,
RegistrationDate date
);

CREATE TABLE Admins (
    AdminID INT IDENTITY(1,1) PRIMARY KEY ,
    Username VARCHAR(50) UNIQUE NOT NULL,
    PasswordHash VARCHAR(255) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Loans (
    LoanID INT IDENTITY(1,1) PRIMARY KEY,
    MemberID INT,
    BookID INT,
    IssueDate DATE NOT NULL,
    DueDate DATE NOT NULL,
    ReturnDate DATE,
    FineAmount DECIMAL(10, 2),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

--  DATA SAMPLE


INSERT INTO Members ( Name, Email, PhoneNumber, RegistrationDate)
VALUES

( 'mohamed Ali', 'mohamed.ali@google.com', '01298765432', '2024-02-15');


INSERT INTO Categories ( Name)
VALUES
( 'Fiction'),
( 'Non-Fiction');


INSERT INTO Books( Title, AuthorID, CategoryID, CopiesAvailable)
VALUES
('«·—Ê«Ì… «·⁄ŸÌ„…', 1, 2, 5),
( '«·⁄·„ «·„»”ÿ', 2, 2, 5);


INSERT INTO Loans ( MemberID, BookID, IssueDate, DueDate, ReturnDate, FineAmount)
VALUES
( 1, 1, '2024-03-01', '2024-03-15', NULL, 0.00);


INSERT INTO Admins ( Username, PasswordHash, Email)
VALUES
( 'Alien', 'hashed_password_1', 'Alien@google.com'),
( 'admin', 'hashed_password_2', 'admin@google.com');


INSERT INTO Authors ( Name, Bio)
VALUES
( '  ⁄»œ«·—Õ„‰ „’ÿ›Ï', 'ﬂ« » „’—Ì „ Œ’’ ›Ì «·√œ»'),
( '”⁄«œ „’ÿ›Ï', 'ﬂ« »… Ê»«ÕÀ… ›Ì «·⁄·Ê„');
