SELECT 
    p.PedidoID,
    c.Nombre AS Cliente,
    p.FechaPedido,
    SUM(dp.Cantidad * pr.Precio) AS TotalPedido
FROM Pedidos p
JOIN Clientes c ON p.ClienteID = c.ClienteID
JOIN DetallesPedido dp ON p.PedidoID = dp.PedidoID
JOIN Productos pr ON dp.ProductoID = pr.ProductoID
GROUP BY p.PedidoID, c.Nombre, p.FechaPedido;

SELECT 
    p.PedidoID,
    pr.Nombre AS Producto,
    dp.Cantidad,
    pr.Precio,
    (dp.Cantidad * pr.Precio) AS Subtotal
FROM Pedidos p
JOIN DetallesPedido dp ON p.PedidoID = dp.PedidoID
JOIN Productos pr ON dp.ProductoID = pr.ProductoID
WHERE p.PedidoID = 1;

-- top 3 clientes con más pedidos
SELECT TOP 3 
    c.Nombre,
    COUNT(p.PedidoID) AS CantidadPedidos
FROM Clientes c
JOIN Pedidos p ON c.ClienteID = p.ClienteID
GROUP BY c.Nombre
ORDER BY CantidadPedidos DESC;
