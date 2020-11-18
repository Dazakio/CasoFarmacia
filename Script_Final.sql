CREATE DATABASE DBFARMACIA;
GO
USE DBFARMACIA;
GO

CREATE TABLE [Afiliacion_Salud] (
  [IdSalud] int PRIMARY KEY,
  [NombreSalud] VARCHAR(100) NOT NULL,
  [Descuento] int NOT NULL
)
GO

CREATE TABLE [Boleta_venta] (
  [IdBoleta] int PRIMARY KEY,
  [FechaEmision] DATE NOT NULL,
  [TotalAPagar] int NOT NULL,
  [IdUsuario] int NOT NULL
)
GO

CREATE TABLE [Usuario] (
  [IdUsuario] int PRIMARY KEY,
  [RutUsuario] VARCHAR(11) NOT NULL,
  [Nombre] VARCHAR(100) NOT NULL,
  [Apellido] VARCHAR(100) NOT NULL,
  [Direccion] VARCHAR(100),
  [Telefono] int,
  [IdSalud] int NOT NULL
)
GO

CREATE TABLE [Medicamento] (
  [IdMedicamento] int PRIMARY KEY,
  [NombreMedicamento] VARCHAR(100) NOT NULL,
  [FechaVencimiento] DATE NOT NULL,
  [PrecioUnitarioVenta] int NOT NULL,
  [PrecioUnitarioCosto] int NOT NULL
)
GO

CREATE TABLE [Pedido_Compra] (
  [IdPedido] int PRIMARY KEY,
  [FechaEmision] DATE NOT NULL,
  [FechaEntrega] DATE NOT NULL,
  [TotalaPagar] int NOT NULL,
  [IdUsuario] int NOT NULL,
  [IdProveedor] int NOT NULL
)
GO

CREATE TABLE [Proveedor] (
  [IdProveedor] int PRIMARY KEY,
  [RutProveedor] varchar(11) NOT NULL,
  [NombreProveedor] VARCHAR(100) NOT NULL,
  [Telefono] int NOT NULL,
  [Direccion] VARCHAR(100) NOT NULL,
  [Email] VARCHAR(100) NOT NULL
)
GO

CREATE TABLE [Detalle_boleta] (
  [IdNrBoleta] int,
  [IdMedicamento] int,
  [CantidadProductos] int NOT NULL,
  PRIMARY KEY ([IdNrBoleta], [IdMedicamento])
)
GO

CREATE TABLE [Detalle_pedido] (
  [IdPedido] int,
  [IdMedicamento] int,
  [CantidadPedido] int NOT NULL,
  PRIMARY KEY ([IdPedido], [IdMedicamento])
)
GO

CREATE TABLE [Rol] (
  [IdRol] int PRIMARY KEY,
  [NombreRol] VARCHAR (50) NOT NULL
)
GO

CREATE TABLE [Rol_Usuario] (
  [IdRolUsuario] int PRIMARY KEY,
  [IdRol] int NOT NULL,
  [IdUsuario] int NOT NULL
)
GO

ALTER TABLE [Detalle_boleta] ADD FOREIGN KEY ([IdNrBoleta]) REFERENCES [Boleta_venta] ([IdBoleta])
GO

ALTER TABLE [Detalle_pedido] ADD FOREIGN KEY ([IdMedicamento]) REFERENCES [Medicamento] ([IdMedicamento])
GO

ALTER TABLE [Usuario] ADD FOREIGN KEY ([IdSalud]) REFERENCES [Afiliacion_Salud] ([IdSalud])
GO

ALTER TABLE [Usuario] ADD FOREIGN KEY ([IdUsuario]) REFERENCES [Boleta_venta] ([IdUsuario])
GO

ALTER TABLE [Pedido_Compra] ADD FOREIGN KEY ([IdProveedor]) REFERENCES [Proveedor] ([IdProveedor])
GO

ALTER TABLE [Rol_Usuario] ADD FOREIGN KEY ([IdRol]) REFERENCES [Rol] ([IdRol])
GO

ALTER TABLE [Rol_Usuario] ADD FOREIGN KEY ([IdUsuario]) REFERENCES [Usuario] ([IdUsuario])
GO

ALTER TABLE [Detalle_pedido] ADD FOREIGN KEY ([IdPedido]) REFERENCES [Pedido_Compra] ([IdPedido])
GO

ALTER TABLE [Detalle_boleta] ADD FOREIGN KEY ([IdMedicamento]) REFERENCES [Medicamento] ([IdMedicamento])
GO

ALTER TABLE [Pedido_Compra] ADD FOREIGN KEY ([IdUsuario]) REFERENCES [Usuario] ([IdUsuario])
GO

