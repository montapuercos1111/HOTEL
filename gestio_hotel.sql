CREATE DATABASE Gestio_Hotel;

USE Gestio_Hotel;

CREATE TABLE clientes_reservas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL,
    fecha_de_registro DATA NOT NULL,
    direccion VARCHAR(100) NULL,
    num_habitacion INT NOT NULL,
    FOREIGN KEY (num_habitacion) REFERENCES habitaciones(num_habitacion)
);

CREATE TABLE habitaciones (

    num_habitacion INT AUTO_INCREMENT PRIMARY KEY,
    disponibilidad TINYINT NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    precio_habitacion REAL NOT NULL,
    Tipo_de_habitación VARCHAR(50)
    );

CREATE TABLE limpieza (
    id_empleado VARCHAR(100) PRIMARY KEY,
    estado VARCHAR(255) NOT NULL,
    hora TIME NOT NULL,
    num_habitación INT AUTO_INCREMENT NOT NULL,
 FOREIGN KEY (num_habitacion) REFERENCES habitaciones(num_habitacion)
);

CREATE TABLE platos (
    id_plato VARCHAR(100) PRIMARY KEY,
    nombre_del_plato VARCHAR(100) NOT NULL,
    descripcion VARCHAR(130) NOT NULL,
    ingredientes VARCHAR(100) NOT NULL,
    precio DECIMAL NOT NULL,
);

CREATE TABLE ingredientes (
codigo_ingrediente AUTO_INCREMENT PRIMARY KEY,
   Ingredientes VARCHAR (100) NOT NULL,
   descripcion VARCHAR (100)  NULL
 FOREIGN KEY (ingredientes) REFERENCES palatos(id_plato)
);


CREATE TABLE restaurante (
   id INT AUTO_INCREMENT PRIMARY KEY,
   hora TIME NOT NULL,
   precios float NOT NULL,
   num_habitacion INT NULL
    Platos VARCHAR (100) 
   desayuno_comida_cena varchar (10) NOT NULL
 FOREIGN KEY (Platos) REFERENCES paltos(id_plato)
);

CREATE TABLE consumiciones (
   id INT AUTO_INCREMENT PRIMARY KEY,
   habitacion INT NULL,
   precios float NOT NULL,
   pedido varchar (50) NOT NULL
);

CREATE TABLE transportador (
   id INT AUTO_INCREMENT PRIMARY KEY,
   Capacidad  INT NOT NULL,
 Notas_adicionales varchar (100) NOT NULL
    ingredientes VARCHAR (100) NOT NULL
);
FOREIGN KEY (ingredientes) REFERENCES ingredientes (codigo_ingredientes)
);


CREATE TABLE herramientas (
   id INT AUTO_INCREMENT PRIMARY KEY,
   fecha_de_rotura DATA NOT NULL,
   tipos_de_ mantenimiento  varchar (100) NOT NULL,
   Descripcion_del_ Trabajo varchar (150) NOT NULL,
   Estado varchar (100) NOT NULL,
   Tiempo_Empleado TIME NOT NULL
);

