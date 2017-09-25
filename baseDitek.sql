create table tb_telefonos_abonado (
id_telefono_abonado int auto_increment primary key,
id_abonado varchar(15),
telefono varchar(15)
);

create table tb_correos_abonado (
id_correo_abonado int auto_increment primary key,
id_abonado varchar(15),
correo varchar(40)
);

create table tb_telefonos_empleado (
id_telefono_empleado int auto_increment primary key,
id_empleado varchar(15),
telefono varchar(15)
);

create table tb_correos_empleado(
id_correo_empleado int auto_increment primary key,
id_empleado varchar(15),
correo varchar(40)
);

create table tb_tipo_medicion_actividad_calidad(
id_medicion_actividad_calidad int auto_increment primary key,
id_calidad_actividad_agua int,
tipo_medicion varchar(30)
);

create table tb_medicion_registro_calidad(
id_medicion_registro_calidad int auto_increment primary key,
id_registro_calidad int,
tipo_medicion varchar(30),
numero_medicion float,
valor_medicion float
);

create table tb_registro_red_distribucion(
id_registro_red_distribucion int auto_increment primary key,
id_registro_calidad int,
id_paja int
);

create table tb_registro_tanque(
id_registro_tanque int auto_increment primary key,
id_registro_calidad int,
id_tanque_almacenamiento int
);

create table tb_registro_fuente(
id_registro_fuente int auto_increment primary key,
id_registro_calidad int,
id_fuente_abastecimiento int
);


create table tb_telefonos_acueducto(
id_telefono_acueducto int auto_increment primary key,
id_acueducto varchar(15),
telefono varchar(15)
);





