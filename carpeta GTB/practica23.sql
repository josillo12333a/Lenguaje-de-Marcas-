SELECT 
    CodigoProducto, 
    SUM(Cantidad) AS TotalUnidadesPedidas
FROM DetallePedidos
GROUP BY CodigoProducto
ORDER BY TotalUnidadesPedidas DESC
LIMIT 20;
