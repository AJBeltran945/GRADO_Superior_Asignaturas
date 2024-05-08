-- Tabla de Organizadores/Clientes
CREATE TABLE Organizadores (
OrganizadorID INT PRIMARY KEY AUTO_INCREMENT,
Nombre VARCHAR(255),
Direccion_Calle VARCHAR(255),
Direccion_Ciudad VARCHAR(255),
Direccion_Provincia VARCHAR(255),
DireccionFiscal_Calle VARCHAR(255),
DireccionFiscal_Ciudad VARCHAR(255),
DireccionFiscal_Provincia VARCHAR(255),
DatosBancarios VARCHAR(255),
Email VARCHAR(255),
Telefono VARCHAR(20)
);
-- Tabla de Asistentes
CREATE TABLE Asistentes (
AsistenteID INT PRIMARY KEY AUTO_INCREMENT,
Nombre VARCHAR(255),
Apellidos VARCHAR(255),
EmailTelefono VARCHAR(255),
RangoEdad VARCHAR(20)
);
-- Tabla de Ponentes
CREATE TABLE Ponentes (
PonenteID INT PRIMARY KEY AUTO_INCREMENT,
Nombre VARCHAR(255),
Apellidos VARCHAR(255),
Email VARCHAR(255),
Telefono VARCHAR(20)
);
-- Tabla de Servicios Extras
CREATE TABLE ServiciosExtras (
ServicioID INT PRIMARY KEY AUTO_INCREMENT,
Nombre VARCHAR(255),
CosteInterno FLOAT(10, 2),
PVP FLOAT(10, 2)
);
-- Tabla de Conferencias
CREATE TABLE Conferencias (
ConferenciaID INT PRIMARY KEY AUTO_INCREMENT,
Lugar_Calle VARCHAR(255),
Lugar_Ciudad VARCHAR(255),
Lugar_Provincia VARCHAR(255),
Fecha DATE,
Nombre VARCHAR(255),
CosteInterno FLOAT(10, 2),
PVP FLOAT(10, 2),
OrganizadorID INT,
PonenteID INT,
URLFormulario VARCHAR(255),
FOREIGN KEY (OrganizadorID) REFERENCES Organizadores(OrganizadorID),
FOREIGN KEY (PonenteID) REFERENCES Ponentes(PonenteID)
);
-- Relación entre Conferencias y Servicios Extras
CREATE TABLE ConferenciasExtras (
ConferenciaID INT,
ExtraID INT,
PRIMARY KEY (ConferenciaID, ExtraID),
FOREIGN KEY (ConferenciaID) REFERENCES Conferencias(ConferenciaID),
FOREIGN KEY (ExtraID) REFERENCES ServiciosExtras(ServicioID)
);
-- Relación entre Asistentes y Conferencias
CREATE TABLE ConferenciasAsistentes (
AsistenteID INT,
ConferenciaID INT,
PRIMARY KEY (AsistenteID, ConferenciaID),
FOREIGN KEY (AsistenteID) REFERENCES Asistentes(AsistenteID),
FOREIGN KEY (ConferenciaID) REFERENCES Conferencias(ConferenciaID)
);
-- Organizadores
INSERT INTO Organizadores (Nombre, Direccion_Calle, Direccion_Ciudad,
Direccion_Provincia, DireccionFiscal_Calle, DireccionFiscal_Ciudad, DireccionFiscal_Provincia,
DatosBancarios, Email, Telefono)
VALUES
('EventoPlan', 'Calle Organización 123', 'Ciudad Eventville', 'Provincia Organizadora', 'Fiscal
Calle Fiscal 45', 'Fiscal Ciudad Fiscaltown', 'Fiscal Provincia Fiscalville',
'ES12345678901234567890', 'info@eventoplan.com', '987654321'),
('MasterConferencias', 'Calle Conferencia 456', 'Ciudad Speakerstown', 'Provincia
Speakershire', 'Fiscal Calle Fiscal 67', 'Fiscal Ciudad Fiscalville', 'Fiscal Provincia Fiscalshire',
'ES98765432109876543210', 'info@masterconferencias.com', '123456789'),
('EventosVIP', 'Calle VIP 789', 'Ciudad Exclusivatown', 'Provincia VIPlandia', 'Fiscal Calle Fiscal
89', 'Fiscal Ciudad Fiscalville', 'Fiscal Provincia Fiscaland', 'ES45678901234567890123',
'info@eventosvip.com', '456789012'),
('ConferenciasExpress', 'Calle Rápida 1011', 'Ciudad Velocidadville', 'Provincia Rapidoland',
'Fiscal Calle Fiscal 101', 'Fiscal Ciudad Fiscalville', 'Fiscal Provincia Fiscalrapid',
'ES78901234567890123456', 'info@conferenciasexpress.com', '789012345'),
('PlanificadorEventos', 'Calle Planificación 1213', 'Ciudad Organizatown', 'Provincia
Plannerland', 'Fiscal Calle Fiscal 111', 'Fiscal Ciudad Fiscalville', 'Fiscal Provincia Fiscalplanner',
'ES23456789012345678901', 'info@planificadoreventos.com', '234567890'),
('ExperienciasInolvidables', 'Calle Memorable 1415', 'Ciudad Recuerdoville', 'Provincia
Unforgettableland', 'Fiscal Calle Fiscal 121', 'Fiscal Ciudad Fiscalville', 'Fiscal Provincia
Fiscalunforgettable', 'ES34567890123456789012', 'info@experienciasinolvidables.com',
'567890123'),
('MegaEventos', 'Calle Mega 1617', 'Ciudad Grandetown', 'Provincia Megaland', 'Fiscal Calle
Fiscal 131', 'Fiscal Ciudad Fiscalville', 'Fiscal Provincia Fiscalmega',
'ES45678901234567890123', 'info@megaeventos.com', '678901234'),
('EventosEstelares', 'Calle Estrella 1819', 'Ciudad Stardustville', 'Provincia Starland', 'Fiscal
Calle Fiscal 141', 'Fiscal Ciudad Fiscalville', 'Fiscal Provincia Fiscalstar',
'ES56789012345678901234', 'info@eventosestelares.com', '890123456'),
('PlanetaConferencias', 'Calle Galáctica 2021', 'Ciudad Cosmicville', 'Provincia Universe',
'Fiscal Calle Fiscal 151', 'Fiscal Ciudad Fiscalville', 'Fiscal Provincia Fiscalcosmic',
'ES67890123456789012345', 'info@planetaconferencias.com', '123789456'),
('EventosGlobales', 'Calle Global 2223', 'Ciudad Earthville', 'Provincia Globaland', 'Fiscal Calle
Fiscal 161', 'Fiscal Ciudad Fiscalville', 'Fiscal Provincia Fiscalglobal',
'ES78901234567890123456', 'info@eventosglobales.com', '789456123');
-- Ponentes
INSERT INTO Ponentes (Nombre, Apellidos, Email, Telefono)
VALUES
('John', 'Doe', 'john.doe@example.com', '123456789'),
('Alice', 'Smith', 'alice.smith@example.com', '987654321'),
('Bob', 'Johnson', 'bob.johnson@example.com', '456789012'),
('Emily', 'Williams', 'emily.williams@example.com', '789012345'),
('David', 'Brown', 'david.brown@example.com', '234567890'),
('Eva', 'Martinez', 'eva.martinez@example.com', '567890123'),
('Frank', 'Garcia', 'frank.garcia@example.com', '890123456'),
('Grace', 'Rodriguez', 'grace.rodriguez@example.com', '345678901'),
('Henry', 'Lopez', 'henry.lopez@example.com', '678901234'),
('Isabel', 'Perez', 'isabel.perez@example.com', '123789456');

-- ServiciosExtras
INSERT INTO ServiciosExtras (Nombre, CosteInterno, PVP)
VALUES
('Catering VIP', 500.00, 800.00),
('Proyector Premium', 200.00, 350.00),
('Servicio de Traducción', 300.00, 500.00),
('Material de Oficina', 100.00, 150.00),
('Fotógrafo Profesional', 400.00, 600.00);

-- Asistentes
INSERT INTO Asistentes (Nombre, Apellidos, EmailTelefono, RangoEdad)
VALUES
('Laura', 'Gonzalez', 'laura.g@example.com', '25-30'),
('Carlos', 'Rodriguez', 'carlos.r@example.com', '30-35'),
('Ana', 'Perez', 'ana.p@example.com', '20-25'),
('Roberto', 'Fernandez', 'roberto.f@example.com', '35-40'),
('Maria', 'Lopez', 'maria.l@example.com', '25-30'),
('Javier', 'Gomez', 'javier.g@example.com', '40-45'),
('Sara', 'Diaz', 'sara.d@example.com', '30-35'),
('Daniel', 'Martinez', 'daniel.m@example.com', '45-50'),
('Laura', 'Sanchez', 'laura.s@example.com', '35-40'),
('Alberto', 'Ramirez', 'alberto.r@example.com', '50-55'),
('Carmen', 'Torres', 'carmen.t@example.com', '40-45'),
('Juan', 'Vargas', 'juan.v@example.com', '55-60'),
('Silvia', 'Hernandez', 'silvia.h@example.com', '45-50'),
('Pedro', 'Moreno', 'pedro.m@example.com', '60-65'),
('Elena', 'Jimenez', 'elena.j@example.com', '50-55'),
('Manuel', 'Gutierrez', 'manuel.g@example.com', '65-70'),
('Natalia', 'Molina', 'natalia.m@example.com', '55-60'),
('Alejandro', 'Ortega', 'alejandro.o@example.com', '70-75'),
('Isabel', 'Cabrera', 'isabel.c@example.com', '60-65'),
('Antonio', 'Romero', 'antonio.r@example.com', '75-80'),
('Lucia', 'Suarez', 'lucia.s@example.com', '65-70'),
('Francisco', 'Herrera', 'francisco.h@example.com', '80-85'),
('Marta', 'Pascual', 'marta.p@example.com', '70-75'),
('Alvaro', 'Fuentes', 'alvaro.f@example.com', '85-90'),
('Beatriz', 'Reyes', 'beatriz.r@example.com', '75-80'),
('Gonzalo', 'Gallardo', 'gonzalo.g@example.com', '90-95'),
('Cristina', 'Blanco', 'cristina.b@example.com', '80-85'),
('Raul', 'Serrano', 'raul.s@example.com', '95-100'),
('Raquel', 'Navarro', 'raquel.n@example.com', '85-90'),
('Adrian', 'Iglesias', 'adrian.i@example.com', '100+'),
('Isabel', 'Ruiz', 'isabel.r@example.com', '90-95'),
('Alberto', 'Castro', 'alberto.c@example.com', '95-100'),
('Clara', 'Vega', 'clara.v@example.com', '100+'),
('Oscar', 'Morales', 'oscar.m@example.com', '95-100'),
('Eva', 'Delgado', 'eva.d@example.com', '100+'),
('Diego', 'Santos', 'diego.s@example.com', '100+'),
('Julia', 'Flores', 'julia.f@example.com', '100+'),
('Ricardo', 'Mendez', 'ricardo.m@example.com', '100+'),
('Alicia', 'Rodriguez', 'alicia.r@example.com', '25-30'),
('Patricia', 'Ferrer', 'patricia.f@example.com', '100+');

-- Conferencias
INSERT INTO Conferencias (Lugar_Calle, Lugar_Ciudad, Lugar_Provincia, Fecha, Nombre,
CosteInterno, PVP, OrganizadorID, PonenteID, URLFormulario)
VALUES
('Calle Principal 123', 'Ciudad Eventville', 'Provincia Eventland', '2023-02-15', 'Conferencia
Tech Innovators', 5000.00, 8000.00, 1, 1, 'forms.example.com/conferencia1'),
('Avenida Central 456', 'Ciudad Techtopia', 'Provincia Innovationshire', '2023-03-20', 'Digital
Marketing Summit', 6000.00, 10000.00, 2, 2, '://forms.example.com/conferencia2'),
('Plaza Tecnológica 789', 'Ciudad Silicon Valley', 'Provincia Techland', '2023-04-18', 'Future
Tech Trends', 5500.00, 9000.00, 3, 3, '://forms.example.com/conferencia3'),
('Calle del Futuro 1011', 'Ciudad Futurism', 'Provincia Futureland', '2023-05-22', 'AI and
Robotics Symposium', 7000.00, 12000.00, 4, 4, '://forms.example.com/conferencia4'),
('Avenida de la Innovación 1213', 'Ciudad Innovativetown', 'Provincia Innovationshire',
'2024-06-25', 'Innovation Expo', 8000.00, 13000.00, 5, 5, '://forms.example.com/conferencia5'),
('Calle Creativa 1415', 'Ciudad Creativityville', 'Provincia Creativeland', '2023-07-19',
'Creative Arts Symposium', 4500.00, 7000.00, 6, 6, '://forms.example.com/conferencia6'),
('Avenida del Conocimiento 1617', 'Ciudad Knowledgetown', 'Provincia Knowledgeville',
'2023-08-15', 'Knowledge Summit', 6000.00, 10000.00, 7, 7,
'://forms.example.com/conferencia7'),
('Calle del Emprendimiento 1819', 'Ciudad Startupville', 'Provincia Entrepreneurshipland',
'2023-09-21', 'Startup Accelerator Forum', 7500.00, 11000.00, 8, 8,
'://forms.example.com/conferencia8'),
('Paseo de la Ciencia 2021', 'Ciudad Sciencetopia', 'Provincia Scienceland', '2023-10-17',
'Science and Technology Symposium', 6500.00, 10500.00, 9, 9,
'://forms.example.com/conferencia9'),
('Calle del Futuro Sostenible 2223', 'Ciudad Sustainablefuture', 'Provincia Sustainland',
'2024-11-12', 'Sustainable Tech Summit', 7000.00, 12000.00, 10, 10,
'://forms.example.com/conferencia10'),
('Avenida de la Creatividad 2425', 'Ciudad Imaginativetown', 'Provincia Imaginativeland',
'2025-12-08', 'Imagination Festival', 5000.00, 8000.00, 1, 1,
'://forms.example.com/conferencia11'),
('Plaza de la Innovación 2627', 'Ciudad Innovateland', 'Provincia Innovationville',
'2025-01-05', 'Innovation Challenge', 6500.00, 10000.00, 2, 2,
'://forms.example.com/conferencia12');

-- ConferenciasExtras
-- Conferencia Tech Innovators (ExtraID 1 y 2)
INSERT INTO ConferenciasExtras (ConferenciaID, ExtraID)
VALUES
(1, 1);
-- Conferencia Digital Marketing Summit (ExtraID 2 y 3)
INSERT INTO ConferenciasExtras (ConferenciaID, ExtraID)
VALUES
(2, 2), (2, 3);
-- Conferencia Future Tech Trends (ExtraID 3 y 4)
INSERT INTO ConferenciasExtras (ConferenciaID, ExtraID)
VALUES
(3, 4);
-- Conferencia AI and Robotics Symposium (ExtraID 4 y 5)
INSERT INTO ConferenciasExtras (ConferenciaID, ExtraID)
VALUES
(4, 4), (4, 5);
-- Conferencia Innovation Expo (ExtraID 1 y 5)
INSERT INTO ConferenciasExtras (ConferenciaID, ExtraID)
VALUES
(5, 1), (5, 5),(5,2);
-- Conferencia Creative Arts Symposium (Sin extras)
-- No se inserta ningún registro para esta conferencia
-- Conferencia Knowledge Summit (ExtraID 1, 2 y 3)
INSERT INTO ConferenciasExtras (ConferenciaID, ExtraID)
VALUES
(7, 1), (7, 2), (7, 3);

-- ConferenciasAsistentes
-- Conferencia Tech Innovators (12 asistentes)
INSERT INTO ConferenciasAsistentes (ConferenciaID, AsistenteID)
VALUES
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8), (1, 9), (1, 10), (1, 11), (1, 12);
-- Conferencia Digital Marketing Summit (15 asistentes)
INSERT INTO ConferenciasAsistentes (ConferenciaID, AsistenteID)
VALUES
(2, 13), (2, 14), (2, 15), (2, 16), (2, 17), (2, 18), (2, 19), (2, 20), (2, 21), (2, 22), (2, 23), (2, 24), (2,
25), (2, 26), (2, 27);
-- Conferencia Future Tech Trends (10 asistentes)
INSERT INTO ConferenciasAsistentes (ConferenciaID, AsistenteID)
VALUES
(3, 28), (3, 29), (3, 30), (3, 31), (3, 32), (3, 33), (3, 34), (3, 35), (3, 36), (3, 37);
-- Conferencia AI and Robotics Symposium (18 asistentes)
INSERT INTO ConferenciasAsistentes (ConferenciaID, AsistenteID)
VALUES
(4, 38), (4, 39), (4, 40), (4, 1), (4, 2), (4, 3), (4, 4), (4, 5), (4, 6), (4, 7), (4, 8), (4, 9), (4, 10), (4, 11), (4,
12), (4, 13), (4, 14), (4, 15);
-- Conferencia Innovation Expo (20 asistentes)
INSERT INTO ConferenciasAsistentes (ConferenciaID, AsistenteID)
VALUES
(5, 16), (5, 17), (5, 18), (5, 19), (5, 20), (5, 21), (5, 22), (5, 23), (5, 24), (5, 25), (5, 26), (5, 27), (5,
28), (5, 29), (5, 30), (5, 31), (5, 32), (5, 33), (5, 34), (5, 35);
-- Conferencia Creative Arts Symposium (8 asistentes)
INSERT INTO ConferenciasAsistentes (ConferenciaID, AsistenteID)
VALUES
(6, 36), (6, 37), (6, 38), (6, 39), (6, 40), (6, 1), (6, 2), (6, 3);
-- Conferencia Knowledge Summit (25 asistentes)
INSERT INTO ConferenciasAsistentes (ConferenciaID, AsistenteID)
VALUES
(7, 4), (7, 5), (7, 6), (7, 7), (7, 8), (7, 9), (7, 10), (7, 11), (7, 12), (7, 13), (7, 14), (7, 15), (7, 16), (7,
17), (7, 18), (7, 19), (7, 20), (7, 21), (7, 22), (7, 23), (7, 24), (7, 25), (7, 26), (7, 27);
-- Conferencia Startup Accelerator Forum (10 asistentes)
INSERT INTO ConferenciasAsistentes (ConferenciaID, AsistenteID)
VALUES
(8, 25), (8, 29), (8, 30), (8, 31), (8, 32), (8, 33), (8, 34), (8, 35), (8, 36), (8, 37);
-- Conferencia Science and Technology Symposium (22 asistentes)
INSERT INTO ConferenciasAsistentes (ConferenciaID, AsistenteID)
VALUES
(9, 38), (9, 39), (9, 40), (9, 1), (9, 2), (9, 3), (9, 4), (9, 5), (9, 6), (9, 7), (9, 8), (9, 9), (9, 10), (9, 11), (9,
12), (9, 13), (9, 14), (9, 15), (9, 16), (9, 17), (9, 18), (9, 19), (9, 20);
-- Conferencia Sustainable Tech Summit (18 asistentes)
INSERT INTO ConferenciasAsistentes (ConferenciaID, AsistenteID)
VALUES
(10, 21), (10, 22), (10, 23), (10, 24), (10, 25), (10, 26), (10, 27), (10, 28), (10, 29), (10, 30), (10,
31), (10, 32), (10, 33), (10, 34), (10, 35), (10, 36), (10, 37), (10, 38);

-- Casos de uso

-- Consulta 1
SELECT Asistentes.* , Conferencias.* FROM Asistentes
JOIN ConferenciasAsistentes ON Asistentes.AsistenteID = ConferenciasAsistentes.AsistenteID
JOIN Conferencias ON Conferencias.ConferenciaID = ConferenciasAsistentes.ConferenciaID;

-- Consulta 2
SELECT Organizadores.*, COUNT(Conferencias.OrganizadorID) AS NumTotalConferencias
FROM Organizadores
JOIN Conferencias ON Organizadores.OrganizadorID = Conferencias.OrganizadorID
GROUP BY Organizadores.OrganizadorID
HAVING NumTotalConferencias >1;

-- Consulta 3
SELECT Asistentes.*, Conferencias.*
FROM Asistentes
JOIN ConferenciasAsistentes ON Asistentes.AsistenteID = ConferenciasAsistentes.AsistenteID
JOIN Conferencias ON ConferenciasAsistentes.ConferenciaID = Conferencias.ConferenciaID
WHERE Conferencias.Fecha> CURDATE();

-- Consulta 4
SELECT Organizadores.*, Conferencias.*, Asistentes.*, COUNT(ConferenciasAsistentes.AsistenteID) AS TotalAsistentesConferencia
FROM Organizadores
JOIN Conferencias ON Organizadores.OrganizadorID = Conferencias.OrganizadorID
JOIN ConferenciasAsistentes ON Conferencias.ConferenciaID = ConferenciasAsistentes.ConferenciaID
JOIN Asistentes ON Conferencias.ConferenciaID = Asistentes.AsistenteID
GROUP BY Conferencias.ConferenciaID;

SELECT Organizadores.*, COUNT(ConferenciasAsistentes.AsistenteID) AS TotalAsistentesConferencia
FROM Organizadores
JOIN Conferencias ON Organizadores.OrganizadorID = Conferencias.OrganizadorID
JOIN ConferenciasAsistentes ON Conferencias.ConferenciaID = ConferenciasAsistentes.ConferenciaID
GROUP BY Organizadores.Nombre;

-- Cosulta 5
SELECT Organizadores.*, Conferencias.*
FROM Organizadores
JOIN Conferencias ON Organizadores.OrganizadorID = Conferencias.OrganizadorID
WHERE Conferencias.OrganizadorID = NULL
OR (Conferencias.OrganizadorID IS NOT NULL AND Conferencias.Fecha < CURDATE());

-- Consulta 6
SELECT Asistentes.*, COUNT(ConferenciasAsistentes.ConferenciaID) AS MayorConf
FROM Asistentes
JOIN ConferenciasAsistentes ON Asistentes.AsistenteID = ConferenciasAsistentes.AsistenteID
GROUP BY Asistentes.AsistenteID
ORDER BY MayorConf DESC
LIMIT 3;

-- Consulta 7
SELECT * FROM Asistentes
WHERE EmailTelefono IS NULL;

SELECT COUNT(*) AS TotalRegistros
FROM Asistentes;

-- Consulta 8
SELECT Conferencias.*
FROM Conferencias
JOIN ConferenciasExtras ON Conferencias.ConferenciaID = ConferenciasExtras.ConferenciaID
JOIN ServiciosExtras ON ConferenciasExtras.ExtraID = ServiciosExtras.ServicioID
WHERE ServiciosExtras.Nombre = "Catering VIP"
ORDER BY ServiciosExtras.PVP DESC
LIMIT 3;

-- Consulta 9
SELECT *, SUM(Conferencias.PVP) AS total
FROM Organizadores
JOIN Conferencias ON Organizadores.OrganizadorID = Conferencias.OrganizadorID
GROUP BY Organizadores.OrganizadorID
ORDER BY total DESC
LIMIT 1;