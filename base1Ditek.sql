create database MobileStorage

use MobileStorage


create table Abonados(
cedula varchar(15) primary key,
primer_apellido varchar(30) not null,
segundo_apellido varchar(30) not null,
nombre varchar(40) not null,
direccion varchar(350),
condicion_asociado varchar(30),
tipo_abonado  varchar(30),
id_acueducto int
);

create table Empleado(
cedula varchar(15) primary key,
primer_apellido varchar(30) not null,
segundo_apellido varchar(30) not null,
nombre varchar(40) not null,
usuario varchar(30) not null,
contrasena varchar(30) not null,
tipo_empleado varchar(30) not null,
fecha_inicio date,
fecha_finalizacion date,
id_acueducto int
);

create table Actividad_Calidad_Agua (
id_actividad_calidad_agua int auto_increment primary key,
id_acueducto int 
);

create table Registro_Calidad(
identificacion_registro int auto_increment primary key,
id_actividad_calidad_agua int
);

create table Fuente_Abastecimiento(
id_fuente_abastecimiento int auto_increment primary key,
nombre varchar(50) not null,
tipo varchar(50),
id_acueducto int
);

create table Tanque_Almacenamiento(
id_tanque_almacenamiento int auto_increment primary key,
nombre varchar(50) not null,
volumen float ,
material varchar(40),
id_acueducto int
);

create table Registro_Lectura(
id_registro_lectura int auto_increment primary key,
numero_lectura varchar(10),
id_abonado varchar(15),
id_acueducto int
);

create table Pajas_Abonados(
id_paja int auto_increment primary key,
id_abonado varchar(15),
numero_medidor float,
numero_paja float,
cantidad_casas int,
sector_red varchar(50)
);

create table Acueducto(
id_acueducto int auto_increment primary key,
nombre varchar(40),
ubicacion varchar (200),
sistema_desisnfeccion varchar(40),
id_empleado varchar(15)
);

create table Actividad_Aforo(
id_actividad_aforo int auto_increment primary key,
cantidad_mediciones int,
id_acueducto int
);

create table Registro_Aforo(
id_registro_aforo int auto_increment primary key,
volumen_recipiente float,
id_actividad_aforo int,
id_fuente_abastecimiento int
);

create table Correos_Acueducto(
id_correo_acueducto int auto_increment primary key,
id_acueducto int,
correo varchar(40)
);