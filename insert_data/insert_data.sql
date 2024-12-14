USE dsrp_entradas_cine;
GO

--CINE

SELECT*FROM cine;
INSERT INTO dbo.cine (nombre, direccion, horario_apertura, horario_cierre)
VALUES
('Cinemark', 'Avenida Principal 123', '10:00:00', '22:00:00'),
('CinePlanet', 'Boulevard Central 456', '11:00:00', '23:00:00'),
('CineStar', 'Calle Norte 789', '09:00:00', '21:00:00'),
('CinePolis', 'Avenida Este 101', '12:00:00', '00:00:00'),
('CineMundo', 'Calle Oeste 202', '10:30:00', '22:30:00'),
('CineAlfa', 'Calle Centro 303', '11:00:00', '23:30:00'),
('MegaCine', 'Avenida Sur 404', '10:00:00', '22:00:00'),
('CinePlus', 'Calle Andes 505', '10:30:00', '23:00:00'),
('CinemaCity', 'Boulevard Este 606', '11:00:00', '00:00:00'),
('CinePremier', 'Avenida Norte 707', '09:30:00', '21:30:00'),
('CineMax', 'Calle Real 808', '10:00:00', '23:00:00'),
('CineOasis', 'Boulevard Pacifico 909', '11:00:00', '22:30:00'),
('CineAventura', 'Calle Cordillera 1010', '10:30:00', '23:00:00'),
('CinemaGalaxia', 'Avenida Atlántida 1111', '12:00:00', '23:30:00'),
('CineParaíso', 'Boulevard Caribe 1212', '10:30:00', '22:00:00'),
('CineLuz', 'Calle Oriente 1313', '11:00:00', '23:00:00'),
('CineBella', 'Avenida Amazonas 1414', '10:00:00', '23:00:00'),
('CineGlobo', 'Calle Nevado 1515', '10:30:00', '22:30:00'),
('CinemaVista', 'Boulevard Selva 1616', '11:00:00', '23:30:00'),
('CineNuevo', 'Avenida Mirador 1717', '10:00:00', '22:00:00');

--PELICULA
SELECT*FROM pelicula;
INSERT INTO dbo.pelicula (titulo, genero, duracion, idioma, clasificacion_edad)
VALUES
('Avatar', 'Ciencia Ficción', 162, 'Español', '+13'),
('Frozen II', 'Animación', 103, 'Español', 'ATP'),
('Inception', 'Ciencia Ficción', 148, 'Inglés', '+16'),
('Titanic', 'Romance', 195, 'Español', '+13'),
('Avengers: Endgame', 'Acción', 181, 'Español', '+13'),
('The Lion King', 'Animación', 118, 'Español', 'ATP'),
('The Matrix', 'Ciencia Ficción', 136, 'Inglés', '+16'),
('Jurassic Park', 'Aventura', 127, 'Español', '+13'),
('Harry Potter', 'Fantasía', 152, 'Inglés', '+13'),
('The Godfather', 'Drama', 175, 'Inglés', '+18'),
('Coco', 'Animación', 105, 'Español', 'ATP'),
('Black Panther', 'Acción', 134, 'Español', '+13'),
('Toy Story 4', 'Animación', 100, 'Español', 'ATP'),
('Interstellar', 'Ciencia Ficción', 169, 'Inglés', '+13'),
('Wonder Woman', 'Acción', 141, 'Español', '+13'),
('Spider-Man: No Way Home', 'Acción', 148, 'Español', '+13'),
('Moana', 'Animación', 107, 'Español', 'ATP'),
('The Dark Knight', 'Acción', 152, 'Inglés', '+16'),
('Finding Nemo', 'Animación', 100, 'Español', 'ATP'),
('The Avengers', 'Acción', 143, 'Español', '+13');

--CLIENTES
SELECT*FROM clientes;
INSERT INTO dbo.clientes (nombres, apellido_paterno, apellido_materno, numero_documento, correo_electronico, celular, direccion)
VALUES
('Juan', 'Pérez', 'García', '12345678', 'juan.perez@gmail.com', '987654321', 'Av. Los Olivos 123'),
('María', 'López', 'Martínez', '87654321', 'maria.lopez@yahoo.com', '912345678', 'Calle Principal 456'),
('Luis', 'González', 'Torres', '45678912', 'luis.gonzalez@hotmail.com', '987112233', 'Jr. Las Flores 789'),
('Ana', 'Rodríguez', 'Vega', '11223344', 'ana.rodriguez@outlook.com', '923456789', 'Pasaje Los Cedros 321'),
('Pedro', 'Ramírez', 'Quispe', '99887766', 'pedro.ramirez@gmail.com', '934567890', 'Urbanización San José 654'),
('Claudia', 'Jiménez', 'Cruz', '77665544', 'claudia.jimenez@live.com', '910111213', 'Av. Los Pinos 111'),
('Carlos', 'Fernández', 'Zapata', '12341234', 'carlos.fernandez@gmail.com', '914141516', 'Calle Los Rosales 234'),
('Lucía', 'Mendoza', 'Salas', '43214321', 'lucia.mendoza@yahoo.com', '987987654', 'Jr. Las Amapolas 567'),
('Roberto', 'Vargas', 'Ríos', '56785678', 'roberto.vargas@hotmail.com', '932167543', 'Urbanización Los Jardines 890'),
('Elena', 'Castro', 'Paredes', '34563456', 'elena.castro@outlook.com', '915789321', 'Av. Los Laureles 456'),
('Miguel', 'Morales', 'Campos', '67896789', 'miguel.morales@gmail.com', '986543210', 'Jr. Los Girasoles 789'),
('Rosa', 'Delgado', 'Peña', '78907890', 'rosa.delgado@yahoo.com', '919876543', 'Calle Los Jazmines 987'),
('Alberto', 'Paredes', 'Cárdenas', '90129012', 'alberto.paredes@hotmail.com', '921234567', 'Pasaje Las Acacias 123'),
('Teresa', 'Campos', 'Villanueva', '34503450', 'teresa.campos@gmail.com', '931234567', 'Av. Los Tulipanes 654'),
('Daniel', 'Espinoza', 'Ortiz', '89008900', 'daniel.espinoza@live.com', '945612378', 'Urbanización Las Palmas 987'),
('Gloria', 'Reyes', 'Luna', '56715671', 'gloria.reyes@gmail.com', '952341678', 'Calle Las Violetas 321'),
('Diego', 'Soto', 'Carranza', '23452345', 'diego.soto@yahoo.com', '987654123', 'Jr. Los Sauces 654'),
('Patricia', 'Flores', 'Navarro', '45634563', 'patricia.flores@hotmail.com', '921456789', 'Av. Los Nogales 987'),
('Jorge', 'Medina', 'Rojas', '78967896', 'jorge.medina@outlook.com', '935678912', 'Calle Los Cipreses 456'),
('Silvia', 'Suárez', 'Herrera', '67826782', 'silvia.suarez@gmail.com', '918273645', 'Jr. Las Magnolias 789');

--SALA
SELECT*FROM sala;
INSERT INTO dbo.sala (numero_sala, capacidad, tipo_sala, id_cine)
VALUES
('Sala 1', 100, '2D', 1),
('Sala 2', 150, '3D', 1),
('Sala IMAX', 200, 'IMAX', 2),
('Sala 4', 120, '2D', 3),
('Sala VIP', 50, '3D', 3),
('Sala 3', 80, '2D', 4),
('Sala 7', 130, '2D', 4),
('Sala Deluxe', 40, 'IMAX', 5),
('Sala Gold', 60, '3D', 6),
('Sala Platinum', 55, 'VIP', 6),
('Sala 5', 90, '2D', 7),
('Sala 6', 110, '3D', 8),
('Sala Adventure', 150, '2D', 8),
('Sala 6', 95, '3D', 9),
('Sala 15', 70, '2D', 10),
('Sala 7', 85, 'VIP', 10),
('Sala 3', 160, 'IMAX', 11),
('Sala 4', 50, '2D', 12),
('Sala 2', 75, '3D', 13),
('Sala 1', 60, 'VIP', 14);

--HORARIO
SELECT*FROM horario;
INSERT INTO dbo.horario (fecha, hora_inicio, id_sala, id_pelicula)
VALUES
('2024-12-15', '10:00:00', 1, 1),
('2024-12-15', '12:30:00', 2, 2),
('2024-12-15', '15:00:00', 3, 3),
('2024-12-15', '17:30:00', 4, 4),
('2024-12-15', '20:00:00', 5, 5),
('2024-12-16', '11:00:00', 6, 6),
('2024-12-16', '13:30:00', 7, 7),
('2024-12-16', '16:00:00', 8, 8),
('2024-12-16', '18:30:00', 9, 9),
('2024-12-16', '21:00:00', 10, 10),
('2024-12-17', '09:00:00', 1, 11),
('2024-12-17', '11:30:00', 2, 12),
('2024-12-17', '14:00:00', 3, 13),
('2024-12-17', '16:30:00', 4, 14),
('2024-12-17', '19:00:00', 5, 15),
('2024-12-18', '10:30:00', 6, 16),
('2024-12-18', '13:00:00', 7, 17),
('2024-12-18', '15:30:00', 8, 18),
('2024-12-18', '18:00:00', 9, 19),
('2024-12-18', '20:30:00', 10, 20);

--METODO DE PAGO
SELECT*FROM metodo_pago;
INSERT INTO dbo.metodo_pago (tipo_pago, descripcion, banco_emisor)
VALUES
('Tarjeta de crédito', 'Visa Platinum', 'BBVA'),
('Tarjeta de crédito', 'MasterCard Gold', 'BCP'),
('Tarjeta de débito', 'Visa Clásica', 'Interbank'),
('Tarjeta de débito', 'MasterCard', 'Scotiabank'),
('Efectivo', 'Pago en taquilla', NULL),
('Pago móvil', 'Yape', 'BCP'),
('Pago móvil', 'Plin', 'Interbank'),
('Transferencia bancaria', 'Transferencia Interbank', 'Interbank'),
('Transferencia bancaria', 'Transferencia BCP', 'BCP'),
('Tarjeta prepago', 'Gift Card Cine', NULL),
('Pago móvil', 'PayPal', NULL),
('Tarjeta de débito', 'Visa Débito', 'Banco de la Nación'),
('Efectivo', 'Pago contra entrega', NULL),
('Transferencia bancaria', 'Transferencia Scotiabank', 'Scotiabank'),
('Tarjeta de crédito', 'Amex Gold', 'American Express'),
('Tarjeta de crédito', 'Visa Infinite', 'BBVA'),
('Tarjeta prepago', 'Gift Card Familiar', NULL),
('Pago móvil', 'Google Pay', NULL),
('Pago móvil', 'Apple Pay', NULL),
('Efectivo', 'Pago directo', NULL);

--TRANSACCION
SELECT*FROM transaccion;
INSERT INTO dbo.transaccion (fecha, monto, referencia_pago, estado, id_metodo_pago, id_clientes)
VALUES
('12/12/2024 14:30:00', 50.00, 'TRX-001', 'Completada', 1, 1),
('12/12/2024 15:45:00', 75.50, 'TRX-002', 'Completada', 2, 2),
('12/12/2024 16:00:00', 100.00, 'TRX-003', 'Pendiente', 3, 3),
('12/12/2024 16:30:00', 80.00, 'TRX-004', 'Rechazada', 4, 4),
('13/12/2024 10:15:00', 65.00, 'TRX-005', 'Completada', 5, 5),
('13/12/2024 11:30:00', 55.00, 'TRX-006', 'Completada', 6, 6),
('13/12/2024 12:45:00', 90.00, 'TRX-007', 'Completada', 7, 7),
('13/12/2024 13:00:00', 45.00, 'TRX-008', 'Rechazada', 8, 8),
('14/12/2024 09:00:00', 110.00, 'TRX-009', 'Pendiente', 9, 9),
('14/12/2024 10:30:00', 95.00, 'TRX-010', 'Completada', 10, 10),
('14/12/2024 11:45:00', 60.00, 'TRX-011', 'Pendiente', 11, 11),
('14/12/2024 12:00:00', 70.00, 'TRX-012', 'Completada', 12, 12),
('14/12/2024 14:15:00', 85.00, 'TRX-013', 'Completada', 13, 13),
('15/12/2024 08:30:00', 120.00, 'TRX-014', 'Completada', 14, 14),
('15/12/2024 10:00:00', 105.00, 'TRX-015', 'Pendiente', 15, 15),
('15/12/2024 11:30:00', 50.00, 'TRX-016', 'Rechazada', 16, 16),
('15/12/2024 12:45:00', 80.00, 'TRX-017', 'Completada', 17, 17),
('16/12/2024 09:15:00', 100.00, 'TRX-018', 'Completada', 18, 18),
('16/12/2024 10:30:00', 75.00, 'TRX-019', 'Pendiente', 19, 19),
('16/12/2024 12:00:00', 95.00, 'TRX-020', 'Completada', 20, 20);


--ENTRADA
SELECT*FROM entrada;
INSERT INTO dbo.entrada (precio, estado, numero_asiento, tipo_entrada, fecha_compra, id_horario, id_transaccion, id_clientes)
VALUES
(25.00, 'Activa', 'A1', 'General', '2024-12-12', 1, 1, 1),
(30.00, 'Activa', 'B5', 'Preferencial', '2024-12-12', 2, 2, 2),
(20.00, 'Cancelada', 'C10', 'General', '2024-12-12', 3, 3, 3),
(40.00, 'Activa', 'D15', 'VIP', '2024-12-12', 4, 4, 4),
(35.00, 'Activa', 'E20', 'Preferencial', '2024-12-13', 5, 5, 5),
(25.00, 'Activa', 'F25', 'General', '2024-12-13', 6, 6, 6),
(30.00, 'Cancelada', 'G30', 'Preferencial', '2024-12-13', 7, 7, 7),
(40.00, 'Activa', 'H35', 'VIP', '2024-12-13', 8, 8, 8),
(20.00, 'Activa', 'I40', 'General', '2024-12-14', 9, 9, 9),
(50.00, 'Activa', 'J45', 'VIP', '2024-12-14', 10, 10, 10),
(30.00, 'Activa', 'A2', 'Preferencial', '2024-12-14', 11, 11, 11),
(25.00, 'Cancelada', 'B6', 'General', '2024-12-14', 12, 12, 12),
(35.00, 'Activa', 'C11', 'Preferencial', '2024-12-15', 13, 13, 13),
(45.00, 'Activa', 'D16', 'VIP', '2024-12-15', 14, 14, 14),
(30.00, 'Activa', 'E21', 'General', '2024-12-15', 15, 15, 15),
(40.00, 'Cancelada', 'F26', 'VIP', '2024-12-15', 16, 16, 16),
(20.00, 'Activa', 'G31', 'General', '2024-12-16', 17, 17, 17),
(50.00, 'Activa', 'H36', 'VIP', '2024-12-16', 18, 18, 18),
(35.00, 'Activa', 'I41', 'Preferencial', '2024-12-16', 19, 19, 19),
(45.00, 'Cancelada', 'J46', 'VIP', '2024-12-16', 20, 20, 20);

