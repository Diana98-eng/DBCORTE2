drop database if exists colegio;
create database colegio;
use colegio;
create table estudiante (
id int auto_increment primary key,
nombre varchar (20),
apellido varchar (20)
);

create table asistencia (
id_asis int auto_increment primary key, 
estudiante_id int , 
fecha date, 
estado varchar (20)
);


alter table asistencia 
 add foreign key (estudiante_id ) references estudiante(id);
 

