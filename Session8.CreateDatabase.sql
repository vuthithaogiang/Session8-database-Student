use master 
if exists (select * from sys.databases where Name='Session8')
drop database Session8

create database Session8

use Session8

create table Student (
    SID int identity(1,1) primary key,
	S_FName varchar(20) not null,
	S_LName varchar(30) not null
	
);

create table Course (
   CID int identity(1,1) primary key,
   C_Name varchar(30) not null
);


create table Course_Grades (
 CGID int identity(1,1) primary key,
 Semester char(4) not null,
 CID int not null,
 SID int not null,
 Grade char(2) not null, 
 foreign key (CID) references Course(CID) on delete cascade on update cascade,
 foreign key (SID) references Student(SID) on delete cascade on update cascade


);

--3. change maximum length first name: 30

alter table Student
 alter column S_FName varchar(30)
go

--4. add column
alter table Course
   add 
    Facully_LName varchar(30) not null default('TBD')
go

--5. update values
update
    Course
set
    Facully_LName='Potter', C_Name='Intro to Wizardry'
where 
    CID = 1
go


--6. change colum name

sp_rename 'Course.C_Name', 'Course_Name', 'COLUMN' 
go

--7. delete 'Websites' class from Course table

delete
from 
   Course
where
   Course_Name = 'Websites'
go

--8. Remove Student Table from datababase

--drop table if exists dbo.Student 

--9. Remove aff data Course, but retain table Strucrure
delete from Course 
go

delete from Student
go


--10. 

alter table Course_Grades 
  drop constraint [FK__Course_Grad__CID__4D94879B], [FK__Course_Grad__SID__4E88ABD4]
go

ALTER INDEX ALL ON dbo.Course DISABLE;
ALTER INDEX ALL ON dbo.Course Rebuild;




 
select * from Student

select * from Course

select * from Course_Grades