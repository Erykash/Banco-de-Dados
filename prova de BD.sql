show tables;
use prova_de_bd;

#query 02

select COUNT(country_name) AS total
from country;

#query 03

select *
from ranking_system;

#query 04

select count(distinct university_name) as total_universidades
from university;

 #query 05
select avg(student_staff_ratio) as media_student_staff_ratio
from university_year;