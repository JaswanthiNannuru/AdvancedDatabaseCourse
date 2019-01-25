DROP TABLE Advisor;
DROP TABLE Student;

Create table Advisor(
Advisor_ID NUMBER(5),
Advisor_Name VARCHAR(10),
PRIMARY KEY (Advisor_ID));

Create table Student(
Student_ID NUMBER(5),
Student_Name VARCHAR(10),
Advisor_ID NUMBER(5),
PRIMARY KEY (STUDENT_ID),
FOREIGN KEY (ADVISOR_ID) REFERENCES ADVISOR (ADVISOR_ID));

INSERT INTO ADVISOR VALUES(1, 'Case');
INSERT INTO ADVISOR VALUES(2, 'Hoot');
INSERT INTO ADVISOR VALUES(3, 'Bell');
INSERT INTO ADVISOR VALUES(4, 'Fellah');
INSERT INTO ADVISOR VALUES(5, 'Hawley');

select * from Advisor;

INSERT INTO Student VALUES(34, 'Bob', 1);
INSERT INTO Student VALUES(32, 'Raj', 1);
INSERT INTO Student VALUES(13, 'Allen', 3);
INSERT INTO Student VALUES(15, 'David', 2);
INSERT INTO Student VALUES(12, 'John', 3);
INSERT INTO Student VALUES(43, 'Sally', null);
INSERT INTO Student VALUES(17, 'Twyla', 2);

select * from student;

Update student set student_Name = 'Adam' 
where STUDENT_ID = 17;

select * from student;

COMMIT;

Delete from student 
where STUDENT_ID = 12;

select * from student;

ROLLBACK;

select * from student
order by STUDENT_NAME;
