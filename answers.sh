SELECT * FROM students;
SELECT * FROM students WHERE Age > 30;
SELECT * FROM students WHERE Age > 30 AND  Gender = "F";
SELECT Points FROM students WHERE Name = "Alex";
INSERT INTO students(Name, Age, Gender, Points) VALUES("Amen", 18, "M", 700);
UPDATE students SET Points = Points + 100 WHERE Name = "Basma";
UPDATE students SET Points = Points - 50 WHERE Name = "Alex";