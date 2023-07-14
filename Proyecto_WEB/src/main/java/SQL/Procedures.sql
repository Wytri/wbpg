/**
 * Author:  sebas
 * Created: 28 may. 2023
 */

	begin DROP procedure IF EXISTS IDTrabajadores end 
go
	create procedure IDTrabajadores
		@NOMBRE VARCHAR(25), @APELLIDO VARCHAR(25), @BIRTH date
	as
	declare @ID_Trabajadores varchar(5)=(select 'T'+right('00000'+convert(varchar,isnull(Max(right(Trabajadores_id,4)),0)+1),4) from Trabajadores);
	insert into Trabajadores values(@ID_Trabajadores,@NOMBRE,@APELLIDO,@BIRTH)
go

--execute IDTrabajadores 'Lourdes Ivana','Vela Díaz','1961-02-28'
--execute IDTrabajadores 'Juan Pablo','De la Cruz Sanchez','1940-03-16'

begin DROP procedure IF EXISTS adddCliente end 
go
	create procedure adddCliente
		@id int, @NOMBRE VARCHAR(25), @APELLIDO VARCHAR(25), @nacimiento varchar(25), @correo varchar(100), @telefono varchar(9)
	as
	insert into Cliente values(@id,@NOMBRE, @APELLIDO, @nacimiento, @correo, @telefono)
go

--
--

begin DROP procedure IF EXISTS IDCATEGORIA end 
go
	create procedure IDCATEGORIA
		@NOMBRE VARCHAR(25)
	as
	declare @ID_CAT varchar(5)=(select 'C'+right('00000'+convert(varchar,isnull(Max(right(Categoria_id,4)),0)+1),4) from Categoria);
	insert into Categoria values(@ID_CAT,@NOMBRE)
go

--
--

select* from Pelicula

begin DROP procedure IF EXISTS IDPelicula end 
go
	create procedure IDPelicula
		@CAT VARCHAR(5), @NOMBRE VARCHAR(55), @annio int, @DURACION decimal(5,2), @costo decimal(5,2), @clas varchar(3), @sinopsis varchar(500)
	as
	declare @ID_Pelicula varchar(5)=(select 'P'+right('00000'+convert(varchar,isnull(Max(right(Pelicula_id,4)),0)+1),4) from Pelicula);
	insert into Pelicula values(@ID_Pelicula,@CAT,@NOMBRE,@annio,@DURACION,@costo,@clas,@sinopsis)
go

--
--

select* from Sala

begin DROP procedure IF EXISTS IDSALA end 
go
	create procedure IDSALA
		@capacidad int, @tipoproy char(1)
	as
	declare @ID_SALA varchar(5)=(select 'S'+right('00000'+convert(varchar,isnull(Max(right(Sala_id,4)),0)+1),4) from Sala);
	insert into Sala values(@ID_SALA,@capacidad,@tipoproy)
go

--
--

begin DROP procedure IF EXISTS IDAsiento end 
go
	create procedure IDAsiento
		@ID_Asiento int, @TIPO VARCHAR(3), @CAT VARCHAR(5)
	as
	insert into Asiento values(@ID_Asiento,@TIPO,@CAT)
go

--
--

begin DROP procedure IF EXISTS IDBoleta end 
go
	create procedure IDBoleta
		@detalle int, @DNI INT, @pago decimal(5,2)
	as
	declare @ID_Boleta varchar(5)=(select 'B'+right('00000'+convert(varchar,isnull(Max(right(Boleta_id,4)),0)+1),4) from Boleta);
	insert into Boleta values(@ID_Boleta,@detalle, @DNI, @pago)
go

--
--

begin DROP procedure IF EXISTS MostrarCODBoleta end 
go
	create procedure MostrarCODBoleta
	as
	declare @ID_Boleta varchar(5)=(select 'B'+right('00000'+convert(varchar,isnull(Max(right(Boleta_id,4)),0)+1),4) from Boleta);
	select @ID_Boleta
go

--
--

create procedure ADDCliente
		@id varchar(5), @NOMBRE VARCHAR(25), @APELLIDO VARCHAR(25), @birth varchar(25), @correo varchar(100), @tel varchar(9)
	as
	insert into Cliente values(@id,@NOMBRE, @APELLIDO, @birth, @correo, @tel)
go

--GRAFICOS
--GRAFICOS
--GRAFICOS
--GRAFICOS
--GRAFICOS
--GRAFICOS
--GRAFICOS
--GRAFICOS
--GRAFICOS
--GRAFICOS

begin DROP procedure IF EXISTS GPELI end 
go
	create procedure GPELI
	as
	SELECT p.Pelicula_name,COUNT(*) CANTIDAD, SUM(p.Pelicula_costo) TOTAL 
	from Detalle d, Funciones f, Pelicula p
	where p.Pelicula_id=f.IdPelicula and d.IdFuncion=f.IdFuncion
	GROUP by p.Pelicula_name;
go

execute GPELI;

--
--

begin DROP procedure IF EXISTS GCATE end 
go
	create procedure GCATE
	as
	SELECT c.Categoria_name,COUNT(*) CANTIDAD, SUM(p.Pelicula_costo) TOTAL 
	from Detalle d, Funciones f, Pelicula p, Categoria c
	where p.Pelicula_id=f.IdPelicula and d.IdFuncion=f.IdFuncion and c.Categoria_id=p.Categoria_id
	GROUP by c.Categoria_name;
go

execute GCATE

--
--

begin DROP procedure IF EXISTS GCOMBO end 
go
	create procedure GCOMBO
	as
	select c.NombreCombo,count(*) CANTIDAD, sum(c.Precio) TOTAL
	from Ordenes o, Combos c, DetalleCombos dc
	where dc.IdDetalleCombo=o.IdDetalleCombo and c.IdCombo=dc.IdCombo
	group by c.NombreCombo;
go

execute GCOMBO

--
--

begin DROP procedure IF EXISTS GPROD end 
go
	create procedure GPROD
	as
	select c.NombreProducto,count(*) CANTIDAD, sum(c.Precio) TOTAL
	from Ordenes o, Productos c, DetalleProducto dc
	where dc.IdDetalleProducto=o.IdDetalleProducto and c.IdProducto=dc.IdProducto
	group by c.NombreProducto;
go

execute GPROD

--
--

begin DROP procedure IF EXISTS GSALA end 
go
	create procedure GSALA
	as
	select f.IdSala,count(*) CANTIDAD, sum(p.Pelicula_costo) TOTAL
	from Pelicula p, Funciones f, Sala s
	where f.IdSala=s.Sala_id and f.IdPelicula=p.Pelicula_id
	group by f.IdSala;
go

execute gsala

--
--

begin DROP procedure IF EXISTS GMES end 
go
	create procedure GMES
	as
	SELECT datename(MONTH,f.HoraInicio) MES,COUNT(*) CANTIDAD, SUM(p.Pelicula_costo) TOTAL 
	from Funciones f, Pelicula p 
	where f.IdPelicula=p.Pelicula_id
	group by datename(MONTH, f.HoraInicio);
go

EXECUTE GMES

--
--

begin DROP procedure IF EXISTS GANNIO end 
go
	create procedure GANNIO
	as
	SELECT YEAR(f.HoraInicio) ANNIO,COUNT(*) CANTIDAD, SUM(p.Pelicula_costo) TOTAL 
	from Funciones f, Pelicula p 
	where f.IdPelicula=p.Pelicula_id
	group by YEAR(f.HoraInicio);
go

execute GANNIO;

--
--

begin DROP procedure IF EXISTS GMESA end 
go
	create procedure GMESA
	@ANN int
	as
SELECT datename(MONTH,f.HoraInicio) MES,COUNT(*) CANTIDAD, SUM(p.Pelicula_costo) TOTAL 
from Funciones f, Pelicula p 
where f.IdPelicula=p.Pelicula_id and YEAR(f.HoraInicio)=@ANN
group by datename(MONTH, f.HoraInicio);
go


//registrar con los datos de cliente

begin DROP procedure IF EXISTS test end 
go
create procedure test(
@idPelicula varchar(10),@idSala varchar(10),@idAsiento varchar(10),@TipoA varchar(10),@idCliente varchar(10), @NOMBRE VARCHAR(25), @APELLIDO VARCHAR(25), @birth varchar(25), @correo varchar(100), @tel varchar(9) 
)as
declare @idFuncion varchar(10)=(select f.IdFuncion from Funciones f where(f.IdPelicula=@idPelicula));
declare @idDetalle varchar(10)=(select (max(IdDetalle)+1) from Detalle);
declare @idOrdenes varchar(10)=(select (max(IdOrden)+1) from Ordenes o);
declare @Total int = 0;
insert into Cliente values(@idCliente,@NOMBRE, @APELLIDO, @birth, @correo, @tel)
insert into Asiento values(@idAsiento,@TipoA,@idSala)
insert into Ordenes values(@idOrdenes,null,null,@Total)
declare @last varchar(10)=(select (max(IdOrden)) from Ordenes o)
insert into Detalle values(@idDetalle,@idFuncion,@idAsiento,@last)
go

execute test 'P0001','S0001','3','VIP','13','test','apellido','2000-02-02','test@gmail.com','11111111'
select * from Cliente
select * from Asiento
select * from Ordenes
select * from Detalle
select * from Pelicula

--agregar detalle
begin DROP procedure IF EXISTS addDetalle end 
go
create procedure addDetalle(
@idFuncion int,@idAsiento int,@idOrdenes int
)as
declare @idDetalle varchar(10)=(select (max(IdDetalle)+2) from Detalle);
insert into Detalle values(@idDetalle,@idFuncion,@idAsiento,@idOrdenes)
go

execute addDetalle 10000, 15, 400003 


--Creacion de Boleta--
begin DROP procedure IF EXISTS Completa_BOL end 
go
--Primero crea el 1 asiento, 2 detalle y 3 boleta, //tablas incluidas: --se creará-- Asiento, Detalle, Boleta --info-- Ordenes, Funciones, Cliente, Pelicula
create procedure Completa_BOL(
@ID_Asiento int, @TIPO VARCHAR(3), @CAT VARCHAR(5), @idFuncion int,@idOrdenes int,@DNI INT, @pago decimal(5,2)
)as
--crea el asiento--
insert into Asiento values(@ID_Asiento,@TIPO,@CAT);
--automatiza el id detalle--
declare @idDetalle int = (select (max(IdDetalle)+2) from Detalle);
--crea el detalle según el asiento creado anterior y con el  id orden--
insert into Detalle values(@idDetalle,@idFuncion,@ID_Asiento,@idOrdenes);
--automatiza el id boleta--
declare @ID_Boleta varchar(5)=(select 'B'+right('00000'+convert(varchar,isnull(Max(right(Boleta_id,4)),0)+1),4) from Boleta);
--crea boleta según el detalle anterior
insert into Boleta values(@ID_Boleta,@idDetalle, @DNI, @pago)

go

--ejemplo
execute Completa_BOL 9, 'VIP', 'S0001', 10000, 400004, 65747965, 32.00


--crear QR obtener ID de boleta (s)
begin DROP procedure IF EXISTS NUMBOL end 
go

create procedure NUMBOL(
@cant int
)as

select TOP (@cant) Boleta_id from Boleta ORDER BY Boleta_id DESC

go

execute NUMBOL 6