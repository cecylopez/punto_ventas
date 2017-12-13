

CREATE TABLE rol(
idRol INT PRIMARY KEY NOT NULL,
nombre VARCHAR(45)
);

CREATE TABLE usuario(
idUsuario INT PRIMARY KEY NOT NULL,
nombre VARCHAR(45),
idrol INT
);

CREATE TABLE categoria(
idCategoria  INT PRIMARY KEY NOT NULL,
nombre VARCHAR(45),
imagen VARCHAR(300)
);

CREATE TABLE producto(
idProducto INT PRIMARY KEY NOT NULL,
nombre VARCHAR(45),
precio DECIMAL,
imagen VARCHAR(300),
idCategoria INT
);

CREATE TABLE sucursal (
idSucursal INT PRIMARY KEY NOT NULL,
nombre VARCHAR(45),
ubicacion VARCHAR(45)
);

CREATE TABLE ventas (
idVenta INT PRIMARY KEY NOT NULL,
identificadorcliente CHAR,
tipoVenta CHAR,
fechaCreacion DATETIME,
fechaPego DATETIME,
status CHAR,
tipoPago CHAR,
montoTotal DECIMAL,
montoRecibido DECIMAL,
montoEntregado	DECIMAL,
idSucursal INT,
idUsuario INT
);
CREATE TABLE detalle(
idDetalle INT PRIMARY KEY NOT NULL,
idVenta INT,
idProducto INT,
cantidad DECIMAL
);
