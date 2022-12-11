-- Instruccion para crear la base de datos.
create database comercial
go

-- Instruccion que asigna la base de datos activa
use comercial
go

-- Instruccion para crear una tabla
create table clientes
(
codigo int, 
nombre varchar (25),
apellido varchar (25),
DUI varchar (10),
email varchar (50),
telefono varchar (8)
)
go



--Instruccion para insertar varios registros a la tabla de forma simultanea
insert into clientes values
(1, 'Edgard','Torres','12345678-9','isnp126621@ugb.edu.sv','70982854'),
(2, 'Miguel','Reyes','22345678-8','asnp126622@ugb.edu.sv','10982855'),
(3, 'Mirian','Rivas','32345678-7','bsnp126623@ugb.edu.sv','20982856'),
(4, 'Ernesto','Parada','42345678-6','csnp126624@ugb.edu.sv','30982857'),
(5, 'Ricardo','Antonio','52345678-5','dsnp126625@ugb.edu.sv','40982858'),
(6, 'Dinora','Romero','62345678-4','esnp126626@ugb.edu.sv','50982859')
go

-- Instruccion para crear una tabla
create table producto
(
Codigo int identity primary key, 
Nombre varchar (25),
Precio money,
Categoria varchar (25)
)
go



--Instruccion para insertar varios registros a la tabla de forma simultanea
insert into producto values
('Cerveza',1,'bebida'),
('Soda',1.5,'bebida'),
('Snacks',10,'comida'),
('Leche',5,'bebida'),
('Carne',2,'comida')
go


-- Instruccion para crear una tabla
create table pedidos
(
NumeroPedido int identity primary key, 
Fecha date,
Direccion varchar (25),
Tipodeenvio varchar (25),
CodigoProducto int foreign key references producto(Codigo)
)
go



--Instruccion para insertar varios registros a la tabla de forma simultanea
insert into pedidos values
('5/11/22','San Miguel','Terrestre',1),
('6/11/22','Dublin','Aereo',2),
('7/11/22','La Union','Terrestre',3),
('8/11/22','Texas','Maritimo',4),
('9/11/22','Managua','Terrestre',5)
go


--Creacion de disparador
create trigger bitPedidos
on pedidos
for delete
as
insert into pedidosbit (NumeroPedido, Fecha, Direccion, Tipodeenvio, CodigoProducto)
select NumeroPedido, Fecha, Direccion, Tipodeenvio, CodigoProducto from deleted

--Tabla de refercia de disparador
create table pedidosbit
(
NumeroPedido int, 
Fecha date,
Direccion varchar (25), 
Tipodeenvio varchar(25),
CodigoProducto int
)
go

delete from pedidos where CodigoProducto=2

select * from pedidos

select * from pedidosbit
go

--crear tabla para index
create table catProducto
(
codProducto int identity primary key,
nomcatProducto varchar (25)
)
go

--Crear indice agrupado
Create clustered index cidxcategoria on catProducto(codProducto);
go

CREATE VIEW [Productos sobre el precio promedio] AS
SELECT nombre, precio
FROM producto
WHERE precio > (SELECT AVG(Precio) FROM producto); 

Select * from [Productos sobre el precio promedio]

go

select count(Categoria) from producto where Categoria='bebida'
go



select * from producto
Select * from clientes
select * from pedidos
go

alter table clientes 
add Pais varchar (25);
go

Select * from clientes
go

UPDATE clientes
SET Pais = 'Costa Rica'
WHERE codigo = 1;
