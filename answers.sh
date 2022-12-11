SELECT * FROM students;
SELECT * FROM students WHERE Age > 30;
SELECT * FROM students WHERE Age > 30 AND  Gender = "F";
SELECT Points FROM students WHERE Name = "Alex";
INSERT INTO students(Name, Age, Gender, Points) VALUES("Amen", 18, "M", 700);
UPDATE students SET Points = Points + 100 WHERE Name = "Basma";
UPDATE students SET Points = Points - 50 WHERE Name = "Alex";

CREATE TABLE graduates(
	ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Name TEXT NOT NULL UNIQUE,
	Age INTEGER,
	Gender TEXT,
	Points INTEGER,
	Graduation TEXT);
	
INSERT INTO graduates(Name, Age, Gender, Points)
    SELECT Name, Age, Gender, Points FROM students
    WHERE Name = "Layal";

UPDATE graduates 
    SET Graduation = "08/09/2018" 
    WHERE Name = "Layal";

DELETE FROM students 
	WHERE	Name = "Layal";
   
CREATE TABLE newtable AS
	SELECT employees.Name, companies.Name, companies.Date
	FROM employees JOIN companies
	On employees.Company = companies.Name;

SELECT Name FROM newtable
	WHERE Date < 2000;

SELECT Company FROM employees
	WHERE Role = "Graphic Designer";


SELECT name FROM students
	WHERE Points = 
 	(SELECT MAX(Points) FROM students);

SELECT AVG(Points) FROM students;	

SELECT COUNT(1) FROM students
	WHERE Points = 500;

SELECT * FROM students
	WHERE Name LIKE "%s%";

SELECT * FROM students
	ORDER BY Points DESC;