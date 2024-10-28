CREATE DATABASE Gestio_Hotel;

USE Gestio_Hotel;

CREATE TABLE clientes_reservas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL,
    fecha_de_registro DATA NOT NULL,
    direccion VARCHAR(100) NULL,
    FOREIGN KEY (cliente_dni) REFERENCES clientes(dni)
);

CREATE TABLE habitaciones (

id_habitacion INT AUTO_INCREMENT PRIMARY KEY,
    disponibilidad TINYINT NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    precio_habitacion REAL NOT NULL,
    


CREATE TABLE limpieza (
    id_empleado VARCHAR(100) PRIMARY KEY,
    estado VARCHAR(255) NOT NULL,
    hora TIME NOT NULL,
    num_habitación INT AUTO_INCREMENT NOT NULL,
);
CREATE TABLE platos (
    id_plato VARCHAR(100) PRIMARY KEY,
    nombre_del_plato VARCHAR(100) NOT NULL,
    descripcion VARCHAR(130) NOT NULL,
    ingredientes VARCHAR(100) NOT NULL,
    precio DECIMAL NOT NULL,
);

CREATE TABLE restaurante (
   id INT AUTO_INCREMENT PRIMARY KEY,
   hora TIME NOT NULL,
   precios float NOT NULL,
   num_habitacion INT NULL
   desayuno_comida_cena varchar (10) NOT NULL
);

CREATE TABLE consumiciones (
   id INT AUTO_INCREMENT PRIMARY KEY,
   habitacion INT NULL,
   precios float NOT NULL,
   pedido varchar (50) NOT NULL
);

CREATE TABLE transportador (
   id INT AUTO_INCREMENT PRIMARY KEY,
   tipo_transporte varchar (50) NOT NULL,
   Capacidad  INT NOT NULL,
 Notas_adicionales varchar (100) NOT NULL
);

