 /* drop user C##memo;
create user  C##memo identified by memo;

grant create session to C##memo;
alter session set container =pbd1;
revoke create table from C##memo;
grant create table to C##memo;
grant insert on students to C##memo;
grant insert to C##memo;
select * from DBA_USERS; 
select * from DBA_TS_QUOTAS;
CREATE PLUGGABLE DATABASE salespdb ADMIN USER  C##memo IDENTIFIED BY memo
  STORAGE (MAXSIZE 2G MAX_SHARED_TEMP_SIZE 100M)
  DEFAULT TABLESPACE USERS 
    DATAFILE '/disk1/oracle/dbs/salespdb/sales01.dbf' SIZE 250M AUTOEXTEND ON
  PATH_PREFIX = '/disk1/oracle/dbs/salespdb/'
  FILE_NAME_CONVERT = ('/disk1/oracle/dbs/pdbseed/', '/disk1/oracle/dbs/salespdb/'); 
  
  -- USER SQL
ALTER USER "MDDATA" 
DEFAULT TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP"
ACCOUNT UNLOCK ;

-- ROLES
GRANT "DBA" TO "MDDATA" ;
ALTER USER "MDDATA" DEFAULT ROLE "RESOURCE","CONNECT";

-- SYSTEM PRIVILEGES
GRANT ALTER TABLESPACE TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ANY TRIGGER TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE USER TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY OUTLINE TO "MDDATA" WITH ADMIN OPTION;
GRANT FLASHBACK ANY TABLE TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER ANY MEASURE FOLDER TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER ANY SEQUENCE TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE CREDENTIAL TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER ANY LIBRARY TO "MDDATA" WITH ADMIN OPTION;
GRANT ADMINISTER SQL MANAGEMENT OBJECT TO "MDDATA" WITH ADMIN OPTION;
GRANT LOGMINING TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE MINING MODEL TO "MDDATA" WITH ADMIN OPTION;
GRANT UPDATE ANY TABLE TO "MDDATA" WITH ADMIN OPTION;
GRANT UPDATE ANY CUBE TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE TRIGGER TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ANY EVALUATION CONTEXT TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP PROFILE TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE TABLESPACE TO "MDDATA" WITH ADMIN OPTION;
GRANT DEBUG CONNECT SESSION TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ANY DIRECTORY TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ASSEMBLY TO "MDDATA" WITH ADMIN OPTION;
GRANT SELECT ANY CUBE TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY CREDENTIAL TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE SEQUENCE TO "MDDATA" WITH ADMIN OPTION;
GRANT SELECT ANY MEASURE FOLDER TO "MDDATA" WITH ADMIN OPTION;
GRANT READ ANY TABLE TO "MDDATA" WITH ADMIN OPTION;
GRANT ON COMMIT REFRESH TO "MDDATA" WITH ADMIN OPTION;
GRANT SELECT ANY SEQUENCE TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY SQL PROFILE TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ANY SQL PROFILE TO "MDDATA" WITH ADMIN OPTION;
GRANT ADMINISTER ANY SQL TUNING SET TO "MDDATA" WITH ADMIN OPTION;
GRANT ADVISOR TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER ANY MINING MODEL TO "MDDATA" WITH ADMIN OPTION;
GRANT EM EXPRESS CONNECT TO "MDDATA" WITH ADMIN OPTION;
GRANT EXECUTE ANY OPERATOR TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER PROFILE TO "MDDATA" WITH ADMIN OPTION;
GRANT EXECUTE ANY TYPE TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY DIRECTORY TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE TABLE TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY INDEX TO "MDDATA" WITH ADMIN OPTION;
GRANT ADMINISTER RESOURCE MANAGER TO "MDDATA" WITH ADMIN OPTION;
GRANT BECOME USER TO "MDDATA" WITH ADMIN OPTION;
GRANT MANAGE TABLESPACE TO "MDDATA" WITH ADMIN OPTION;
GRANT EXEMPT REDACTION POLICY TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ANY MINING MODEL TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY SQL TRANSLATION PROFILE TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE PLUGGABLE DATABASE TO "MDDATA" WITH ADMIN OPTION;
GRANT EXECUTE ASSEMBLY TO "MDDATA" WITH ADMIN OPTION;
GRANT SELECT ANY TABLE TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ROLLBACK SEGMENT TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER ANY CUBE TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER PUBLIC DATABASE LINK TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE OPERATOR TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY PROCEDURE TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY CUBE TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ANY INDEXTYPE TO "MDDATA" WITH ADMIN OPTION;
GRANT SELECT ANY MINING MODEL TO "MDDATA" WITH ADMIN OPTION;
GRANT EXECUTE ANY CLASS TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY MATERIALIZED VIEW TO "MDDATA" WITH ADMIN OPTION;
GRANT SELECT ANY TRANSACTION TO "MDDATA" WITH ADMIN OPTION;
GRANT ANALYZE ANY DICTIONARY TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE EXTERNAL JOB TO "MDDATA" WITH ADMIN OPTION;
GRANT INSERT ANY TABLE TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE LIBRARY TO "MDDATA" WITH ADMIN OPTION;
GRANT GRANT ANY OBJECT PRIVILEGE TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE JOB TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY OPERATOR TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER ANY RULE TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY LIBRARY TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY SEQUENCE TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE SQL TRANSLATION PROFILE TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP PUBLIC SYNONYM TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE CLUSTER TO "MDDATA" WITH ADMIN OPTION;
GRANT FORCE ANY TRANSACTION TO "MDDATA" WITH ADMIN OPTION;
GRANT UPDATE ANY CUBE DIMENSION TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE EVALUATION CONTEXT TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY CUBE BUILD PROCESS TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ANY OPERATOR TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP USER TO "MDDATA" WITH ADMIN OPTION;
GRANT EXECUTE ANY INDEXTYPE TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER ANY EDITION TO "MDDATA" WITH ADMIN OPTION;
GRANT TRANSLATE ANY SQL TO "MDDATA" WITH ADMIN OPTION;
GRANT LOCK ANY TABLE TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ANY TYPE TO "MDDATA" WITH ADMIN OPTION;
GRANT CHANGE NOTIFICATION TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY DIMENSION TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ANY DIMENSION TO "MDDATA" WITH ADMIN OPTION;
GRANT READ ANY FILE GROUP TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY RULE TO "MDDATA" WITH ADMIN OPTION;
GRANT SELECT ANY CUBE BUILD PROCESS TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER ANY ASSEMBLY TO "MDDATA" WITH ADMIN OPTION;
GRANT EXEMPT IDENTITY POLICY TO "MDDATA" WITH ADMIN OPTION;
GRANT REDEFINE ANY TABLE TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER ROLLBACK SEGMENT TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE RULE TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY VIEW TO "MDDATA" WITH ADMIN OPTION;
GRANT SYSOPER TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE PROCEDURE TO "MDDATA" WITH ADMIN OPTION;
GRANT INSERT ANY MEASURE FOLDER TO "MDDATA" WITH ADMIN OPTION;
GRANT SYSDBA TO "MDDATA" WITH ADMIN OPTION;
GRANT ANALYZE ANY TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER ANY TYPE TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ANY EDITION TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY TRIGGER TO "MDDATA" WITH ADMIN OPTION;
GRANT MANAGE ANY FILE GROUP TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER ANY SQL TRANSLATION PROFILE TO "MDDATA" WITH ADMIN OPTION;
GRANT INHERIT ANY PRIVILEGES TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ANY RULE TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE DIMENSION TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ROLLBACK SEGMENT TO "MDDATA" WITH ADMIN OPTION;
GRANT FLASHBACK ARCHIVE ADMINISTER TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER ANY RULE SET TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ANY SEQUENCE TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ANY TABLE TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE CUBE DIMENSION TO "MDDATA" WITH ADMIN OPTION;
GRANT EXECUTE ANY RULE TO "MDDATA" WITH ADMIN OPTION;
GRANT SYSKM TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ANY LIBRARY TO "MDDATA" WITH ADMIN OPTION;
GRANT EXECUTE ANY PROCEDURE TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ANY VIEW TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ANY CONTEXT TO "MDDATA" WITH ADMIN OPTION;
GRANT FORCE TRANSACTION TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY JOB TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ANY ROLE TO "MDDATA" WITH ADMIN OPTION;
GRANT DELETE ANY CUBE DIMENSION TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ANY CLUSTER TO "MDDATA" WITH ADMIN OPTION;
GRANT UPDATE ANY CUBE BUILD PROCESS TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY INDEXTYPE TO "MDDATA" WITH ADMIN OPTION;
GRANT ADMINISTER SQL TUNING SET TO "MDDATA" WITH ADMIN OPTION;
GRANT EXECUTE ANY PROGRAM TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ANY ASSEMBLY TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER DATABASE LINK TO "MDDATA" WITH ADMIN OPTION;
GRANT EXEMPT DDL REDACTION POLICY TO "MDDATA" WITH ADMIN OPTION;
GRANT GRANT ANY PRIVILEGE TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER ANY PROCEDURE TO "MDDATA" WITH ADMIN OPTION;
GRANT MERGE ANY VIEW TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ANY SQL TRANSLATION PROFILE TO "MDDATA" WITH ADMIN OPTION;
GRANT KEEP SYSGUID TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY EVALUATION CONTEXT TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER ANY OPERATOR TO "MDDATA" WITH ADMIN OPTION;
GRANT COMMENT ANY MINING MODEL TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER ANY CUBE DIMENSION TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER ANY ROLE TO "MDDATA" WITH ADMIN OPTION;
GRANT EXECUTE ANY ASSEMBLY TO "MDDATA" WITH ADMIN OPTION;
GRANT PURGE DBA_RECYCLEBIN TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE CUBE BUILD PROCESS TO "MDDATA" WITH ADMIN OPTION;
GRANT EXECUTE ANY RULE SET TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER ANY TRIGGER TO "MDDATA" WITH ADMIN OPTION;
GRANT UNDER ANY TABLE TO "MDDATA" WITH ADMIN OPTION;
GRANT BACKUP ANY TABLE TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE SYNONYM TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ANY CUBE BUILD PROCESS TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ANY CUBE TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER DATABASE TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER ANY TABLE TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE VIEW TO "MDDATA" WITH ADMIN OPTION;
GRANT EXECUTE ANY LIBRARY TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE RULE SET TO "MDDATA" WITH ADMIN OPTION;
GRANT EXEMPT ACCESS POLICY TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY CLUSTER TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ANY INDEX TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE TYPE TO "MDDATA" WITH ADMIN OPTION;
GRANT EXECUTE ANY EVALUATION CONTEXT TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER RESOURCE COST TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER ANY CLUSTER TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER ANY INDEX TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE PUBLIC SYNONYM TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY MINING MODEL TO "MDDATA" WITH ADMIN OPTION;
GRANT GLOBAL QUERY REWRITE TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY RULE SET TO "MDDATA" WITH ADMIN OPTION;
GRANT ADMINISTER KEY MANAGEMENT TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE MEASURE FOLDER TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ANY CUBE DIMENSION TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ROLE TO "MDDATA" WITH ADMIN OPTION;
GRANT RESTRICTED SESSION TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ANY PROCEDURE TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER USER TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY CONTEXT TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY SYNONYM TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY CUBE DIMENSION TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER ANY OUTLINE TO "MDDATA" WITH ADMIN OPTION;
GRANT ENQUEUE ANY QUEUE TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY TABLE TO "MDDATA" WITH ADMIN OPTION;
GRANT SELECT ANY CUBE DIMENSION TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER ANY EVALUATION CONTEXT TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE SESSION TO "MDDATA" WITH ADMIN OPTION;
GRANT QUERY REWRITE TO "MDDATA" WITH ADMIN OPTION;
GRANT DEQUEUE ANY QUEUE TO "MDDATA" WITH ADMIN OPTION;
GRANT EXPORT FULL DATABASE TO "MDDATA" WITH ADMIN OPTION;
GRANT RESUMABLE TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE PUBLIC DATABASE LINK TO "MDDATA" WITH ADMIN OPTION;
GRANT UNLIMITED TABLESPACE TO "MDDATA" WITH ADMIN OPTION;
GRANT UNDER ANY VIEW TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ANY OUTLINE TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY EDITION TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY ASSEMBLY TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER ANY INDEXTYPE TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ANY MATERIALIZED VIEW TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE INDEXTYPE TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER ANY SQL PROFILE TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER SYSTEM TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ANY SYNONYM TO "MDDATA" WITH ADMIN OPTION;
GRANT GRANT ANY ROLE TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE MATERIALIZED VIEW TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ANY RULE SET TO "MDDATA" WITH ADMIN OPTION;
GRANT MANAGE SCHEDULER TO "MDDATA" WITH ADMIN OPTION;
GRANT EXEMPT DML REDACTION POLICY TO "MDDATA" WITH ADMIN OPTION;
GRANT USE ANY SQL TRANSLATION PROFILE TO "MDDATA" WITH ADMIN OPTION;
GRANT KEEP DATE TIME TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP TABLESPACE TO "MDDATA" WITH ADMIN OPTION;
GRANT SYSDG TO "MDDATA" WITH ADMIN OPTION;
GRANT SELECT ANY DICTIONARY TO "MDDATA" WITH ADMIN OPTION;
GRANT IMPORT FULL DATABASE TO "MDDATA" WITH ADMIN OPTION;
GRANT DELETE ANY MEASURE FOLDER TO "MDDATA" WITH ADMIN OPTION;
GRANT DELETE ANY TABLE TO "MDDATA" WITH ADMIN OPTION;
GRANT AUDIT SYSTEM TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER ANY MATERIALIZED VIEW TO "MDDATA" WITH ADMIN OPTION;
GRANT DEBUG ANY PROCEDURE TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER ANY CUBE BUILD PROCESS TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE PROFILE TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY MEASURE FOLDER TO "MDDATA" WITH ADMIN OPTION;
GRANT UNDER ANY TYPE TO "MDDATA" WITH ADMIN OPTION;
GRANT COMMENT ANY TABLE TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER ANY DIMENSION TO "MDDATA" WITH ADMIN OPTION;
GRANT SET CONTAINER TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE ANY TYPE TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP ANY MEASURE FOLDER TO "MDDATA" WITH ADMIN OPTION;
GRANT SYSBACKUP TO "MDDATA" WITH ADMIN OPTION;
GRANT DROP PUBLIC DATABASE LINK TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE CUBE TO "MDDATA" WITH ADMIN OPTION;
GRANT CREATE DATABASE LINK TO "MDDATA" WITH ADMIN OPTION;
GRANT INSERT ANY CUBE DIMENSION TO "MDDATA" WITH ADMIN OPTION;
GRANT MANAGE ANY QUEUE TO "MDDATA" WITH ADMIN OPTION;
GRANT ALTER SESSION TO "MDDATA" WITH ADMIN OPTION;
GRANT ADMINISTER DATABASE TRIGGER TO "MDDATA" WITH ADMIN OPTION;
GRANT AUDIT ANY TO "MDDATA" WITH ADMIN OPTION;
GRANT MANAGE FILE GROUP TO "MDDATA" WITH ADMIN OPTION;

-- QUOTAS
ALTER USER "MDDATA" QUOTA UNLIMITED ON TEMP; */
  
create table Faculty(
idFaculty int primary key not null,
Name_Faculty varchar(50) not null
);

create  table School(
idSchool varchar(25) ,
idFaculty int not null  ,
Name_School varchar(25)
);
alter table School add constraint PK_School primary key (idSchool);
alter table School add constraint FK_SchoolFaculty foreign key (idFaculty) references Faculty(idFaculty);
alter  table  School drop constraint FK_SchoolFaculty;
truncate table School;
drop table School;
select * from School;

create table AcademicPlan(
idAcademicPlan int not null,
idSchool varchar(25) not null,
Description varchar(25)
);
alter table AcademicPlan MODIFY idSchool varchar(25);
alter table AcademicPlan add constraint PK_AcademicPlan  primary key (idAcademicPlan);
alter table AcademicPlan add constraint FK_PlanSchool foreign key (idSchool) references School(idSchool);

alter table AcademicPlan drop constraint FK_PlanSchool;
SELECT * FROM AcademicPlan;


create table AcademicCycle(
idAcademicCycle int not null,
idAcademicPlan int not null,
CycleNumber int);
alter table AcademicCycle add constraint PK_AcademicCycle primary key (idAcademicCycle);
alter table AcademicCycle add constraint FK_AcademicCyclePlan foreign key(idAcademicPlan) references AcademicPlan(idAcademicPlan);


create table Course(
idCourse int not null,
idAcademicCycle int not null,
CourseDescription varchar(25),
Optional  char(1),
BeforeCouse1 int,
BeforeCouse1 int
);
alter table Course add BeforeCouse1 int;
alter table Course add BeforeCouse1 int;
alter table Course add constraint PK_Course primary key (idCourse);
alter table Course add constraint FK_CourseCycle foreign key(idAcademicCycle) references AcademicCycle (idAcademicCycle );

create table CourseGroup(
idGroup int not null,
idCourse int not null,
Capacity int not null,
StartHour Timestamp,
FinishHour timestamp,
idTeacher int,
Number_Group int

);
alter table CourseGroup add constraint PK_CouseGroup primary key (idGroup);
alter table CourseGroup add constraint FK_CourseGroup foreign key (idCourse) references Course(idCourse);
alter table CourseGroup add constraint FK_GroupTeacher foreign key (idTeacher) references Teacher(idTeacher);

drop table CourseGroup;
drop table CourseGroup;

create table Teacher(
idTeacher int not null,
Name_teacher varchar(50) not null
);
alter table Teacher add constraint PK_Teacher primary key (idTeacher);

create table TeacherFaculty(
idTeacher int not null,
idFaculty int not null
);
drop table TeacherFaculty;
alter table TeacherFaculty add constraint PK_TeacherFaculty primary key (idTeacher,idFaculty);
alter table TeacherFaculty add constraint FK_Teacher1 foreign key (idTeacher) references Teacher (idTeacher);
alter table TeacherFaculty add constraint FK_Teacher2 foreign key (idFaculty) references Faculty (idFaculty);

create table Student(
idStudent int not null,
idSchool int not null,
idAcademicPlan int not null,
Name_Student varchar(50) not null,
Last_Name varchar(50) not null,
Status varchar(10) not null,
Age int not null,
DNI int not null
);
alter table Student add constraint PK_Student primary key (idStudent);
alter table Student add constraint FK_StudentSchool foreign key (idSchool) references School(idSchool);
alter table Student drop constraint FK_StudentSchool;
alter table Student add constraint FK_StudentPlan foreign key (idAcademicPlan) references AcademicPlan(idAcademicPlan); 

drop table Enrolment;
select * from Enrolment;

create table AcademicSemester(
Description varchar(15));

alter table AcademicSemester add constraint PK_AcademicSemester primary key (Description);
alter table Enrolment modify (idAcademicSemester varchar(15));

create table  Enrolment(
idEnrolment int not null,
idStudent int,
idAcademicSemester varchar(15) ,
TypeOfEnrolment varchar(25)); 
alter table Enrolment add constraint PK_Enrolment primary key (idEnrolment);
alter table Enrolment add constraint FK_Student foreign key (idStudent) references Student (idStudent);
alter table Enrolment add constraint FK_EnrolmentAcademic foreign key (idAcademicSemester) references AcademicSemester(Description);


create table EnrolmentGroup(
idEnrolment int ,
idGroupCourse int,
idActa int,
FinalScore int);

alter table EnrolmentGroup add constraint PK_EnrolmentGroup primary key (idEnrolment,idGroupCourse);
alter table EnrolmentGroup add constraint FK_EnrolmentEnrolment foreign key (idEnrolment) references Enrolment (idEnrolment);
alter table EnrolmentGroup add constraint FK_EnrolementGroupGroup foreign key (idGroupCourse) references CourseGroup(idGroup);



create table GroupLab(
idGroupLab int not null,
idGroup int,
idTeacher int,
StartHour timestamp,
FinishHour timestamp,
Description varchar(25)
);
alter table GroupLab add constraint PK_GroupLab primary key (idGroupLab);
alter table GroupLab add constraint FK_GroupLABGroup foreign key(idGroup) references CourseGroup (idGroup);
alter table GroupLab add constraint FK_GroupLABTeacher foreign key (idTeacher) references Teacher (idTeacher);



create table Acta(
idActa int not null,
idTeacher int not null,
idGroup int not null);

alter table Acta add constraint PF_Acta primary key (idActa);
alter table Acta add constraint FK_ActaTeacher foreign key (idTeacher) references Teacher(idTeacher);
alter table Acta add constraint FK_ActaGroup foreign key (idGroup) references CourseGroup(idGroup);

CREATE TABLE lab(
idLab int not null,
idFaculty int,
Description varchar(25),
Number_Lab int not null
);

drop table lab;
alter table lab add constraint PK_LAB primary key (idLab);
alter table lab add constraint FK_LABFaculty foreign key (idFaculty) references Faculty (idFaculty);

select * from ClassRoom;
CREATE TABLE ClassRoom(
idRoom Varchar(25),
idFaculty int,
Description varchar(25),
Number_ClassRoom int not null
);
alter table ClassRoom modify (idRoom) Varchar(25);
truncate table ClassRoom;
drop table ClassRoom;
alter table ClassRoom add constraint PK_ClassRoom primary key (idRoom);
alter table ClassRoom add constraint FK_ClassRoomFaculty foreign key (idFaculty) references  Faculty (idFaculty); 
drop table ClassRoom;
--Faculty
insert into Faculty values (1000,'Facultad de Sistemas e Informática');
insert into Faculty values (1001,'Facultad de Medicina Humana');
insert into Faculty values (1002,'Facultad de Ingenieria Industrial');
insert into Faculty values (1003,'Facultad de Letras y Humanidades');
-- School 
insert into School values (100,1000,'Ingenieria de Software');
insert into School values (101,1000,'Ingenieria de Sistemas');
insert into School values (200,1001,'Medicina Humana');
insert into School values (300,1002,'Ingenieria Industrial');
 drop table School;
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME = "School";
select * from Faculty;

-- List of Schools 
select Name_School, Faculty.Name_Faculty from School join Faculty on (School.idFaculty=Faculty.idFaculty)
group by Name_School, Faculty.Name_Faculty order by Name_School;
truncate table lab;
select * from school;

insert into ClassRoom values (150,1000,'Salon Grande',120);
insert into ClassRoom values (201,1000,'Salon Pequeño');

insert into lab values (1,1000,'Laboratorio Robotica');
insert into lab values (2,1000, 'Laboratorio Computo');
insert into lab values (3,1001,'Laboratorio de Sangre');
insert into lab values (3,1002,'labo');


--LABS NUMBER PER FACULTY
select Name_Faculty, count(lab.idFaculty) as "Number of labs" from Faculty join lab on (faculty.idfaculty=lab.idfaculty) group by Name_Faculty
order by "Number of labs";

create sequence seq_classroom minvalue 100 start with 100 increment by 1;
drop sequence  seq_classroom;
--Insert data of Room 
create or replace procedure ClassRoomProcedure(
  id_Faculty Faculty.idFaculty%type,
  Description_ ClassRoom.Description%type,
  NUMERO int)
is 
  idClassRoomP varchar(25);
begin
select CONCAT(TO_CHAR(idFaculty),TO_CHAR(NUMERO)) INTO idClassRoomP from Faculty where idFaculty=id_Faculty;
insert into ClassRoom VALUES (idClassRoomP, id_Faculty, Description_, NUMERO);
end;

EXECute ClassRoomProcedure (1000,'HOLA',16);
execute ClassRoomProcedure (1000,'Aula Magna',17);
execute ClassRoomProcedure (1000,'Aula Mosquidoki',18);
execute ClassRoomProcedure (1001,'Aula waraq', 15);
execute ClassRoomProcedure (1001,'Aula hola', 1);
execute ClassRoomProcedure (1001,'Aula pequeña', 12);


select idRoom,Number_ClassRoom as "Numero de Salon",Faculty.Name_Faculty  from ClassRoom join Faculty on Faculty.idFaculty=ClassRoom.idFaculty
group by idRoom,Number_ClassRoom,Faculty.Name_Faculty
order by idRoom;

create or replace procedure LabProcedure(
  id_Faculty Faculty.idFaculty%type,
  Description_ lab.Description%type,
  NUMERO int)
is 
  idlabP varchar(25);
begin
select CONCAT(TO_CHAR(idFaculty),TO_CHAR(NUMERO)) INTO idlabP  from Faculty where idFaculty=id_Faculty;
insert into lab VALUES (idlabP, id_Faculty, Description_, NUMERO);
end;
execute LabProcedure (1003,'NOse','15');
execute LabProcedure (1003,'Descripcion',18);
execute LabProcedure (1000,'Laboratorio de Robotica',1);

select * from lab;
truncate table ClassRoom;
 select user from dual;
 
create table School(
idSchool varchar(25),
idFaculty int not null  ,
Name_School varchar(25)
);
alter table School modify (idSchool) varchar(25);

create or replace procedure SchoolProcedure(
    id_Faculty Faculty.idFaculty%type,
    Name_schoolP School.Name_School%type,
    NUMERO INT)
is
  id_SchoolP varchar(25);
begin 
  select CONCAT(TO_CHAR(idFaculty), TO_CHAR(NUMERO)) INTO id_SchoolP from Faculty where idFaculty=id_Faculty;
  insert into School values (id_SchoolP, id_Faculty, Name_schoolP);
end;


 


