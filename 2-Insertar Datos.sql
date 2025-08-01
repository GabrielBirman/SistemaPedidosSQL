INSERT INTO Clientes (Nombre, Email, Telefono)
VALUES 
('Ana García', 'ana@gmail.com', '1134567890'),
('Juan Pérez', 'juan@gmail.com', '1123456789');

INSERT INTO Productos (Nombre, Precio)
VALUES 
('Pizza Muzzarella', 2500.00),
('Empanadas x12', 3800.00),
('Gaseosa 1.5L', 1500.00);

INSERT INTO Pedidos (ClienteID)
VALUES (2);

INSERT INTO DetallesPedido (PedidoID, ProductoID, Cantidad)
VALUES 
(1, 1, 2),   -- 2 pizzas
(1, 3, 1);   -- 1 Gaseosa
