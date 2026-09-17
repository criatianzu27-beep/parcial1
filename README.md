# Base de Datos Restaurante - Primer Parcial

## Descripción

Base de datos desarrollada para gestionar clientes, ciudades,
departamentos, categorías, platos y pedidos de un restaurante.

## Modelo

El archivo MER.mwb contiene el Modelo Entidad-Relación desarrollado
en MySQL Workbench.

## Entidades

* Departamento
* Ciudad
* Cliente
* Categoría
* Plato
* Pedido
* Detalle_Pedido
* Auditoría de Platos

## Normalización

La base de datos fue normalizada hasta Tercera Forma Normal (3FN),
separando los datos de clientes, ubicaciones, categorías, platos y
pedidos para evitar redundancia y mantener la integridad de los datos.

## Procedimiento

Se creó el procedimiento:

`pedidosPorCliente(IN cedula)`

Este procedimiento utiliza JOIN para consultar los pedidos realizados
por un cliente determinado.

## Triggers

### trg_validar_cantidad

Impide insertar una cantidad menor o igual a cero en
detalle_pedido.

### trg_auditar_plato

Registra los cambios realizados en el precio de los platos dentro de
la tabla auditoria_platos.

## Archivos

* MER.mwb
* Inserciones.sql
* Procedimientos.sql
* Triggers.sql
* README.md

