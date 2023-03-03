use Session8 

--insert data in table Student'

set identity_insert Student on;

insert into Student( SID, S_FName, S_LName) values (12345, 'Chris', 'Rock')
go

insert into Student(SID, S_FName, S_LName) values (23456, 'Chris', 'Farley')
go

insert into Student(SID, S_FName, S_LName) values (34567, 'David','Spade')
go


insert into Student(SID, S_FName, S_LName) values (45678, 'Liz','Lemon')
go

insert into Student(SID, S_FName, S_LName) values (56789, 'Jack','Donaghy')
go

set identity_insert Student off

--insert data in table Course
SET IDENTITY_INSERT Course ON;

insert into Course(CID, Course_Name) values (101001, 'Intro to Computers') 

insert into Course(CID, Course_Name) values (101002,'Programming')
insert into Course(CID, Course_Name) values (101003,'Databases')
insert into Course(CID, Course_Name) values(101004, 'Websites')
insert into Course(CID, Course_Name) values (101005,'IS Management')

set identity_insert Course off;

--insert data in table Counrse_Grades

set identity_insert Course_Grades on

insert into Course_Grades(CGID, Semester, CID, SID, Grade) values (2010101, 'SP10', 101005, 34567, 'D+') 

insert into Course_Grades(CGID, Semester, CID, SID, Grade) values (2010308, 'FA10', 101005, 34567, 'A-')
   
insert into Course_Grades(CGID, Semester, CID, SID, Grade) values (2010309, 'FA10', 101001, 45678, 'B+') 


insert into Course_Grades(CGID, Semester, CID, SID, Grade) values (2011308, 'FA11', 101003, 23456, 'B-') 

insert into Course_Grades(CGID, Semester, CID, SID, Grade) values (2012206, 'SU12', 101002, 56789, 'A+')

set identity_insert Course_Grades off;



   