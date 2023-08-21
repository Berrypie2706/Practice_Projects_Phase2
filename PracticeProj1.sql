create database Practice_Projects
use Practice_Projects
CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY,
    SubjectName NVARCHAR(100) NOT NULL
)


CREATE TABLE Classes (
    ClassID INT PRIMARY KEY,
    ClassName NVARCHAR(50) NOT NULL
)


CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    DateOfBirth DATE,
    ClassID INT FOREIGN KEY REFERENCES Classes,
    SubjectID INT FOREIGN KEY REFERENCES Subjects
)

INSERT INTO Subjects (SubjectID, SubjectName)
VALUES
    (1, 'Mathematics'),
    (2, 'Science'),
    (3, 'History'),
    (4, 'English');


INSERT INTO Classes (ClassID, ClassName)
VALUES
    (101, 'Class 1'),
    (102, 'Class 2'),
    (103, 'Class 3'),
    (104, 'Class 4');


INSERT INTO Students (StudentID, FirstName, LastName, DateOfBirth, ClassID, SubjectID)
VALUES
    (1001, 'John', 'Doe', '2005-03-15', 101, 1),
    (1002, 'Jane', 'Smith', '2006-08-22', 102, 2),
    (1003, 'Michael', 'Johnson', '2004-05-10', 101, 3),
    (1004, 'Emily', 'Williams', '2005-12-01', 103, 4);

	SELECT s.StudentId, s.FirstName, s.LastName, s.DateOfBirth, c.ClassName, sb.SubjectName from Students s
	join Classes c on s.ClassID = c.ClassID
	join Subjects sb on s.SubjectID = sb.SubjectID

	
	SELECT s.StudentId, s.FirstName, s.LastName, s.DateOfBirth, c.ClassID, c.ClassName, sb.SubjectID, sb.SubjectName from Students s
	join Classes c on s.ClassID = c.ClassID
	join Subjects sb on s.SubjectID = sb.SubjectID


