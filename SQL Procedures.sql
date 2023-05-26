/*
 * Procedimientos almacenados
**/

Create Database BDEmpresa
Go

Use BDEmpresa
Go

Create Table Departamento
(
    idDepartamento int identity(1,1) primary key,
    nombre varchar(50) not null,
    descripcion varchar(100) not null
);
Go

Create Table Oficina
(
    idOficina int identity(1,1) primary key,
    nombre varchar(50) not null,
    descripcion varchar(100) not null,
);
Go

Create Table Empleado
(
    idEmpleado int identity(1,1) primary key,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    fechaNacimiento date not null,
    idDepartamento int not null,
    idOficina int not null,
    foreign key(idDepartamento) references Departamento(idDepartamento),
    foreign key(idOficina) references Oficina(idOficina)
);
)