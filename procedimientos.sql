USE parcial1;

DELIMITER //

CREATE PROCEDURE pedidosPorCliente(IN p_cedula INT)
BEGIN
    SELECT
        c.cedula,
        c.nombre AS cliente,
        p.idpedido,
        p.fecha,
        pl.cod_plato,
        pl.nombre AS plato,
        pl.precio,
        dp.cantidad,
        (pl.precio * dp.cantidad) AS subtotal
    FROM cliente c
    INNER JOIN pedido p
        ON c.cedula = p.cliente_cedula
    INNER JOIN detalle_pedido dp
        ON p.idpedido = dp.id_pedido
    INNER JOIN plato pl
        ON dp.cod_plato = pl.cod_plato
    WHERE c.cedula = p_cedula;
END //

DELIMITER ;