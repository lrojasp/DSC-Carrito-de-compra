CREATE DATABASE lrojaspCCompras;
CREATE TABLE Ordenes
(
    ID serial,
    PRIMARY KEY (ID),
    ID_CLIENTE int,
    METODO_PAGO VARCHAR(50),
    NUMERO_TARJETA int,
    NOMBRE_TARJETAHABIENTE VARCHAR(50),
    FECHA_VENCIMIENTO DATE,
    FECHA_CREACION DATE,
    FECHA_ACTUALIZACION DATE
);

CREATE TABLE Pedidos
(
	ID serial,
	PRIMARY KEY (ID),
	ID_ORDEN int
);

CREATE TABLE Carrito
(
	ID serial,
	PRIMARY KEY (ID),
	CLIENTE_ID int,
	Cantidad int,
	SKU VARCHAR(50),
	FECHA_CREACION DATE,
	FECHA_ACTUALIZACION DATE
);

CREATE TABLE Clientes
(
	ID serial,
	PRIMARY KEY (ID),
	CLAVE VARCHAR(100),
	Nombre VARCHAR(100),
	Apellido VARCHAR(100),
	Correo VARCHAR(255),
	Calle VARCHAR(100),
	Colonia VARCHAR(100),
	CP VARCHAR(100),
	PAIS VARCHAR(50),
	TELEFONO VARCHAR(20),
	FECHA_CREACION DATE,
	FECHA_ACTUALIZACION DATE
);

CREATE TABLE Productos
(
	SKU VARCHAR(10),
	PRIMARY KEY (SKU),
	CATEGORIA_ID int,
	MARCA_ID int,
	NOMBRE VARCHAR(50),
	DESCRIPCION TEXT,
	URL_IMAGEN_GRANDE VARCHAR(255),
	URL_IMAGEN VARCHAR(255),
	PRECIO DECIMAL(15,2)
);

CREATE TABLE Categorias
(
	ID serial,
	PRIMARY KEY (ID),
	NOMBRE VARCHAR(50)
);