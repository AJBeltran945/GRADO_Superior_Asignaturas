-- Tabla para almacenar información sobre los grupos musicales
CREATE TABLE Grupos (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(255) NOT NULL
);

-- Tabla para almacenar información sobre las canciones
CREATE TABLE Canciones (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(255) NOT NULL,
    Duracion INT NOT NULL, -- Suponemos que la duración está en segundos
    GrupoID INT,
    FOREIGN KEY (GrupoID) REFERENCES Grupos(ID)
);

-- Tabla para almacenar información sobre los géneros musicales
CREATE TABLE Generos (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(255) NOT NULL
);

-- Tabla para almacenar información sobre las tarifas
CREATE TABLE Tarifas (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(255) NOT NULL,
    ImporteMensual DECIMAL(10, 2) NOT NULL
);

-- Tabla para almacenar información sobre los usuarios
CREATE TABLE Usuarios (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(255) NOT NULL,
    Apellidos VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL, -- Para evitar duplicados
    TarifaID INT,
    FOREIGN KEY (TarifaID) REFERENCES Tarifas(ID)
);

-- Tabla para almacenar información sobre las listas de canciones
CREATE TABLE Listas (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(255) NOT NULL,
    UsuarioID INT,
    FOREIGN KEY (UsuarioID) REFERENCES Usuarios(ID)
);

-- Tabla de relación para asociar canciones a listas de canciones
CREATE TABLE ListasCanciones (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    ListaID INT,
    CancionID INT,
    FOREIGN KEY (ListaID) REFERENCES ListasCanciones(ID),
    FOREIGN KEY (CancionID) REFERENCES Canciones(ID)
);

-- Tabla de relación para asociar géneros a grupos
CREATE TABLE GenerosGrupos (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    GeneroID INT,
    GrupoID INT,
    FOREIGN KEY (GeneroID ) REFERENCES Generos(ID),
    FOREIGN KEY (GrupoID ) REFERENCES Grupos(ID)
);

-- Instrucciones SQL para insertar grupos musicales
INSERT INTO Grupos (Nombre) VALUES
    ('The Sonic Waves'),
    ('Electric Groove'),
    ('Moonlight Serenade'),
    ('Urban Fusion'),
    ('Mystic Echo'),
    ('Lunar Harmony'),
    ('Neon Pulse'),
    ('Silent Storm'),
    ('Epic Melodies'),
    ('Sunset Dreams'),
    ('Rhythm Rebels'),
    ('Celestial Beats'),
    ('Galactic Soundwave'),
    ('Harmonic Horizon'),
    ('Eternal Echoes');

-- Instrucciones SQL para insertar géneros musicales
INSERT INTO Generos (Nombre) VALUES
    ('Pop'),
    ('Rock'),
    ('Electrónica'),
    ('Hip Hop'),
    ('Reggae'),
    ('Jazz'),
    ('Indie'),
    ('Salsa'),
    ('R&B'),
    ('Folk');

-- Instrucciones SQL para insertar canciones
INSERT INTO Canciones (Nombre, Duracion, GrupoID) VALUES
    ('Melodía Atemporal', 180, 1),
    ('Energía Eléctrica', 210, 2),
    ('Serenata Lunar', 160, 3),
    ('Fusión Urbana', 200, 4),
    ('Eco Místico', 175, 5),
    ('Armonía Lunar', 190, 6),
    ('Pulso Neón', 220, 7),
    ('Tormenta Silenciosa', 165, 8),
    ('Melodías Épicas', 195, 9),
    ('Sueños al Atardecer', 200, 10),
    ('Rebeldes del Ritmo', 185, 11),
    ('Ondas Celestiales', 210, 12),
    ('Onda Sonora Galáctica', 170, 13),
    ('Ecos Eternos', 180, 14),
    ('Armonía Cuántica', 200, 1),
    ('Vibración Vívida', 190, 2),
    ('Alquimistas Sónicos', 180, 3),
    ('Ritmos de Aurora', 205, 4),
    ('Cadencia Cristalina', 175, 5),
    ('Encanto Estelar', 210, 6),
    ('Ecos del Bosque', 185, 7),
    ('Ritmo Nocturno', 195, 8),
    ('Sinfonía Subacuática', 220, 9),
    ('Sonidos del Cielo', 180, 10),
    ('Explosión Musical', 200, 11),
    ('Trance Celestial', 190, 12),
    ('Aventura Acústica', 175, 13),
    ('Ondas Oceánicas', 205, 14),
    ('Melodías Místicas', 195, 15),
    ('Ecléctico Encanto', 180, 1),
    ('Ritmos Revolucionarios', 210, 2),
    ('Sinfonía Sublime', 170, 3),
    ('Arpegios Astrales', 190, 4),
    ('Sueños Estelares', 185, 5),
    ('Aurora Acústica', 200, 6),
    ('Melodías Mágicas', 180, 7),
    ('Vibraciones Visuales', 205, 8),
    ('Ondas Orgánicas', 175, 9),
    ('Eco Espacial', 195, 10),
    ('Melodías Marcianas', 190, 11),
    ('Serenata Sideral', 220, 12),
    ('Sinfonía Surreal', 200, 13),
    ('Ritmo Radiante', 180, 14),
    ('Ondas Otoñales', 210, 15),
    ('Ecos Electrónicos', 175, 1),
    ('Sonidos Solares', 195, 2),
    ('Melodías Místicas', 180, 3),
    ('Vibraciones Vitales', 205, 4),
    ('Armonía Atmosférica', 190, 5),
    ('Aventura Acústica', 200, 6),
    ('Ritmos Rústicos', 170, 7),
    ('Sinfonía Sutil', 185, 8),
    ('Ecos Enigmáticos', 210, 9),
    ('Sonidos Seductores', 220, 10),
    ('Sueños Sinfónicos', 195, 11),
    ('Arpegios Ancestrales', 180, 12),
    ('Melodías Místicas', 190, 13),
    ('Vibración Vanguardista', 200, 14),
    ('Serenata Sensorial', 175, 15),
    ('Timeless Melody', 180, 1),
    ('Electric Energy', 210, 2),
    ('Lunar Serenade', 160, 3),
    ('Urban Fusion', 200, 4),
    ('Mystic Echo', 175, 5),
    ('Lunar Harmony', 190, 6),
    ('Neon Pulse', 220, 7),
    ('Silent Storm', 165, 8),
    ('Epic Melodies', 195, 9),
    ('Sunset Dreams', 200, 10),
    ('Rhythm Rebels', 185, 11),
    ('Celestial Waves', 210, 12),
    ('Galactic Soundwave', 170, 13),
    ('Eternal Echoes', 180, 14),
    ('Quantum Harmony', 200, 1),
    ('Vivid Vibration', 190, 2),
    ('Sonic Alchemists', 180, 3),
    ('Aurora Rhythms', 205, 4),
    ('Crystal Cadence', 175, 5),
    ('Stellar Enchantment', 210, 6),
    ('Eternal Forest', 185, 7),
    ('Nocturnal Rhythm', 195, 8),
    ('Subaquatic Symphony', 220, 9),
    ('Sounds of the Sky', 180, 10),
    ('Musical Explosion', 200, 11),
    ('Celestial Trance', 190, 12),
    ('Acoustic Adventure', 175, 13),
    ('Oceanic Waves', 205, 14),
    ('Mystical Melodies', 195, 15),
    ('Eclectic Charm', 180, 1),
    ('Revolutionary Rhythms', 210, 2),
    ('Sublime Symphony', 170, 3),
    ('Astral Arpeggios', 190, 4),
    ('Stellar Dreams', 185, 5),
    ('Acoustic Aurora', 200, 6),
    ('Magical Melodies', 180, 7),
    ('Visual Vibrations', 205, 8),
    ('Organic Waves', 175, 9),
    ('Spatial Echo', 195, 10),
    ('Martian Melodies', 190, 11),
    ('Sidereal Serenade', 220, 12),
    ('Surreal Symphony', 200, 13),
    ('Radiant Rhythm', 180, 14),
    ('Autumnal Waves', 210, 15),
    ('Electronic Echoes', 175, 1),
    ('Solar Sounds', 195, 2),
    ('Mystical Melodies', 180, 3),
    ('Vital Vibrations', 205, 4),
    ('Atmospheric Harmony', 190, 5),
    ('Acoustic Adventure', 200, 6),
    ('Rustic Rhythms', 170, 7),
    ('Subtle Symphony', 185, 8),
    ('Enigmatic Echoes', 210, 9),
    ('Seductive Sounds', 220, 10),
    ('Symphonic Dreams', 195, 11),
    ('Ancestral Arpeggios', 180, 12),
    ('Mystical Melodies', 190, 13),
    ('Vanguard Vibration', 200, 14),
    ('Sensory Serenade', 175, 15);

-- Instrucciones SQL para insertar tarifas
INSERT INTO Tarifas (Nombre, ImporteMensual) VALUES
    ('Basic Plan', 9.99),
    ('Premium Plan', 19.99),
    ('Family Plan', 29.99),
    ('Student Plan', 4.99),
    ('Ultimate Plan', 49.99),
    ('Free Plan', 0.00);

-- Instrucciones SQL para insertar usuarios
INSERT INTO Usuarios (Nombre, Apellidos, Email, TarifaID) VALUES
    ('Alice', 'Smith', 'alice.smith@email.com',1),
    ('Bob', 'Johnson', 'bob.johnson@email.com',2),
    ('Charlie', 'Williams', 'charlie.williams@email.com',3),
    ('David', 'Jones', 'david.jones@email.com',4),
    ('Emma', 'Brown', 'emma.brown@email.com',5),
    ('Frank', 'Davis', 'frank.davis@email.com',null),
    ('Grace', 'Miller', 'grace.miller@email.com',null),
    ('Henry', 'Taylor', 'henry.taylor@email.com',1),
    ('Ivy', 'Clark', 'ivy.clark@email.com',3),
    ('Jack', 'White', 'jack.white@email.com',1),
    ('Katherine', 'Moore', 'katherine.moore@email.com',4),
    ('Leo', 'Harris', 'leo.harris@email.com',null),
    ('Mia', 'Anderson', 'mia.anderson@email.com',null),
    ('Noah', 'Thomas', 'noah.thomas@email.com',null),
    ('Olivia', 'Lee', 'olivia.lee@email.com',null);

-- Instrucciones SQL para insertar listas
INSERT INTO Listas (Nombre, UsuarioID) VALUES
    ('Top Hits', 1), ('Chill Vibes', 1), ('Rock Classics', 1),
    ('Feel Good Jams', 2), ('Late Night Beats', 2), ('Indie Anthems', 2),
    ('Electronic Dreams', 3), ('Soulful Sounds', 3), ('Road Trip Mix', 3),
    ('Summer Party Playlist', 4), ('Study Tunes', 4), ('Old School Rhythms', 4),
    ('Jazz Fusion', 5), ('Latin Grooves', 5), ('Alternative Edge', 5),
    ('Mellow Melodies', 6), ('Pop Paradise', 6), ('Dancefloor Delights', 6),
    ('Classical Journey', 7), ('Country Roads', 7), ('Epic Movie Scores', 7),
    ('Blues Express', 8), ('Hip Hop Haven', 8), ('Reggae Rhythms', 8),
    ('Retro Rewind', 9), ('Disco Fever', 9), ('Acoustic Serenity', 9),
    ('Funk Fusion', 10), ('Metal Mayhem', 10), ('Punk Power', 10),
    ('Guitar Legends', 11), ('Bass Bombs', 11), ('Drum Beats Galore', 11),
    ('Vocal Wonders', 12), ('Instrumental Bliss', 12), ('Synthwave Spectacle', 12),
    ('Harmony Haven', 13), ('World Music Wonders', 13), ('EDM Ecstasy', 13),
    ('Celtic Serenade', 14), ('Asian Fusion', 14), ('African Rhythms', 14),
    ('Future Bass Frenzy', 15), ('Trap Territory', 15), ('Dubstep Dimension', 15);


-- Instrucciones SQL para insertar ListasCanciones
INSERT INTO ListasCanciones (ListaID, CancionID)
VALUES
-- Lista 1
(1, 3), (1, 15), (1, 8), (1, 12), (1, 5), (1, 10),
-- Lista 2
(2, 18), (2, 11), (2, 16),
-- Lista 3
(3, 21), (3, 23), (3, 25), (3, 26), (3, 22), (3, 27), (3, 30),
-- Lista 4
(4, 34), (4, 37), (4, 31), (4, 32), (4, 33), (4, 38), (4, 39), (4, 35),
-- Lista 5
(5, 43), (5, 47), (5, 41), (5, 45), (5, 42), (5, 44), (5, 46), (5, 49), (5, 48),
-- Lista 6
(6, 55), (6, 61), (6, 68), (6, 73), (6, 78), (6, 82), (6, 85), (6, 91), (6, 95), (6, 102), (6, 107), (6, 113), (6, 117), (6, 1), (6, 7),
-- Lista 7
(7, 13), (7, 19), (7, 25), (7, 31), (7, 37), (7, 43), (7, 49), (7, 55), (7, 61), (7, 67), (7, 73), (7, 79), (7, 85), (7, 91), (7, 97),
-- Lista 8
(8, 103), (8, 109), (8, 115), (8, 12), (8, 1), (8, 7), (8, 13), (8, 19), (8, 25), (8, 31), (8, 37), (8, 43), (8, 49), (8, 55), (8, 61),
-- Lista 9
(9, 67), (9, 73), (9, 79), (9, 85), (9, 91), (9, 97), (9, 103), (9, 109), (9, 115), (9, 114), (9, 1), (9, 7), (9, 13), (9, 19), (9, 25),
-- Lista 10
(10, 31), (10, 37), (10, 43), (10, 49), (10, 55), (10, 61), (10, 67), (10, 73), (10, 79),
-- Lista 11
(11, 1), (11, 7), (11, 13), (11, 19), (11, 25), (11, 31), (11, 37), (11, 43), (11, 49), (11, 55), (11, 61), (11, 67), (11, 73), (11, 79), (11, 85),
-- Lista 12
(12, 91), (12, 97), (12, 103), (12, 1), (12, 7), (12, 13), (12, 19), (12, 25), (12, 31), (12, 37), (12, 43), (12, 49),
-- Lista 13
(13, 55), (13, 61), (13, 67), (13, 73), (13, 79), (13, 85), (13, 1), (13, 7), (13, 13),
-- Lista 14
(14, 19), (14, 25), (14, 31), (14, 37), (14, 43), (14, 49), (14, 55), (14, 61), (14, 67), (14, 73), (14, 79), (14, 85), (14, 91), (14, 97), (14, 103),
-- Lista 15
(15, 109), (15, 115), (15, 100), (15, 1), (15, 7), (15, 13), (15, 19), (15, 25), (15, 31), (15, 37), (15, 43), (15, 49), (15, 55), (15, 61), (15, 67);


-- Instrucciones SQL para insertar GenerosGrupos
INSERT INTO GenerosGrupos (GeneroID, GrupoID) VALUES
(1, 11), (2, 12), (3, 13), (4, 14), (5, 15),
(6, 1), (7, 2), (8, 3), (9, 4), (10, 5),
(1, 6), (2, 7), (3, 8), (4, 9), (5, 10),
(6, 11), (7, 12), (8, 13), (9, 14), (10, 15),
(1, 1), (2, 2), (3, 3), (4, 4);

-- Consulta 1
SELECT Generos.Nombre, COUNT(Canciones.Nombre) AS CancionesTotales
FROM Canciones
JOIN Grupos ON Canciones.GrupoID = Grupos.ID
JOIN GenerosGrupos ON Grupos.ID = GenerosGrupos.GrupoID
JOIN Generos on GenerosGrupos.GeneroID = Generos.ID
GROUP BY Generos.ID;

-- Consulta 2
SELECT Usuarios.Nombre, COUNT(Listas.ID) AS ListasTotales
FROM Usuarios
JOIN Listas ON Usuarios.ID = Listas.UsuarioID
GROUP BY Usuarios.ID;

-- Consulta 3
SELECT Grupos.Nombre, AVG(Canciones.Duracion) AS DuracionMedia
FROM Grupos
JOIN Canciones ON Grupos.ID = Canciones.GrupoID
GROUP BY Grupos.ID
ORDER BY Grupos.Nombre;

-- Consulta 4
SELECT Canciones.Nombre, COUNT(ListasCanciones.CancionID) AS TotalCancionesLista
FROM Canciones
JOIN listascanciones ON Canciones.ID = ListasCanciones.CancionID
GROUP BY Canciones.ID
HAVING TotalCancionesLista > 3;

-- Consulta 5
SELECT Usuarios.Nombre, COUNT(Listas.UsuarioID) AS TotalUsuario
FROM Usuarios
LEFT JOIN Listas ON Usuarios.ID = Listas.UsuarioID
GROUP BY Usuarios.ID;
-- HAVING TotalUsuario = 0;

-- Consulta 6
SELECT Usuarios.Nombre
FROM Usuarios
-- LEFT JOIN Tarifas ON Usuarios.TarifaID = Tarifas.ID
WHERE Usuarios.TarifaID IS NULL;

-- Consulta 7
SELECT Listas.Nombre, COUNT(ListasCanciones.CancionID) AS NumCanciones,
       SUM(Canciones.Duracion) AS Durlista
FROM Listas
JOIN ListasCanciones ON Listas.ID = ListasCanciones.ListaID
JOIN Canciones ON ListasCanciones.CancionID = Canciones.ID
GROUP BY Listas.ID
HAVING Listas.ID = 1;

-- Consulta 8
SELECT usuarios.Nombre, Usuarios.Apellidos, Tarifas.Nombre, Tarifas.ImporteMensual
FROM Usuarios
JOIN Tarifas ON Usuarios.TarifaID = Tarifas.ID
WHERE Usuarios.ID = 1;

-- Consulta 9
SELECT Grupos.Nombre, Generos.Nombre
FROM Grupos
JOIN GenerosGrupos ON Grupos.ID = GenerosGrupos.GrupoID
JOIN Generos ON GenerosGrupos.GeneroID = Generos.ID;

-- Consulta 10
SELECT Grupos.Nombre, Canciones.Nombre, MAX(Canciones.Duracion) AS Duracion
FROM Grupos
JOIN Canciones ON Grupos.ID = Canciones.GrupoID
GROUP BY  Grupos.ID;

-- Consulta 11
SELECT Listas.Nombre, COUNT(ListasCanciones.CancionID) AS NumCanciones
FROM Listas
JOIN ListasCanciones ON Listas.ID = ListasCanciones.ListaID
GROUP BY Listas.ID
ORDER BY NumCanciones DESC;