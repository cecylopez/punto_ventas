

CREATE TABLE rol (
idRol SERIAL PRIMARY KEY NOT NULL,
nombre VARCHAR(45) NOT NULL
);

CREATE TABLE usuario (
idUsuario SERIAL PRIMARY KEY NOT NULL,
nombre VARCHAR(45) NOT NULL,
idrol INT NOT NULL
);

CREATE TABLE categoria (
idCategoria SERIAL PRIMARY KEY NOT NULL,
nombre VARCHAR(45) NOT NULL,
imagen VARCHAR(300)
);

CREATE TABLE producto (
idProducto SERIAL PRIMARY KEY NOT NULL,
nombre VARCHAR(45) NOT NULL,
precio DECIMAL NOT NULL,
imagen VARCHAR(300),
idCategoria INT NOT NULL
);

CREATE TABLE sucursal (
idSucursal SERIAL PRIMARY KEY NOT NULL,
nombre VARCHAR(45) NOT NULL,
ubicacion VARCHAR(45)
);

CREATE TABLE venta (
idVenta SERIAL PRIMARY KEY NOT NULL,
identificadorcliente CHAR NOT NULL,
tipoVenta CHAR NOT NULL,
fechaCreacion TIMESTAMP NOT NULL,
fechaPego TIMESTAMP NOT NULL,
status CHAR NOT NULL,
tipoPago CHAR,
montoTotal DECIMAL,
montoRecibido DECIMAL,
montoEntregado	DECIMAL,
idSucursal INT NOT NULL,
idUsuario INT NOT NULL
);

CREATE TABLE detalle (
idDetalle SERIAL PRIMARY KEY NOT NULL,
idVenta INT NOT NULL,
idProducto INT NOT NULL,
cantidad DECIMAL NOT NULL
);

ALTER TABLE "usuario"
   ADD CONSTRAINT fk_idRol
   FOREIGN KEY (idRol)
   REFERENCES "rol"(idRol);

ALTER TABLE "producto"
   ADD CONSTRAINT fk_idCategoria
   FOREIGN KEY (idCategoria)
   REFERENCES "categoria"(idCategoria);

ALTER TABLE "venta"
   ADD CONSTRAINT fk_idUsuario
   FOREIGN KEY (idUsuario)
   REFERENCES "usuario"(idUsuario);

ALTER TABLE "venta"
   ADD CONSTRAINT fk_idSucursal
   FOREIGN KEY (idSucursal)
   REFERENCES "sucursal"(idSucursal);

ALTER TABLE "detalle"
   ADD CONSTRAINT fk_idVenta
   FOREIGN KEY (idVenta)
   REFERENCES "venta"(idVenta);

ALTER TABLE "detalle"
   ADD CONSTRAINT fk_idProducto
   FOREIGN KEY (idProducto)
   REFERENCES "producto"(idProducto);
