drop database if exists Cine
create database Cine

--TABLA trabajadores
DROP TABLE IF EXISTS Trabajadores

if(object_id('Trabajadores')is not null)
begin drop table Trabajadores end 
go
create table Trabajadores(
	Trabajadores_id varchar(5) not null
	, Trabajadores_nombre varchar(25) null
	, Trabajadores_apellido varchar(25) null
	, Trabajadores_fecha_nacimiento date
	, check(Trabajadores_id like'T[0-9][0-9][0-9][0-9]')-- Importante validar que solo admita este formato
	, primary key(Trabajadores_id)
)
insert into Trabajadores values('T0001','Raul Luis','Rodriguez Flores','1934-04-26')
									,('T0002','Ana Maria','Santilla Muñoz','1935-01-22')
									,('T0003','Gerardo Paul','Ruiz Alcantara','1944-12-16')
									,('T0004','Lorenzo Juan','Soria Ancajima','1932-11-02')
go

select* from Trabajadores

--FORMA DE HACER NUESTRO CODIGO CONCATENADO
	select * from Trabajadores
--1 Obtener el máximo valor 
	select Max(Trabajadores_id) from Trabajadores
--2 Desconcatenar (Separar letra y Numero)
	select Max(right(Trabajadores_id,4)) from Trabajadores
--3 Si no hay registro, se agrega con un +1
	select isnull(Max(right(Trabajadores_id,4)),0)+1 from Trabajadores
--4 Concatenar ceros y convertir a varchar
	select '00000'+convert(varchar,isnull(Max(right(Trabajadores_id,4)),0)+1) from Trabajadores
--5 Obtener solo los digitos requeridos
	select right('00000'+convert(varchar,isnull(Max(right(Trabajadores_id,4)),0)+1),4) from Trabajadores
--6 Concatenar letra + las cifras que ya tenemos
	--select 'T'+right('00000'+convert(varchar,isnull(Max(right(Trabajadores_id,4)),0)+1),4) from Trabajadores

	select * from Trabajadores
	select 'T'+right('00000'+convert(varchar,isnull(Max(right(Trabajadores_id,4)),0)+1),4) from Trabajadores

	--CON ESO CREAMOS UN METODO QUE NOS PERMITIRÁ CREAR UN NUEVO REGISTRO EN LA TABLA
	declare @ID_Trabajadores varchar(5)=(select 'T'+right('00000'+convert(varchar,isnull(Max(right(Trabajadores_id,4)),0)+1),4) from Trabajadores);
	insert into Trabajadores values(@ID_Trabajadores,'Angelo Fernando','Tarazon Lazaro','1958-11-18')

	--CREAMOS UNPROCEDIMIENTO PARA INSETAR EN LA TABLA DE FORMA MÁS RÁPIDA
	--DROP procedure IF EXISTS IDDOCTOR
	begin DROP procedure IF EXISTS IDTrabajadores end 
go
	create procedure IDTrabajadores
		@NOMBRE VARCHAR(25), @APELLIDO VARCHAR(25), @BIRTH date
	as
	declare @ID_Trabajadores varchar(5)=(select 'T'+right('00000'+convert(varchar,isnull(Max(right(Trabajadores_id,4)),0)+1),4) from Trabajadores);
	insert into Trabajadores values(@ID_Trabajadores,@NOMBRE,@APELLIDO,@BIRTH)
go
	
	--LLAMAMOS AL PROCEDIMIENTO
execute IDTrabajadores 'Lourdes Ivana','Vela Díaz','1961-02-28'

execute IDTrabajadores 'Juan Pablo','De la Cruz Sanchez','1940-03-16'

	select * from Trabajadores


--TABLA Cliente
if(object_id('Cliente')is not null)
begin drop table Cliente end 
GO
CREATE TABLE Cliente
(
  Cliente_id            int					  NOT NULL,
  Cliente_name          VARCHAR(25)                  NOT NULL,
  Cliente_lastname      VARCHAR(25)                  NOT NULL,
  Paciente_edad			int						      NOT NULL,
  primary key(Cliente_id)
);

insert into Cliente values(76584578,'Andre Lui','Connel Warren',19)
								,(65747965,'Chintia Aracely','Mesa Fernandez',21)
								,(65456643,'Jose Alberto','Loaiza',24)
								,(62342131,'Maria Sol','Salinas Fugushi',19)
								,(77654325,'Diana Carla','Salinas Fugushi',19)
								,(76646478,'Pepe Lopoldo','Diaz Juarez',18)
								,(65865424,'Zeri Ana','Huaman Huaman',24)
								,(68007058,'Luis Nano','Durand Valdez',33)
	
--go

select* from Cliente

--begin DROP procedure IF EXISTS IDCliente end 
--go
	--create procedure IDCliente
		--@NOMBRE VARCHAR(25), @APELLIDO VARCHAR(25), @edad int, @pago decimal(5,2)
	--as
	--declare @ID_Cliente varchar(5)=(select 'C'+right('00000'+convert(varchar,isnull(Max(right(Cliente_id,4)),0)+1),4) from Cliente);
	--insert into Cliente values(@ID_Cliente,@NOMBRE, @APELLIDO, @edad , @pago)
--go
	
--
begin DROP procedure IF EXISTS adddCliente end 
go
	create procedure adddCliente
		@id int, @NOMBRE VARCHAR(25), @APELLIDO VARCHAR(25), @edad int
	as
	insert into Cliente values(@id,@NOMBRE, @APELLIDO, @edad)
go

--execute IDCliente'Alex Bruce','Salinas Nano',22,21

--execute IDCliente'Arnoll Fernald','Perez Figeroa',32,32

	select * from Cliente


--TABLA Categoria
if(object_id('Categoria')is not null)
begin drop table Categoria end 
GO
CREATE TABLE Categoria
(
  Categoria_id            varchar(5)					NOT NULL,
  Categoria_name          VARCHAR(25)					NOT NULL,
  check(Categoria_id like'C[0-9][0-9][0-9][0-9]'),-- Importante validar que solo admita este formato
  primary key(Categoria_id)
);


insert into Categoria values('C0001','Terror')
								,('C0002','Superheroes')
	
go

select* from Categoria


begin DROP procedure IF EXISTS IDCATEGORIA end 
go
	create procedure IDCATEGORIA
		@NOMBRE VARCHAR(25)
	as
	declare @ID_CAT varchar(5)=(select 'C'+right('00000'+convert(varchar,isnull(Max(right(Categoria_id,4)),0)+1),4) from Categoria);
	insert into Categoria values(@ID_CAT,@NOMBRE)
go

execute IDCATEGORIA'Romantico'
execute IDCATEGORIA 'Fantasia'

	select * from Categoria


--TABLA PELICULA
if(object_id('Pelicula')is not null)
begin drop table Pelicula end 
GO
CREATE TABLE Pelicula
(
  Pelicula_id           varchar(5)					NOT NULL,
  Categoria_id           varchar(5)					NOT NULL,
  Pelicula_name			VARCHAR(55)                 NOT NULL,
  Pelicula_duracion		decimal(5,2)				NOT NULL,
  Pelicula_costo	    decimal(5,2)                 NOT NULL,
  check(Pelicula_id like'P[0-9][0-9][0-9][0-9]'),-- Importante validar que solo admita este formato
  primary key(Pelicula_id),
  foreign key(Categoria_id) references Categoria(Categoria_id)
);

delete from Pelicula
where Pelicula_id='P0002'

insert into Pelicula values('P0001','C0002','Spider-man No Way Home',2.4,32)
								,('P0002','C0004','Aladino',1.8,21)
	
go

select* from Pelicula

begin DROP procedure IF EXISTS IDPelicula end 
go
	create procedure IDPelicula
		@CAT VARCHAR(5), @NOMBRE VARCHAR(55), @DURACION decimal(5,2), @costo decimal(5,2)
	as
	declare @ID_Pelicula varchar(5)=(select 'P'+right('00000'+convert(varchar,isnull(Max(right(Pelicula_id,4)),0)+1),4) from Pelicula);
	insert into Pelicula values(@ID_Pelicula,@CAT,@NOMBRE,@DURACION,@costo)
go

execute IDPelicula 'C0001','IT', 2.1, 22

	select * from Pelicula

--TABLA SALAS
if(object_id('Sala')is not null)
begin drop table Sala end 
GO
CREATE TABLE Sala
(
  Sala_id           varchar(5)					NOT NULL,
  check(Sala_id like'S[0-9][0-9][0-9][0-9]'),-- Importante validar que solo admita este formato
  primary key(Sala_id)
);

insert into Sala values('S0001')
						,('S0002')
	
go

select* from Sala

begin DROP procedure IF EXISTS IDSALA end 
go
	create procedure IDSALA
		--@NOMBRE VARCHAR(25), @CANT INT, @UBICACION VARCHAR(25), @DESCRIPCION VARCHAR(100)
	as
	declare @ID_SALA varchar(5)=(select 'S'+right('00000'+convert(varchar,isnull(Max(right(Sala_id,4)),0)+1),4) from Sala);
	insert into Sala values(@ID_SALA)
go

execute IDSALA 

	select * from Sala

--UPDATE Sala
--SET Sala_descripcion = 'Diagnosticos relacionados con los niños'
--WHERE Sala_id = 'S0003';

--TABLA ASIENTO
if(object_id('Asiento')is not null)
begin drop table Asiento end 
GO
CREATE TABLE Asiento
(
  Asiento_id           int					NOT NULL,--20 max
  Sala_id			  varchar(5)			NOT NULL,
  primary key(Asiento_id, Sala_id),--llave primaria compuesta
  --foreign key(Sala_id) references Sala(Sala_id)
);

insert into Asiento values(12,'S0001')
								,(13,'S0001')
								,(20,'S0002')
								,(11,'S0003')
								,(15,'S0003')
								,(6,'S0003')
								,(2,'S0004')
								,(15,'S0001')
	
go

select* from Asiento

begin DROP procedure IF EXISTS IDAsiento end 
go
	create procedure IDAsiento
		@ID_Asiento int, @CAT VARCHAR(5)
	as
	insert into Asiento values(@ID_Asiento,@CAT)
go

execute IDAsiento 15,'S0004'

	select * from Asiento



	--TABLA Boleta
if(object_id('Boleta')is not null)
begin drop table Boleta end 
GO
CREATE TABLE Boleta
(
  Boleta_id            varchar(5)			NOT NULL,
  DNI					INT					NOT NULL,
  Asiento_id			int					NOT NULL,
  Sala_id				varchar(5)			NOT NULL,
  Pelicula_id			varchar(5)			NOT NULL,
  Boleta_fecha			date				NOT NULL,
  Boleta_pago			decimal(5,2)		not null,
  check(Boleta_id like'B[0-9][0-9][0-9][0-9]'),-- Importante validar que solo admita este formato
  primary key(Boleta_id),
  foreign key(DNI)REFERENCES Cliente(Cliente_id),
  foreign key(Asiento_id, Sala_id) references Asiento(Asiento_id, Sala_id),
  foreign key(Pelicula_id)REFERENCES Pelicula(Pelicula_id),
);


insert into Boleta values('B0001',76584578,12,'S0001','P0001','2022-09-03',32.4)
						,('B0002',65747965,13,'S0001','P0001','2022-09-03',32.3)	
						,('B0003',65456643,20,'S0002','P0003','2022-09-04',38)	
						,('B0004',62342131,11,'S0003','P0002','2022-09-05',40)	
						,('B0005',77654325,15,'S0003','P0002','2022-09-08',29)	
						,('B0006',76646478,6,'S0003','P0002','2022-09-08',32.7)	
						,('B0007',65865424,2,'S0004','P0003','2022-09-05',64.2)	
						--insert into Boleta values('B0018',77654325,15,'S0001','P0001','2022-09-03',43)	


select* from Boleta

begin DROP procedure IF EXISTS IDBoleta end 
go
	create procedure IDBoleta
		@DNI INT, @ASEINTO INT, @SALA varchar(5), @PELI varchar(5), @FECHA DATE, @pago decimal(5,2)
	as
	declare @ID_Boleta varchar(5)=(select 'B'+right('00000'+convert(varchar,isnull(Max(right(Boleta_id,4)),0)+1),4) from Boleta);
	insert into Boleta values(@ID_Boleta,@DNI, @ASEINTO, @SALA, @PELI, @FECHA, @pago)
go

execute IDBoleta 65865424,2,'S0004','P0003','2022-09-05',64.2


begin DROP procedure IF EXISTS MostrarCODBoleta end 
go
	create procedure MostrarCODBoleta
	as
	declare @ID_Boleta varchar(5)=(select 'B'+right('00000'+convert(varchar,isnull(Max(right(Boleta_id,4)),0)+1),4) from Boleta);
	select @ID_Boleta
go

MostrarCODBoleta

--------
-------
------
-----

begin DROP procedure IF EXISTS ADDCliente end 
go
	create procedure ADDCliente
		@id varchar(5), @NOMBRE VARCHAR(25), @APELLIDO VARCHAR(25), @edad int
	as
	insert into Cliente values(@id,@NOMBRE, @APELLIDO, @edad)
go


execute IDPelicula 'C0002','Avenger Secret War', 3.1, 40

	select * from Pelicula

begin DROP procedure IF EXISTS DELPeli end 
go
	create procedure DELPeli
		@ID VARCHAR(5)
	as
	DELETE from Pelicula where Pelicula_id=@ID
go

select * from Cliente

execute DELPeli 'P0005'
execute DELPeli 'P0006'
execute DELPeli 'P0007'
execute DELPeli 'P0008'
execute DELPeli 'P0009'
execute DELPeli 'P0010'

select * from Pelicula

