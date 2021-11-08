create database IncidentDetails
use IncidentDetails
create table Employee
(
empid int primary key identity,
name varchar(50),
images varchar(100)
)

create proc sp_fileupload
@name varchar(50),
@images varchar(100)
as
begin
      insert into Employee(name,images)
      values(@name,@images)
end

create proc usp_employee_get
as
begin
select * from EMployee
end


create proc usp_employee_edit
@empid int
as
begin
select * from EMployee where empid=@empid
end


create proc usp_employee_update
@empid int,
@name varchar(50),
@images varchar(100)
as
begin
      update Employee set name=@name,images=@images
      where empid=@empid
end
