CREATE TABLE Students
	([id] int,
     [name] nvarchar(21),
     [marks] int)
;

CREATE TABLE Grades
	([grade] int,
     [min_mark] int,
     [max_mark] int)
;

INSERT INTO Grades
	([grade], [min_mark], [max_mark])
VALUES
    (1,0,9),
    (2,10,19),
    (3,20,29),
    (4,30,39),
    (5,40,49),
    (6,50,59),
    (7,60,69),
    (8,70,79),
    (9,80,89),
    (10,90,100)
;


INSERT INTO Students
    ([id], [name], [marks])
VALUES
    (1, 'Julia', 88),
    (2, 'Samantha', 68),
    (3, 'Maria', 99),
    (4, 'Scarlet', 78),
    (5, 'Ashley', 63),
    (6, 'Jane', 81)
