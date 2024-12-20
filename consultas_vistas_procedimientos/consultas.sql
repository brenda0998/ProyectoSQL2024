USE dsrp_entradas_cine;
GO

--1. Listado de clientes que han comprado entradas

SELECT 
    c.id AS ClienteID, 
    CONCAT(c.nombres, ' ', c.apellido_paterno, ' ', c.apellido_materno) AS Cliente,
    p.titulo AS Pelicula, 
    h.fecha AS FechaFuncion,
    e.numero_asiento AS Asiento, 
    e.tipo_entrada AS TipoEntrada
FROM entrada e
INNER JOIN clientes c ON e.id_clientes = c.id
INNER JOIN horario h ON e.id_horario = h.id
INNER JOIN pelicula p ON h.id_pelicula = p.id;

--2.Listado de ingresos por cine agrupados por método de pago

SELECT 
    c.nombre AS Cine, 
    mp.tipo_pago AS MetodoPago, 
    COUNT(t.id) AS Transacciones, 
    SUM(t.monto) AS TotalIngresos
FROM transaccion t
INNER JOIN metodo_pago mp ON t.id_metodo_pago = mp.id
INNER JOIN entrada e ON t.id = e.id_transaccion
INNER JOIN horario h ON e.id_horario = h.id
INNER JOIN sala s ON h.id_sala = s.id
INNER JOIN cine c ON s.id_cine = c.id
GROUP BY c.nombre, mp.tipo_pago
ORDER BY TotalIngresos DESC;


--3. Lista de películas programadas con sus horarios y salas:

SELECT 
    p.titulo AS Pelicula,
    h.fecha AS Fecha,
    h.hora_inicio AS Hora,
    s.numero_sala AS Sala,
    c.nombre AS Cine
FROM horario h
INNER JOIN pelicula p ON h.id_pelicula = p.id
INNER JOIN sala s ON h.id_sala = s.id
INNER JOIN cine c ON s.id_cine = c.id;


--4. Disponibilidad de entradas por horario y sala:

SELECT 
    h.fecha AS Fecha,
    h.hora_inicio AS Hora,
    s.numero_sala AS Sala,
    s.capacidad - COUNT(e.id) AS Entradas_Disponibles
FROM horario h
INNER JOIN sala s ON h.id_sala = s.id
LEFT JOIN entrada e ON h.id = e.id_horario AND e.estado = 'Reservada'
GROUP BY h.fecha, h.hora_inicio, s.numero_sala, s.capacidad;

--5. Transacciones realizadas con detalles de cliente y método de pago:

SELECT 
    t.fecha AS Fecha_Transaccion,
    t.monto AS Monto,
    t.referencia_pago AS Referencia,
    mp.tipo_pago AS Metodo_Pago,
    c.nombres + ' ' + c.apellido_paterno + ' ' + c.apellido_materno AS Cliente
FROM transaccion t
INNER JOIN metodo_pago mp ON t.id_metodo_pago = mp.id
INNER JOIN clientes c ON t.id_clientes = c.id;

--6. Vista de horarios y películas por cine:

CREATE VIEW vw_horarios_peliculas AS
SELECT 
    c.nombre AS Cine,
    s.numero_sala AS Sala,
    p.titulo AS Pelicula,
    h.fecha AS Fecha,
    h.hora_inicio AS Hora
FROM horario h
INNER JOIN sala s ON h.id_sala = s.id
INNER JOIN cine c ON s.id_cine = c.id
INNER JOIN pelicula p ON h.id_pelicula = p.id;

SELECT*FROM vw_horarios_peliculas;

--7. Vista de ventas realizadas con detalles de entradas y transacciones:

CREATE VIEW vw_ventas_detalles AS
SELECT 
    e.id AS ID_Entrada,
    e.numero_asiento AS Asiento,
    e.precio AS Precio,
    e.estado AS Estado_Entrada,
    t.fecha AS Fecha_Compra,
    t.monto AS Monto_Transaccion,
    mp.tipo_pago AS Metodo_Pago,
    c.nombres + ' ' + c.apellido_paterno + ' ' + c.apellido_materno AS Cliente
FROM entrada e
INNER JOIN transaccion t ON e.id_transaccion = t.id
INNER JOIN metodo_pago mp ON t.id_metodo_pago = mp.id
INNER JOIN clientes c ON t.id_clientes = c.id;

SELECT*FROM vw_ventas_detalles;

--8. Vista de capacidad y ocupación de salas:

CREATE VIEW vw_capacidad_salas AS
SELECT 
    s.numero_sala AS Sala,
    c.nombre AS Cine,
    s.capacidad AS Capacidad_Total,
    COUNT(e.id) AS Entradas_Vendidas,
    s.capacidad - COUNT(e.id) AS Entradas_Disponibles
FROM sala s
LEFT JOIN horario h ON s.id = h.id_sala
LEFT JOIN entrada e ON h.id = e.id_horario AND e.estado = 'Vendida'
INNER JOIN cine c ON s.id_cine = c.id
GROUP BY s.numero_sala, c.nombre, s.capacidad;

SELECT*FROM vw_capacidad_salas;

--9. Procedimiento para registrar una nueva venta de entrada:

CREATE PROCEDURE sp_registrar_venta
    @id_horario INT,
    @id_cliente INT,
    @numero_asiento VARCHAR(10),
    @tipo_entrada VARCHAR(150),
    @precio FLOAT,
    @id_metodo_pago INT,
    @monto FLOAT,
    @referencia_pago VARCHAR(100)
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
		-- Registrar la transacción
        INSERT INTO transaccion (fecha, monto, referencia_pago, estado, id_metodo_pago, id_clientes)
        VALUES (GETDATE(), @monto, @referencia_pago, 'Completada', @id_metodo_pago, @id_cliente);
        
        DECLARE @id_transaccion INT = SCOPE_IDENTITY();

        -- Registrar la entrada
        INSERT INTO entrada (precio, estado, numero_asiento, tipo_entrada, fecha_compra, id_horario, id_transaccion, id_clientes)
        VALUES (@precio, 'Vendida', @numero_asiento, @tipo_entrada, GETDATE(), @id_horario, @id_transaccion, @id_cliente);
        
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;

EXEC sp_registrar_venta 
    @id_horario = 1,
    @id_cliente = 1,
    @numero_asiento = 'A1',
    @tipo_entrada = 'General',
    @precio = 10.00,
    @id_metodo_pago = 1,
    @monto = 10.00,
    @referencia_pago = 'REF12345';

--Revisando transacciones:
SELECT * FROM transaccion WHERE referencia_pago = 'REF12345';

--Revisando entradas:
SELECT * FROM entrada WHERE numero_asiento = 'A1';


