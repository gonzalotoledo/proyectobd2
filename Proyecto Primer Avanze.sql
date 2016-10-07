CREATE TABLE Faculty(
idFaculty int not null primary key,
Nombre_Facultad Varchar(50) not null
);
create table School(
idSchool int not null primary key,
Name_School int not null,
Number_Faculty  int not null );

create table AcademicPlan(
idAcademic int not null primary key,
NamePlan Varchar(50) not null,
School int not null );

create table AcademicCycle(
idCycle int not null primary key,
Name_Cycle Varchar(5) not null,
AcademicPlan int not null);

create table Course(
idCourse int not null primary key,
NameCourse varchar(25) not null,
Credits int not null,
Profesor int not null,
AcademicCycle int not null);

create table Teacher(
idTeacher int not null primary key,
Name_Teacher VARCHAR(50) NOT NULL,
Last_Name VARCHAR(50) NOt NULL,
Age int not null,
Nationality int not null
);
create table Enrolment(
idEnrolment int not null primary key,
Fecha DATE not null,
Semester Varchar(25) not null,
Course int not null,
Student int not null
);
create table Student(
idStudent int not null primary key,
Name_Student VARCHAR(50) not null,
Last_Name Varchar(50) not null,
School int not null,
Nationality int not null,
Average number(2,3) not null,
Situation Varchar(10) check(Situation In('BICA','TRICA','NORMAL')),
Nationality int not null);

create table Nationality(
IdNationality int not null primary key,
NameOfNationality varchar(50) not null);

create table EnrolmentCourse(
Enrolement int not null,
Course int not null
);

create table CourseTeacher(
Course int not null,
Teacher int not null);

create SEQUENCE SEQFACULTY MINVALUE 1 START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE SEQSCHOOL MINVALUE 1 START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE SEQACADEMICPLAN MINVALUE 1 START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE SEQACADEMICCYCLE MINVALUE 1 START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE SEQCOURSE MINVALUE 1 START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE SEQTEACHER MINVALUE 1 START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE SEQNATIONALITY MINVALUE 1 START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE SEQENROLMENT MINVALUE 1 START WITH 1 INCREMENT BY 1;



/*
drop table Student;
drop table Faculty;
drop table School;
drop table Enrolment;
drop table AcademicCycle;
drop table Course;
drop table Teacher;
drop table AcademicPlan;
*/ 

