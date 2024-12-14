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
    CONSTRAINT FK_cine_sala FOREIGN KEY (id_cine) REFERENCES cine(id)
);
GO

--HORARIO
CREATE TABLE horario (
    id INT PRIMARY KEY IDENTITY(1,1),
    fecha DATE NOT NULL,
    hora_inicio TIME NOT NULL,
    id_sala INT NOT NULL,
    id_pelicula INT NOT NULL,
    CONSTRAINT FK_sala_horario FOREIGN KEY (id_sala) REFERENCES sala(id),
    CONSTRAINT FK_pelicula_horario FOREIGN KEY (id_pelicula) REFERENCES pelicula(id)
);
GO

--METODO DE PAGO
CREATE TABLE metodo_pago (
    id INT PRIMARY KEY IDENTITY(1,1),
    tipo_pago VARCHAR(255) NOT NULL,
    descripcion VARCHAR(255),
    banco_emisor VARCHAR(255),
);
GO

--TRANSACCION
CREATE TABLE transaccion (
    id INT PRIMARY KEY IDENTITY(1,1),
    fecha DATETIME NOT NULL,
    monto FLOAT NOT NULL,
    referencia_pago VARCHAR(100) NOT NULL,
	estado VARCHAR(100) NOT NULL,
	id_metodo_pago INT NOT NULL,
    id_clientes INT NOT NULL,
    CONSTRAINT FK_metodo_pago_transaccion FOREIGN KEY (id_metodo_pago) REFERENCES metodo_pago(id),
    CONSTRAINT FK_clientes_transaccion FOREIGN KEY (id_clientes) REFERENCES clientes(id)
);
GO

--ENTRADA
CREATE TABLE entrada (
    id INT PRIMARY KEY IDENTITY(1,1),
    precio FLOAT NOT NULL,
    estado VARCHAR(150) NOT NULL,
    numero_asiento VARCHAR(10) NOT NULL,
    tipo_entrada VARCHAR(150) NOT NULL,
    fecha_compra DATE NOT NULL,
    id_horario INT NOT NULL,
    id_transaccion INT,
    id_clientes INT,
    CONSTRAINT FK_horario_entrada FOREIGN KEY (id_horario) REFERENCES horario(id),
    CONSTRAINT FK_transaccion_entrada FOREIGN KEY (id_transaccion) REFERENCES transaccion(id),
    CONSTRAINT FK_clientes_entrada FOREIGN KEY (id_clientes) REFERENCES clientes(id)
);
GO
