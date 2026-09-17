USE parcial1;

INSERT INTO departamento (nombre) VALUES
('Valle del Cauca'),
('Cundinamarca'),
('Antioquia');

INSERT INTO ciudad (nombre, id_departamento) VALUES
('Cali', 1),
('Bogotá', 2),
('Medellín', 3);

INSERT INTO categoria (nombre) VALUES
('Típico'),
('Bebida'),
('Postre');

INSERT INTO cliente (cedula, nombre, id_ciudad) VALUES
(999, 'Juan Ríos', 1),
(888, 'Ana Soto', 2),
(777, 'Carlos Pérez', 3);

INSERT INTO plato (cod_plato, nombre, precio, id_categoria) VALUES
('PL01', 'Bandeja Paisa', 35000.00, 1),
('PL02', 'Jugo Natural', 8000.00, 2),
('PL03', 'Postre de Chocolate', 12000.00, 3);

INSERT INTO pedido (cliente_cedula, fecha) VALUES
(999, '2024-03-01'),
(888, '2024-03-02'),
(777, '2024-03-03');

INSERT INTO detalle_pedido (id_pedido, cod_plato, cantidad) VALUES
(1, 'PL01', 2),
(1, 'PL02', 2),
(2, 'PL01', 1),
(3, 'PL03', 2);