create database reto1;
use reto1;

create table Clientes (
IdCliente INT  AUTO_increment primary key,
NombresCliente VARCHAR(100) not null,
ApellidosCliente VARCHAR(100) not null,
DireccionCliente VARCHAR(100),
TelefonoCliente VARCHAR(20),
CorreoCliente VARCHAR(100) UNIQUE,
FechaRegistroCliente DATE
);

create table Pedidos (
IdPedido INT auto_increment primary key,
IdCliente INT,
FOREIGN KEY (IdCliente) REFERENCES Clientes (IdCliente),
FechaPedido DATE,
DireccionPedido VARCHAR(100),
TelefonoPedido VARCHAR(20),
CorreoPedido VARCHAR(100),
TotalPedido DECIMAL(12,2)
);

create table Productos (
IdProducto INT auto_increment primary key,
NombreProducto VARCHAR(100),
DescripcionProducto TEXT,
PrecioProducto DECIMAL(10,2),
StockProducto INT,
SKUProducto VARCHAR(50) UNIQUE
);

create table DetallePedidos (
IdDetPedido INT auto_increment primary key,
IdPedido INT,
FOREIGN KEY (IdPedido) REFERENCES Pedidos (IdPedido),
IdProducto INT,
FOREIGN KEY (IdProducto) REFERENCES Productos (IdProducto),
Cantidad INT,
Precio DECIMAL(10,2),
Descuento DECIMAL (6,2),
PrecioconDscto DECIMAL(10,2),
Total DECIMAL(12,2)
);
