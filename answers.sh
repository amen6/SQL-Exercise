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

DELETE FROM students WHERE	Name = "Layal";
   