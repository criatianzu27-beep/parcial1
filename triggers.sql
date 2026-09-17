USE parcial1;

CREATE TABLE auditoria_platos (
    id_auditoria INT AUTO_INCREMENT PRIMARY KEY,
    cod_plato VARCHAR(45) NOT NULL,
    precio_anterior DECIMAL(10,2) NOT NULL,
    precio_nuevo DECIMAL(10,2) NOT NULL,
    fecha_cambio DATETIME NOT NULL,
    FOREIGN KEY (cod_plato) REFERENCES plato(cod_plato)
);

DELIMITER //

CREATE TRIGGER trg_validar_cantidad
BEFORE INSERT ON detalle_pedido
FOR EACH ROW
BEGIN
    IF NEW.cantidad <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La cantidad debe ser mayor que 0';
    END IF;
END //

CREATE TRIGGER trg_auditar_plato
AFTER UPDATE ON plato
FOR EACH ROW
BEGIN
    IF OLD.precio <> NEW.precio THEN
        INSERT INTO auditoria_platos
            (cod_plato, precio_anterior, precio_nuevo, fecha_cambio)
        VALUES
            (OLD.cod_plato, OLD.precio, NEW.precio, NOW());
    END IF;
END //

DELIMITER ;