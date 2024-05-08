-- Tabla de Clientes
CREATE TABLE Clients (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR
(150) NOT NULL,
    FiscalStreet VARCHAR
(255),
	FiscalCity VARCHAR
(255),
	FiscalCountry VARCHAR
(255),
	PaymentType VARCHAR
(255),
	IBAN VARCHAR
(50)
);

-- Tabla de Productos
CREATE TABLE Products (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    ProductType VARCHAR
(50) NOT NULL,  -- Despacho, Sala de Reuniones, Extras, etc.
    ProductName VARCHAR
(255) NOT NULL,
    Price DECIMAL
(10, 2) NOT NULL
);

-- Tabla de Presupuestos
CREATE TABLE Quotes (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    ClientID INT NOT NULL,
    StartDate DATE NOT NULL,
	EndDate DATE NOT NULL,
    TotalPrice DECIMAL
(10, 2),  -- Importe final del presupuesto
	TotalMonthlyPrice DECIMAL
(10, 2),
    FOREIGN KEY
(ClientID) REFERENCES Clients
(ID)
);

-- Tabla de Líneas de Presupuesto
CREATE TABLE QuoteLineItems (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    QuoteID INT NOT NULL,
	ProductID INT NOT NULL,
    ProductPrice DECIMAL
(10, 2),
	FinalPrice DECIMAL
(10, 2),
    FOREIGN KEY
(QuoteID) REFERENCES Quotes
(ID),
	FOREIGN KEY
(ProductID) REFERENCES Products
(ID)
);

-- Tabla de Contratos
CREATE TABLE Contracts (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    QuoteID INT NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    TotalPrice DECIMAL
(10, 2),  -- Importe total
	TotalMonthlyPrice DECIMAL
(10, 2),
    FOREIGN KEY
(QuoteID) REFERENCES Quotes
(ID)
);

-- Tabla de Líneas de Contratos
CREATE TABLE ContractLineItems (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    ContractID INT NOT NULL,
	ProductID INT NOT NULL,
	QuoteLineID INT NOT NULL,
    ProductPrice DECIMAL
(10, 2),
	FinalPrice DECIMAL
(10, 2),
    FOREIGN KEY
(ContractID) REFERENCES Contracts
(ID),
	FOREIGN KEY
(ProductID) REFERENCES Products
(ID),
	FOREIGN KEY
(QuoteLineID) REFERENCES QuoteLineItems
(ID)
);

-- Tabla de Reservas de Salas de Reuniones
CREATE TABLE Reservations (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    ClientID INT NOT NULL,
    ResevationDate DATE NOT NULL,
    StartTime TIME NOT NULL,
	  EndTime TIME NOT NULL,
    Duration INT CHECK
(Duration >= 1 AND Duration <= 8),  -- Mínimo 1 hora, máximo 8 horas
    FOREIGN KEY
(ClientID) REFERENCES Clients
(ID)
);

-- Tabla de Líneas de Contratos
CREATE TABLE ReservationLineItems (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    ReservationID INT NOT NULL,
	ProductID INT NOT NULL,
	ClientID INT NOT NULL,
    ProductPrice DECIMAL
(10, 2), 
	FinalPrice DECIMAL
(10, 2),
    FOREIGN KEY
(ReservationID) REFERENCES Reservations
(ID),
	FOREIGN KEY
(ProductID) REFERENCES Products
(ID),
	FOREIGN KEY
(ClientID) REFERENCES Clients
(ID)
);

-- Tabla de Facturas
CREATE TABLE Invoices (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    ClientID INT,
    BillingDate DATE,
    TotalPrice DECIMAL
(10, 2),  -- Importe mensual de servicios contratados
    FOREIGN KEY
(ClientID) REFERENCES Clients
(ID)
);

-- Tabla de Líneas de Contratos
CREATE TABLE InvoiceLineItems (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    InvoiceID INT NOT NULL,
	ProductID INT NOT NULL,
	ReservationLineID INT,
	ContractLineID INT,
    ProductPrice DECIMAL
(10, 2), 
	FinalPrice DECIMAL
(10, 2),
    FOREIGN KEY
(InvoiceID) REFERENCES Invoices
(ID),
	FOREIGN KEY
(ProductID) REFERENCES Products
(ID),
	FOREIGN KEY
(ReservationLineID) REFERENCES ReservationLineItems
(ID),
	FOREIGN KEY
(ContractLineID) REFERENCES ContractLineItems
(ID)
);

-- Insertar 10 clientes
INSERT INTO Clients
    (Name, FiscalStreet, FiscalCity, FiscalCountry, PaymentType, IBAN)
VALUES
    ('InnovateTech Solutions', 'Calle Ficticia 123', 'Ciudad Ficticia', 'País Ficticio', 'Domiciliación', 'ES0123456789012345678901'),
    ('Quantum Dynamics Industries', 'Avenida Imaginaria 456', 'Otra Ciudad Ficticia', 'Otro País Ficticio', 'Transferencia Bancaria', 'ES1234567890123456789012'),
    ('EcoHarmony Ventures', 'Calle de la Ilusión 789', 'Ciudad de Ensueño', 'País de las Maravillas', 'Cheque', 'ES2345678901234567890123'),
    ('Stellar Innovations Ltd.', 'Paseo de los Sueños 101', 'Ciudad Fantástica', 'Reino Imaginario', 'Domiciliación', 'ES3456789012345678901234'),
    ('Synergetic Systems Inc.', 'Rincón de los Deseos 222', 'Ciudad de las Maravillas', 'País Mágico', 'Transferencia Bancaria', 'ES4567890123456789012345'),
    ('Global Nexus Enterprises', 'Calle de los Anhelos 333', 'Metrópolis Onírica', 'Territorio de Ensueño', 'Cheque', 'ES5678901234567890123456'),
    ('OptiTech Solutions', 'Avenida de la Esperanza 444', 'Ciudad Imaginativa', 'País de las Maravillas', 'Domiciliación', 'ES6789012345678901234567'),
    ('Harmony Innovations Group', 'Calle del Optimismo 555', 'Ciudad Irreal', 'Nación de Fantasía', 'Transferencia Bancaria', 'ES7890123456789012345678'),
    ('OmniSoft Dynamics', 'Paseo de los Sueños 666', 'Ciudad Encantada', 'País Soñado', 'Cheque', 'ES8901234567890123456789'),
    ('QuantumSphere Technologies', 'Bulevar de la Imaginación 777', 'Ciudad Utopía', 'Región de Ensueño', 'Domiciliación', 'ES9012345678901234567890');

-- Insertar 40 registros de tipo "Despacho"
INSERT INTO Products
    (ProductType, ProductName, Price)
VALUES
    ('Despacho', 'Despacho 1', 100.00),
    ('Despacho', 'Despacho 2', 105.25),
    ('Despacho', 'Despacho 3', 110.50),
    ('Despacho', 'Despacho 4', 115.75),
    ('Despacho', 'Despacho 5', 120.00),
    ('Despacho', 'Despacho 6', 125.25),
    ('Despacho', 'Despacho 7', 130.50),
    ('Despacho', 'Despacho 8', 135.75),
    ('Despacho', 'Despacho 9', 140.00),
    ('Despacho', 'Despacho 10', 145.25),
    ('Despacho', 'Despacho 11', 150.50),
    ('Despacho', 'Despacho 12', 155.75),
    ('Despacho', 'Despacho 13', 160.00),
    ('Despacho', 'Despacho 14', 165.25),
    ('Despacho', 'Despacho 15', 170.50),
    ('Despacho', 'Despacho 16', 175.00),
    ('Despacho', 'Despacho 17', 120.75),
    ('Despacho', 'Despacho 18', 125.50),
    ('Despacho', 'Despacho 19', 130.25),
    ('Despacho', 'Despacho 20', 135.00),
    ('Despacho', 'Despacho 21', 140.25),
    ('Despacho', 'Despacho 22', 145.50),
    ('Despacho', 'Despacho 23', 150.75),
    ('Despacho', 'Despacho 24', 155.00),
    ('Despacho', 'Despacho 25', 160.25),
    ('Despacho', 'Despacho 26', 165.50),
    ('Despacho', 'Despacho 27', 170.75),
    ('Despacho', 'Despacho 28', 175.00),
    ('Despacho', 'Despacho 29', 110.75),
    ('Despacho', 'Despacho 30', 115.50),
    ('Despacho', 'Despacho 31', 120.25),
    ('Despacho', 'Despacho 32', 125.00),
    ('Despacho', 'Despacho 33', 130.25),
    ('Despacho', 'Despacho 34', 135.50),
    ('Despacho', 'Despacho 35', 140.75),
    ('Despacho', 'Despacho 36', 145.00),
    ('Despacho', 'Despacho 37', 150.25),
    ('Despacho', 'Despacho 38', 155.50),
    ('Despacho', 'Despacho 39', 160.75),
    ('Despacho', 'Despacho 40', 165.00);

-- Insertar 15 registros de tipo "Sala de Reunión" en la tabla Products con precios diferentes
INSERT INTO Products
    (ProductType, ProductName, Price)
VALUES
    ('Sala de Reunión', 'Sala 1', 30.00),
    ('Sala de Reunión', 'Sala 2', 32.50),
    ('Sala de Reunión', 'Sala 3', 35.00),
    ('Sala de Reunión', 'Sala 4', 37.50),
    ('Sala de Reunión', 'Sala 5', 40.00),
    ('Sala de Reunión', 'Sala 6', 42.50),
    ('Sala de Reunión', 'Sala 7', 45.00),
    ('Sala de Reunión', 'Sala 8', 31.25),
    ('Sala de Reunión', 'Sala 9', 33.75),
    ('Sala de Reunión', 'Sala 10', 36.25),
    ('Sala de Reunión', 'Sala 11', 38.75),
    ('Sala de Reunión', 'Sala 12', 41.25),
    ('Sala de Reunión', 'Sala 13', 43.75),
    ('Sala de Reunión', 'Sala 14', 30.50),
    ('Sala de Reunión', 'Sala 15', 34.00);

-- Insertar 15 registros de tipo "Extra" en la tabla Products con precios diferentes
INSERT INTO Products
    (ProductType, ProductName, Price)
VALUES
    ('Extra', 'Servicio de atención telefónica personalizada', 25.50),
    ('Extra', 'Número de teléfono exclusivo', 22.75),
    ('Extra', 'Recepción de correspondencia y paquetes', 30.00),
    ('Extra', 'Acceso a servicios de impresión y escaneo', 28.25),
    ('Extra', 'Servicio de limpieza diaria', 32.50),
    ('Extra', 'Café y servicios de bebidas en la oficina', 24.75),
    ('Extra', 'Servicio de traducción de documentos', 35.00),
    ('Extra', 'Estacionamiento exclusivo', 27.25),
    ('Extra', 'Internet de alta velocidad y soporte técnico', 31.50),
    ('Extra', 'Grabación y transcripción de la reunión', 26.75),
    ('Extra', 'Servicio de catering para reuniones', 34.00),
    ('Extra', 'Equipamiento audiovisual avanzado', 23.25),
    ('Extra', 'Servicio de asistencia técnica para equipos audiovisuales', 36.25),
    ('Extra', 'Coffee break o servicio de café y aperitivos', 29.50),
    ('Extra', 'Servicio de traducción simultánea', 37.00);


-- Insertar 67 registros en la tabla Quotes con fechas escritas
INSERT INTO Quotes
    (ClientID, StartDate, EndDate)
VALUES
    (1, '2023-10-01', '2025-10-01'),
    (2, '2023-11-01', '2025-12-01'),
    (3, '2023-12-01', '2026-01-01'),
    (4, '2024-01-01', '2026-04-01'),
    (6, '2024-02-01', '2025-04-01'),
    (7, '2024-03-01', '2025-07-01'),
    (8, '2024-04-01', '2025-10-01'),
    (9, '2024-05-01', '2025-11-01'),
    (1, '2023-06-01', '2025-06-01'),
    (2, '2023-07-01', '2025-09-01'),
    (3, '2023-08-01', '2026-03-01'),
    (4, '2023-09-01', '2026-06-01'),
    (6, '2023-10-01', '2025-10-01'),
    (7, '2023-11-01', '2025-11-01'),
    (8, '2023-12-01', '2026-01-01'),
    (9, '2024-01-01', '2026-04-01'),
    (1, '2024-02-01', '2025-04-01'),
    (2, '2024-03-01', '2025-07-01'),
    (3, '2024-04-01', '2025-10-01'),
    (4, '2024-05-01', '2025-11-01'),
    (6, '2024-06-01', '2026-01-01'),
    (7, '2024-07-01', '2026-04-01'),
    (8, '2024-08-01', '2025-06-01'),
    (9, '2024-09-01', '2025-09-01'),
    (1, '2024-10-01', '2026-03-01'),
    (2, '2024-11-01', '2026-06-01'),
    (3, '2024-12-01', '2025-10-01'),
    (4, '2023-01-01', '2025-11-01'),
    (6, '2024-02-01', '2026-01-01'),
    (7, '2022-03-01', '2026-04-01'),
    (8, '2024-04-01', '2025-06-01'),
    (9, '2023-05-01', '2025-09-01'),
    (1, '2022-06-01', '2026-03-01'),
    (2, '2024-07-01', '2026-06-01'),
    (3, '2023-08-01', '2025-10-01'),
    (4, '2022-09-01', '2025-11-01'),
    (6, '2024-10-01', '2026-01-01'),
    (7, '2023-11-01', '2026-04-01'),
    (8, '2022-12-01', '2025-06-01'),
    (9, '2024-01-01', '2025-09-01'),
    (1, '2023-02-01', '2026-03-01'),
    (2, '2022-03-01', '2026-06-01'),
    (3, '2024-04-01', '2025-10-01'),
    (4, '2023-05-01', '2025-11-01'),
    (6, '2022-06-01', '2026-01-01'),
    (7, '2024-07-01', '2026-04-01'),
    (8, '2023-08-01', '2025-06-01'),
    (9, '2022-09-01', '2025-09-01'),
    (1, '2024-10-01', '2027-10-01'),
    (2, '2023-11-01', '2027-12-01'),
    (3, '2022-12-01', '2028-01-01'),
    (4, '2024-01-01', '2028-04-01'),
    (6, '2023-02-01', '2028-04-01'),
    (7, '2022-03-01', '2028-07-01'),
    (8, '2024-04-01', '2028-10-01'),
    (9, '2023-05-01', '2028-11-01'),
    (1, '2022-06-01', '2029-06-01'),
    (2, '2024-07-01', '2029-09-01'),
    (3, '2023-08-01', '2030-03-01'),
    (4, '2022-09-01', '2030-06-01'),
    (6, '2024-10-01', '2029-10-01'),
    (7, '2023-11-01', '2029-11-01'),
    (8, '2022-12-01', '2030-01-01'),
    (9, '2024-01-01', '2030-04-01'),
    (1, '2023-02-01', '2029-04-01'),
    (2, '2022-03-01', '2029-07-01'),
    (3, '2021-04-01', '2029-10-01'),
    (4, '2024-05-01', '2029-11-01'),
    (6, '2023-06-01', '2030-01-01'),
    (7, '2022-07-01', '2030-04-01'),
    (8, '2021-08-01', '2029-06-01'),
    (9, '2024-09-01', '2029-09-01'),
    (1, '2023-10-01', '2030-03-01'),
    (2, '2022-11-01', '2030-06-01'),
    (3, '2021-12-01', '2029-10-01'),
    (4, '2024-01-01', '2029-11-01'),
    (6, '2023-02-01', '2030-01-01'),
    (7, '2022-03-01', '2030-04-01'),
    (8, '2021-04-01', '2029-06-01'),
    (9, '2024-05-01', '2029-09-01'),
    (1, '2023-06-01', '2030-03-01'),
    (2, '2022-07-01', '2030-06-01'),
    (3, '2021-08-01', '2029-10-01'),
    (4, '2024-09-01', '2029-11-01'),
    (6, '2023-10-01', '2030-01-01'),
    (7, '2022-11-01', '2030-04-01'),
    (8, '2021-12-01', '2029-06-01');

-- Insertar 25 reservas para clientes entre el 1 y 10
INSERT INTO Reservations
    (ClientID, ResevationDate, StartTime, EndTime)
VALUES
    (1, '2023-01-02', '09:00:00', '17:00:00'),
    (8, '2023-01-03', '10:00:00', '18:00:00'),
    (3, '2023-01-04', '11:00:00', '19:00:00'),
    (4, '2023-01-05', '12:00:00', '20:00:00'),
    (1, '2023-01-06', '13:00:00', '21:00:00'),
    (6, '2023-01-09', '14:00:00', '22:00:00'),
    (7, '2023-01-10', '15:00:00', '19:00:00'),
    (8, '2023-02-01', '16:00:00', '20:00:00'),
    (9, '2023-02-02', '09:00:00', '17:00:00'),
    (2, '2023-02-03', '10:00:00', '18:00:00'),
    (1, '2023-02-06', '11:00:00', '19:00:00'),
    (2, '2023-02-07', '12:00:00', '20:00:00'),
    (3, '2023-02-08', '13:00:00', '21:00:00'),
    (6, '2023-02-09', '14:00:00', '22:00:00'),
    (1, '2023-01-10', '15:00:00', '19:00:00'),
    (6, '2023-02-13', '16:00:00', '20:00:00'),
    (7, '2023-01-14', '09:00:00', '17:00:00'),
    (8, '2023-02-15', '10:00:00', '18:00:00'),
    (9, '2023-01-16', '11:00:00', '19:00:00'),
    (2, '2023-02-17', '12:00:00', '20:00:00'),
    (1, '2023-01-20', '13:00:00', '21:00:00'),
    (2, '2023-02-21', '14:00:00', '22:00:00'),
    (3, '2023-01-22', '15:00:00', '19:00:00'),
    (3, '2023-02-23', '16:00:00', '20:00:00'),
    (1, '2023-01-24', '09:00:00', '17:00:00');

-- Volcando datos para la tabla plexington.quotelineitems: ~67 rows (aproximadamente)
INSERT INTO quotelineitems
    (ID, QuoteID, ProductID, ProductPrice, FinalPrice)
VALUES
    (1, 1, 14, NULL, NULL),
    (2, 2, 34, NULL, NULL),
    (3, 3, 6, NULL, NULL),
    (4, 4, 7, NULL, NULL),
    (5, 5, 18, NULL, NULL),
    (6, 6, 30, NULL, NULL),
    (7, 7, 13, NULL, NULL),
    (8, 8, 14, NULL, NULL),
    (9, 9, 32, NULL, NULL),
    (10, 10, 35, NULL, NULL),
    (11, 11, 2, NULL, NULL),
    (12, 12, 23, NULL, NULL),
    (13, 13, 27, NULL, NULL),
    (14, 14, 27, NULL, NULL),
    (15, 15, 15, NULL, NULL),
    (16, 16, 34, NULL, NULL),
    (17, 17, 2, NULL, NULL),
    (18, 18, 27, NULL, NULL),
    (19, 19, 11, NULL, NULL),
    (20, 20, 12, NULL, NULL),
    (21, 21, 26, NULL, NULL),
    (22, 22, 14, NULL, NULL),
    (23, 23, 30, NULL, NULL),
    (24, 24, 27, NULL, NULL),
    (25, 25, 6, NULL, NULL),
    (26, 26, 30, NULL, NULL),
    (27, 27, 12, NULL, NULL),
    (28, 28, 7, NULL, NULL),
    (29, 29, 40, NULL, NULL),
    (30, 30, 17, NULL, NULL),
    (31, 31, 7, NULL, NULL),
    (32, 32, 23, NULL, NULL),
    (33, 33, 12, NULL, NULL),
    (34, 34, 29, NULL, NULL),
    (35, 35, 31, NULL, NULL),
    (36, 36, 26, NULL, NULL),
    (37, 37, 38, NULL, NULL),
    (38, 38, 32, NULL, NULL),
    (39, 39, 5, NULL, NULL),
    (40, 40, 7, NULL, NULL),
    (41, 41, 20, NULL, NULL),
    (42, 42, 40, NULL, NULL),
    (43, 43, 17, NULL, NULL),
    (44, 44, 4, NULL, NULL),
    (45, 45, 11, NULL, NULL),
    (46, 46, 40, NULL, NULL),
    (47, 47, 7, NULL, NULL),
    (48, 48, 33, NULL, NULL),
    (49, 49, 27, NULL, NULL),
    (50, 50, 32, NULL, NULL),
    (51, 51, 40, NULL, NULL),
    (52, 52, 23, NULL, NULL),
    (53, 53, 34, NULL, NULL),
    (54, 54, 19, NULL, NULL),
    (55, 55, 36, NULL, NULL),
    (56, 56, 39, NULL, NULL),
    (57, 57, 8, NULL, NULL),
    (58, 58, 3, NULL, NULL),
    (59, 59, 31, NULL, NULL),
    (60, 60, 26, NULL, NULL),
    (61, 61, 35, NULL, NULL),
    (62, 62, 19, NULL, NULL),
    (63, 63, 29, NULL, NULL),
    (64, 64, 5, NULL, NULL),
    (65, 65, 20, NULL, NULL),
    (66, 66, 4, NULL, NULL),
    (67, 67, 38, NULL, NULL);


DELIMITER //
CREATE FUNCTION createQLI() RETURNS INT
BEGIN
    DECLARE quoteID INT;
-- DEFAULT 1
DECLARE  pruductID INT;
SET quoteID
=1;
labell:
WHILE quoteID <=87 DO
SET pruductID
= FLOOR
(RAND
()*
(40-1+1))+1;

INSERT INTO quotelineitems
    (QuoteID, ProductID)
VALUES
    (quoteID, pruductID);

SET quoteID
= quoteID + 1;
end
while labell;
RETURN 1;
END //
DELIMITER ;

SELECT createQLI();

-- Funcion para crear QLI 
DELIMITER //
CREATE FUNCTION createQLI2() RETURNS INT
BEGIN
	DECLARE registros INT DEFAULT 1;
	DECLARE quoteID INT; -- DEFAULT 1;
	DECLARE productID INT;
	startwhile: WHILE registros <= 80 DO
		SET quoteID = FLOOR(RAND()*(67-1+1))+1;
		SET productID = FLOOR(RAND()*(64-56+1))+56;

		INSERT INTO quotelineitems (QuoteID, ProductID)
		VALUES (quoteID, productID);

		SET registros = registros + 1;
	END WHILE startwhile;

	RETURN 1;

END //
DELIMITER //

-- CREAR UNA FUNCION PARA CALCULAR DIFERENCIA DE HORAS
DELIMITER //
CREATE FUNCTION CalcularDuracion(StartTime TIME, EndTime TIME) RETURNS INT
BEGIN
    DECLARE Duration INT;
    SET Duration = TIMESTAMPDIFF(HOUR, StartTime, EndTime);
    RETURN Duration;
END //
DELIMITER ;

--PARA CREAR Z TABLA
CREATE TABLE Z_reservation AS
SELECT * FROM reservations;


-- CREAR PROCEDIMIENTO PARA ACTUALIZAR DURACION EN LA TABLA DE RESEVATION
DELIMITER //
CREATE PROCEDURE ActualizarDuracionReservas()
BEGIN
    DECLARE reservaID INT;
    DECLARE inicioReserva TIME;
    DECLARE finReserva TIME;
    DECLARE duracion INT;
    DECLARE cur_finished INT DEFAULT FALSE;

    DECLARE cur_reservas CURSOR FOR
        SELECT ID, StartTime, EndTime
        FROM reservations;

    DECLARE CONTINUE HANDLER FOR NOT FOUND
        SET cur_finished = TRUE;

    OPEN cur_reservas;

    reserva_loop: LOOP
        FETCH cur_reservas INTO reservaID,inicioReserva, finReserva;

        IF cur_finished THEN
            LEAVE reserva_loop;
        end if;

        SET duracion = CalcularDuracion(inicioReserva,finReserva);


        UPDATE z_reservation
        SET Duration = duracion
        WHERE ID=reservaID;
    end loop;

    CLOSE cur_reservas;
end //
DELIMITER ;

-- Actuliza cuando insertas algo dentro de la tabla
DELIMITER //
CREATE TRIGGER beforeInsertReservation
    BEFORE INSERT
    ON reservations FOR EACH ROW
    BEGIN
        SET NEW.Duration = CalcularDuracion(NEW.StartTime,NEW.EndTime);

    end//

DELIMITER ;


DELIMITER //
CREATE TRIGGER beforeUpdateReservation
    BEFORE UPDATE
    ON reservations FOR EACH ROW
    BEGIN
        IF(OLD.StartTime <> NEW.StartTime OR OLD.EndTime <> NEW.EndTime) THEN
        SET NEW.Duration = CalcularDuracion(NEW.StartTime,NEW.EndTime);

        end if;

    end//

DELIMITER ;


-- 0.5 - RELLENAR PRECIOS DE QLI
UPDATE quotelineitems, products
SET quotelineitems.ProductPrice = products.Price
WHERE quotelineitems.ProductID = products.ID;

-- 0.75 - RELLENAR PRECIOS  y precio cada mes DE Quote
DELIMITER //
CREATE PROCEDURE QuotePrice()
BEGIN
    -- variables para meter los datos que vas a cojer despues
    DECLARE quoteIDVar INT;
    DECLARE total DECIMAL (10, 2);
    DECLARE cur_quoteFinished INT DEFAULT FALSE;

    -- array de array
    DECLARE cur_quotes  CURSOR FOR
        -- un select para cojer los datos que quieres en una tabla especifica
        SELECT QuoteID, SUM(if(FinalPrice IS NULL, ProductPrice, FinalPrice)) AS QLI
        FROM quotelineitems
        -- lo agrupa por queteID para el update luego
        GROUP BY QuoteID;

    -- si da un error el variable cur_quoteFinished ponga un true para luego acabar
    DECLARE CONTINUE HANDLER FOR NOT FOUND
        SET cur_quoteFinished = TRUE;

    -- mira dentro del sursor que hemos hecho
    OPEN cur_quotes;

    -- un loop para actualizar todos las filas
    loop_quotes: LOOP
        -- coje los datos del cursor y meter los a los variable que hemos dicho antes
        FETCH cur_quotes INTO quoteIDVar, total;

        -- vereficacion para saber si ya hemos acabado
        IF cur_quoteFinished THEN
            LEAVE loop_quotes;
        end if ;

        -- actualizamos la tabla qoutes con los datos qe hemos recogido
        UPDATE quotes
        SET TotalPrice =total, TotalMonthlyPrice = total/12
        WHERE ID = quoteIDVar;
    end loop ;

end //

CALL QuotePrice();

-- 1 Automatizar el precio de quoteLineItems con el precio del producto (BEFORE INSERT)
DELIMITER //
CREATE TRIGGER BeforeInsertQLI
    BEFORE INSERT
    ON quotelineitems FOR EACH ROW
    BEGIN
        -- hacemos un variable para el precio de producto que vamos a cojer
        DECLARE productPriceVar DECIMAL(10, 2);

        -- cojemos ese dato y lo metemos al variable que hemos hecho
        SELECT products.price INTO productPriceVar
        FROM products
        WHERE products.ID = NEW.ProductID;

        -- actualizamos el product price
        SET NEW.ProductPrice = productPriceVar;

    end//

DELIMITER ;

-- 2 Si modifcio el producto de QLI, modificar el precio de QLI con el precio del nuevo producto (BEFORE UPDATE)
DELIMITER //
CREATE TRIGGER BeforeUpdateQLI
    BEFORE UPDATE
    ON quotelineitems FOR EACH ROW
BEGIN
    -- hacemos un variable para el precio de producto que vamos a cojer
    DECLARE productPriceVar DECIMAL(10, 2);

    -- cojemos ese dato y lo metemos al variable que hemos hecho
    SELECT products.price INTO productPriceVar
    FROM products
    WHERE products.ID = NEW.ProductID;

    -- si el productid es diferente que actualize el precio
    IF (OLD.ProductID <> NEW.ProductID)THEN
        SET NEW.ProductPrice = productPriceVar;
    end if ;
end //

DELIMITER ;

-- 3 Automatizar el precio de Quote con la suma de sus lineas (PROCEDIMIENTO)
-- lo mismo que el 0.75 pero uno por uno
DELIMITER //
CREATE PROCEDURE CalculateQuotePrice(IN quoteIDVAR INT)
BEGIN
    DECLARE total DECIMAL (10, 2);

    SELECT SUM(IF(FinalPrice IS NULL, ProductPrice,FinalPrice )) INTO total
    FROM quotelineitems
    WHERE QuoteID = quoteIDVAR;

    UPDATE quotes
    SET TotalPrice =total, TotalMonthlyPrice = total/12
    WHERE ID = quoteIDVAR;

end //
DELIMITER ;

-- 4.- Si se inssertan o modifican linea (QLI) hay que recalcular el precio dle presupuesto

-- Si ponemos algo nuevo en el QLI que actualize todo
DELIMITER //
CREATE TRIGGER AfterInsertQLI
AFTER INSERT
ON quotelineitems
FOR EACH ROW
BEGIN
    CALL CalculateQuotePrice(NEW.QuoteID);
end //
DELIMITER ;

-- Si modificamos el product price final price y el quote ID actualiza todo
DELIMITER //
CREATE TRIGGER AfterUpdateQLI
AFTER UPDATE
ON quotelineitems
FOR EACH ROW
BEGIN
    IF((OLD.ProductPrice <> NEW.ProductPrice) OR (OLD.FinalPrice <> NEW.FinalPrice)) THEN
        CALL CalculateQuotePrice(NEW.QuoteID);
    end if ;

    IF(OLD.QuoteID<>NEW.QuoteID) THEN
        CALL CalculateQuotePrice(NEW.QuoteID);
        CALL CalculateQuotePrice(OLD.QuoteID);
    end if ;
end //
DELIMITER ;

-- si eliminamos una linea de un registro
DELIMITER //
CREATE TRIGGER AfterDeleteQLI
AFTER DELETE
ON quotelineitems
FOR EACH ROW
BEGIN
    CALL CalculateQuotePrice(OLD.QuoteID);
end //
DELIMITER ;

-- 
DELIMITER //
CREATE TRIGGER AfterUpdateProducts
AFTER UPDATE
ON products
FOR EACH ROW
BEGIN
    IF(OLD.Price <> NEW.Price) THEN
        UPDATE quotelineitems
        SET ProductPrice = NEW.Price, FinalPrice = NULL
        WHERE quotelineitems.ProductID = NEW.ID;
    end if ;
end //
DELIMITER ;


-- Crear contrato y sus lineas de contrato copiando del presupuesto

-- 1. verificar el cambio de estado del presupuesto

-- 2. verificar que el bnuevo estado es el correcto

-- 3. crear contrato con la informacion del presupuesto

-- 4. recuperar el ID del contrato generado

-- 5. crear la slinea del contrato con informacion de las lineas de presupuesto y vincular las al contrato

DELIMITER //
CREATE TRIGGER AfterUpdateQuote
AFTER UPDATE
ON quotes
FOR EACH ROW
BEGIN
    -- VERIFICA SI EL ESTADO HA CAMBIADO A 'ACEPTA'
    IF (NEW.status = 'Accepted' AND OLD.status <> 'Accepted') THEN
        -- inserta un nuevo contracto
        INSERT INTO contracts (QuoteID,StartDate,EndDate,TotalPrice,TotalMonthlyPrice,ClientID)
        VALUES (NEW.ID, NEW.StartDate, NEW.EndDate, NEW.TotalPrice, NEW.TotalMonthlyPrice,NEW.ClientID);

        -- obtiene el ID del contrato recien insertado
        SET @contractID = LAST_INSERT_ID();

        -- procedimiento para insertar una linea en CLI
        CALL CreateCLI(NEW.ID,@contractID);

    end if ;
end;
DELIMITER ;

DELIMITER //
CREATE PROCEDURE CreateCLI(IN QouteIDParam INT, IN contractIDParam INT)
BEGIN
    DECLARE QLI_IDVar INT;
    DECLARE ProductIDVar INT;
    DECLARE ProductPriceVar DECIMAL(10, 2);
    DECLARE FinalPriceVar DECIMAL(10, 2);
    DECLARE cur_QLIFinished INT DEFAULT FALSE;

    -- obtiene los datos de QLI y lo mete en un cursor
    DECLARE cur_QLI  CURSOR FOR
        SELECT ID,ProductID,ProductPrice,FinalPrice
        FROM quotelineitems
        WHERE QuoteID = QouteIDParam;   

    -- si da un error el variable cur_quoteFinished ponga un true para luego acabar
    DECLARE CONTINUE HANDLER FOR NOT FOUND
        SET cur_QLIFinished = TRUE;

    -- mira dentro del sursor que hemos hecho
    OPEN cur_QLI;

    -- un loop para actualizar todos las filas
    loop_quotes: LOOP
        -- coje los datos del cursor y meter los a los variable que hemos dicho antes
        FETCH cur_QLI INTO QLI_IDVar, ProductIDVar,ProductPriceVar, FinalPriceVar;

        -- vereficacion para saber si ya hemos acabado
        IF cur_QLIFinished THEN
            LEAVE loop_quotes;
        end if ;

        -- actualizamos la tabla qoutes con los datos qe hemos recogido
        INSERT INTO contractlineitems(ContractID,ProductID, QuoteLineID, ProductPrice, FinalPrice)
        VALUES (contractIDParam,ProductIDVar,QLI_IDVar,ProductPriceVar,FinalPriceVar);
    end loop ;
    CLOSE cur_QLI;
end;
DELIMITER ;

DELIMITER //
CREATE TRIGGER BeforeUpdateQuote
BEFORE UPDATE
ON quotes
FOR EACH ROW
BEGIN
    -- VERIFICA SI EL ESTADO ESTA EN DENEGADO Y SI EL DENNIED REASONS ESTA NULL SALGA UN ERROR
    IF (NEW.status = 'Dennied' AND NEW.DenniedReasons IS NULL) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'ERROR: Tu tonto, tonto, Yo listo, listo y tienes que poner razon por que esta denegado';
    end if ;
end;
DELIMITER ;