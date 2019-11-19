create database QuickL;
use QuickL;
/*----- Se creó una tabla de género en caso de que se decida agregar para ser inclusivos, 
aunque biológicamente solo existan 2 géneros masculino y femenino
----*/
/*---- Tabla para el genero ----*/
create table genero (idg int not null auto_increment primary key, genero varchar(20));
insert into genero (idg, genero) values 
(1, 'masculino'),
(2, 'femenino');

/*---- Tabla para el formulario ----*/

/*----Se mantuvo el teléfono como marchar ya que este puede o tener extensiones o 
ser un teléfono celular por lo cual puede este pertenecer a otro país y se incluye el código del país
a pesar degenero ser una foránea por cuestiones de tiempo al momento de ser elaborado el formulario en 
este solo se mantiene las selecciones de género masculino y femenino.
 ----*/

create table usuario (id int not null auto_increment primary key, 
nombre varchar(100), apellido varchar(100), 
telefono varchar(50), genero int, descripcion varchar(1000));

alter table usuario 
add constraint fk_genero foreign key(genero) references genero(idg);

