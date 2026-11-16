SELECT 
    CodigoProducto,
    SUM(Cantidad * PrecioUnidad) AS BaseImponible,
    SUM(Cantidad * PrecioUnidad) * 0.18 AS IVA,
    SUM(Cantidad * PrecioUnidad) * 1.18 AS TotalFacturado
FROM DetallePedidos
WHERE CodigoProducto LIKE 'FR%'
GROUP BY CodigoProducto;
