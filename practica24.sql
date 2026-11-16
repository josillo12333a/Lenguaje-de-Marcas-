SELECT 
    CodigoPedido, 
    CodigoCliente, 
    FechaEsperada, 
    FechaEntrega
FROM Pedidos
WHERE FechaEntrega <= ADDDATE(FechaEsperada, -2);
