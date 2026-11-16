SELECT 
    c.CodigoCliente,
    c.NombreCliente,
    MIN(p.FechaPago) AS PrimerPago,
    MAX(p.FechaPago) AS UltimoPago
FROM Clientes c
INNER JOIN Pagos p ON c.CodigoCliente = p.CodigoCliente
GROUP BY c.CodigoCliente, c.NombreCliente;

