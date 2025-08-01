CREATE DATABASE SistemaPedidos;
GO
USE SistemaPedidos;
GO

CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) UNIQUE,
    Telefono NVARCHAR(20)
);
GO
CREATE TABLE Productos (
    ProductoID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100) NOT NULL,
    Precio DECIMAL(10,2) NOT NULL
);
GO
CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY IDENTITY(1,1),
    ClienteID INT NOT NULL,
    FechaPedido DATE DEFAULT GETDATE(),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);
GO

CREATE TABLE DetallesPedido (
    DetalleID INT PRIMARY KEY IDENTITY(1,1),
    PedidoID INT NOT NULL,
    ProductoID INT NOT NULL,
    Cantidad INT NOT NULL,
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID),
    FOREIGN KEY (ProductoID) REFERENCES Productos(ProductoID)
);
GO