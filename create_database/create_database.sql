CREATE DATABASE dsrp_entradas_cine;
GO

USE dsrp_entradas_cine;
GO

--CINE
CREATE TABLE cine(
	id INT PRIMARY KEY IDENTITY(1,1),
	nombre VARCHAR(100) NOT NULL,
	direccion VARCHAR(255) NOT NULL,
	horario_apertura TIME,
	horario_cierre TIME
);
GO

--PELICULA
CREATE TABLE pelicula (
    id INT PRIMARY KEY IDENTITY(1,1),
    titulo VARCHAR(100) NOT NULL,
    genero VARCHAR(50),
    duracion INT NOT NULL, -- duración en minutos
    idioma VARCHAR(50),
    clasificacion_edad VARCHAR(20),
);
GO

--CLIENTES
CREATE TABLE clientes(
	id INT PRIMARY KEY IDENTITY(1,1),
	nombres VARCHAR(255) NOT NULL,
	apellido_paterno VARCHAR(255) NOT NULL,
	apellido_materno VARCHAR(255) NOT NULL,
	numero_documento VARCHAR(20) UNIQUE NOT NULL,
	correo_electronico VARCHAR(100) NOT NULL,
	celular VARCHAR (20) NOT NULL,
	direccion VARCHAR (255) NOT NULL,
);
GO

--SALA
CREATE TABLE sala (
    id INT PRIMARY KEY IDENTITY(1,1),
    numero_sala VARCHAR(50) NOT NULL,
    capacidad INT NOT NULL,
    tipo_sala VARCHAR(50) NOT NULL,
    id_cine INT NOT NULL,
    CONSTRAINT FK_sala_cine FOREIGN KEY (id_cine) REFERENCES cine(id)
);
GO