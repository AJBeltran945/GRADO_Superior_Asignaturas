-- Crear la tabla de equipos
CREATE TABLE Equipos (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    NombreEquipo VARCHAR(50) NOT NULL
);

-- Crear la tabla de cuentas de jugadores
CREATE TABLE Jugadores(
    ID INT PRIMARY KEY AUTO_INCREMENT,
    NombreUsuario VARCHAR(50) UNIQUE NOT NULL,
    Contraseña VARCHAR(255) NOT NULL,
    PuntosDesbloqueo INT,
    EquipoID INT,
    FOREIGN KEY (EquipoID) REFERENCES Equipos(ID)
);

-- Crear la tabla de personajes seleccionables
CREATE TABLE Personajes (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    NombrePersonaje VARCHAR(50) NOT NULL,
    PuntosDesbloqueo INT NOT NULL
);

-- Crear la tabla de habilidades de personajes
CREATE TABLE Habilidades (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    PersonajeID INT,
    NombreHabilidad VARCHAR(50) NOT NULL,
    Descripcion VARCHAR(255),
    FOREIGN KEY (PersonajeID) REFERENCES Personajes(ID)
);

-- Crear la tabla de desbloqueo de personajes por jugador
CREATE TABLE JugadoresPersonajes (
    ID INT PRIMARY KEY AUTO_INCREMENT,    
    JugadorID INT,
    PersonajeID INT,
    FOREIGN KEY (JugadorID) REFERENCES Jugadores(ID),
    FOREIGN KEY (PersonajeID) REFERENCES Personajes(ID)
);

-- Instrucciones SQL para insertar equipos
INSERT INTO Equipos (NombreEquipo) VALUES ('Imperium Gamers');
INSERT INTO Equipos (NombreEquipo) VALUES ('Thunder Strikers');
INSERT INTO Equipos (NombreEquipo) VALUES ('Epic Titans');
INSERT INTO Equipos (NombreEquipo) VALUES ('Shadow Legends');
INSERT INTO Equipos (NombreEquipo) VALUES ('Star Guardians');

-- Instrucciones SQL para insertar personajes ficticios

INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Aetherion', 100);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Lunastra', 80);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Shadowblade', 120);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Frostborn', 90);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Ignition Phoenix', 110);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Sylvan Sentinel', 70);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Stormbreaker', 95);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Ember Fury', 85);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Celestial Seraph', 105);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Dusk Strider', 75);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Thundercaller', 115);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Blazeheart', 100);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Frostbite Queen', 80);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Eclipse Warden', 120);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Spectral Specter', 90);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Aurora Princess', 110);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Infernal Warlock', 70);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Galactic Guardian', 95);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Mystic Moonlight', 85);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Venomous Vortex', 105);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Radiant Reaper', 75);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Solar Sage', 115);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Nebula Nomad', 100);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Blazing Banshee', 80);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Mystical Mirage', 120);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Solaris Sentinel', 90);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Eternal Ember', 110);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Abyssal Avenger', 70);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Luminous Lycan', 95);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Thunderstorm Tempest', 85);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Mystic Matriarch', 105);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Inferno Inquisitor', 75);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Frostfire Fury', 115);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Shadowflame Sorcerer', 100);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Aurora Assassin', 80);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Crimson Centurion', 120);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Spectral Shaman', 110);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Venom Vanguard', 70);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Galactic Gladiator', 95);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Mystic Monarch', 85);
INSERT INTO Personajes (NombrePersonaje, PuntosDesbloqueo) VALUES ('Nebula Nomad', 105);

-- Instrucciones SQL para insertar 3 habilidades diferentes para los personajes

INSERT INTO Habilidades (PersonajeID, NombreHabilidad, Descripcion) VALUES
(1,'Frenetic Slash','Realiza una serie rápida de cortes con gran agilidad, infligiendo daño a todos los enemigos cercanos'),
(1,'Arcane Surge','Potencia temporalmente las habilidades mágicas, aumentando su potencia y velocidad de lanzamiento'),
(1,'Celestial Strike','Invoca un golpe celestial que impacta en un área, causando daño divino a los enemigos alcanzados'),
(2,'Shadow Dance','Se sumerge en las sombras, volviéndose temporalmente invisible y aumentando la velocidad de movimiento'),
(2,'Thunderclap','Descarga una onda de choque eléctrica alrededor, aturdiendo a los enemigos cercanos'),
(2,'Icy Veins','Entra en un estado gélido, aumentando la velocidad y poder de las habilidades de hielo'),
(3,'Fiery Barrage','Desata una lluvia de proyectiles ígneos sobre los enemigos, infligiendo daño en área'),
(3,'Mirage Step','Se desplaza instantáneamente a una posición cercana, dejando una imagen residual que confunde a los enemigos'),
(3,'Toxic Whirl','Gira en un torbellino tóxico, envenenando a los enemigos y ralentizando su velocidad de movimiento'),
(4,'Cyclonic Wave','Genera una ola de energía que empuja a los enemigos hacia atrás y los deja desorientados'),
(4,'Ember Burst','Libera una explosión de llamas, causando daño ardiente a todos los enemigos cercanos'),
(4,'Vortex of Shadows','Crea un vórtice oscuro que ralentiza a los enemigos y reduce su precisión'),
(5,'Resonance Beam','Dispara un rayo resonante que atraviesa a los enemigos, infligiendo daño continuo'),
(5,'Aegis Guard','Invoca un escudo protector que absorbe daño y reduce el impacto de habilidades enemigas'),
(5,'Aquatic Surge','Desata una ola acuática que empapa a los enemigos, reduciendo su velocidad y resistencia'),
(6,'Ethereal Strike','Realiza un ataque etéreo que ignora la armadura, causando daño directo a la salud del objetivo'),
(6,'Blazing Cascade','Genera una cascada de fuego que quema a los enemigos y los deja marcados por el fuego'),
(6,'Frostbite Flare','Lanza un destello de frío intenso, congelando a los enemigos y disminuyendo su velocidad'),
(7,'Earthshatter','Golpea el suelo con fuerza, creando una grieta que ralentiza y daña a los enemigos cercanos'),
(7,'Shifting Sands','Se desplaza rápidamente a través de las arenas, evadiendo ataques y repositionándose'),
(7,'Nova Pulse','Irradia una explosión de energía, dañando a los enemigos y aumentando temporalmente las habilidades aliadas'),
(8,'Voidlash','Golpea con una cuchilla etérea, atravesando las defensas enemigas y causando daño penetrante'),
(8,'Nebula Shield','Despliega un escudo de nebulosa, bloqueando ataques y reduciendo el daño recibido'),
(8,'Luminous Ray','Proyecta un rayo de luz intensa que ciega temporalmente a los enemigos en su trayectoria'),
(9,'Sonic Eruption','Desata una onda sónica que interrumpe habilidades enemigas y aturde a los afectados'),
(9,'Elemental Burst','Libera una explosión elemental, causando daño adicional según la afinidad elemental del objetivo'),
(9,'Pyroclasm','Invoca proyectiles ígneos que llueven sobre el área, infligiendo daño a los enemigos'),
(10,'Frost Nova','Genera una explosión de frío que congela a los enemigos cercanos, ralentizando sus acciones'),
(10,'Tempest Whirlwind','Crea un torbellino tumultuoso que succiona a los enemigos y los arroja lejos'),
(10,'Arcane Rift','Abre una fisura en el tejido mágico, teletransportándose a una ubicación seleccionada y desorientando a los enemigos'),
(11,'Celestial Halo','Conjura un halo divino sobre los aliados cercanos, otorgando resistencia y curación'),
(11,'Venomous Gale','Desata un vendaval venenoso que envenena a los enemigos y reduce su regeneración de salud'),
(11,'Thunderstorm','Invoca una tormenta eléctrica, electrocutando a los enemigos cercanos con rayos continuos'),
(12,'Blizzard Embrace','Sumerge el área en un abrazo gélido, congelando a los enemigos y reduciendo su velocidad'),
(12,'Solar Beam','Concentra energía solar en un rayo concentrado, infligiendo daño ardiente y cegando temporalmente'),
(12,'Stoneguard','Se transforma en un guardián pétreo, aumentando la resistencia y absorción de daño'),
(13,'Aqua Shield','Crea un escudo acuático que protege contra ataques mágicos y potencia habilidades de agua'),
(13,'Mystical Surge','Canaliza energía mística para aumentar temporalmente la velocidad y potencia de habilidades'),
(13,'Chrono Flash','Realiza un destello temporal, ralentizando a los enemigos cercanos y aumentando la velocidad aliada'),
(14,'Cosmic Burst','Libera una explosión cósmica que inflige daño de energía, ignorando las defensas físicas'),
(14,'Pyrokinetic Wave','Desata una ola de energía ígnea que quema a los enemigos y reduce su resistencia'),
(14,'Frosty Barricade','Construye una barrera de hielo que bloquea ataques y ralentiza a los enemigos al contacto'),
(15,'Thunderous Roar','Emite un rugido atronador que aturde a los enemigos cercanos y aumenta el valor de daño aliado'),
(15,'Ethereal Shift','Se desplaza a través del plano etéreo, evadiendo ataques y volviéndose intangible'),
(15,'Radiant Cascade','Genera una cascada de luz que cura a los aliados y debilita a los enemigos undead'),
(16,'Shadowmelt','Se funde en las sombras, volviéndose completamente invisible y desvaneciéndose del combate'),
(16,'Petrify','Convierte en piedra a los enemigos cercanos, inmovilizándolos temporalmente'),
(16,'Hydroblast','Lanza un chorro de agua a presión, empujando a los enemigos hacia atrás y debilitándolos'),
(17,'Time Warp','Manipula el tiempo alrededor, ralentizando a los enemigos y acelerando los movimientos aliados'),
(17,'Stonebreaker','Canaliza fuerza elemental en un golpe, rompiendo defensas y causando aturdimiento'),
(17,'Inferno Beam','Concentra energía ígnea en un rayo continuo, infligiendo daño persistente a los enemigos'),
(18,'Celestial Wings','Despliega alas divinas, aumentando la velocidad de movimiento y habilidades aéreas'),
(18,'Arcane Shield','Invoca un escudo mágico que bloquea habilidades enemigas y protege contra daño mágico'),
(18,'Vortex Burst','Genera una explosión en espiral que atrae a los enemigos y los daña en el centro'),
(19,'Shockwave','Libera una onda de choque expansiva, aturdiendo a los enemigos alcanzados'),
(19,'Frostfall','Hace caer una lluvia de fragmentos de hielo, ralentizando a los enemigos y causando daño'),
(19,'Ember Vortex','Crea un vórtice ardiente que quema a los enemigos cercanos y reduce su resistencia'),
(20,'Mirage Cloak','Se envuelve en una capa ilusoria, volviéndose invisible y evadiendo ataques'),
(20,'Venom Strike','Realiza un ataque veloz con veneno, envenenando al enemigo y reduciendo su resistencia'),
(20,'Cyclone Slam','Golpea el suelo con fuerza, generando una onda de choque que desorienta a los enemigos'),
(21,'Stone Gaze','Fija la mirada en piedra, petrificando a los enemigos que la enfrentan'),
(21,'Luminar Ray','Proyecta un rayo de luz brillante, dañando a los enemigos y revelando áreas ocultas'),
(21,'Mystic Barrier','Crea un escudo místico que absorbe daño y refleja parte de él hacia los atacantes'),
(22,'Aqua Nova','Genera una explosión acuática, empujando a los enemigos hacia atrás y causando ahogamiento'),
(22,'Resonant Echo','Libera un eco resonante que debilita a los enemigos y fortalece las habilidades aliadas'),
(22,'Emberfall','Provoca una lluvia de brasas ardientes, infligiendo daño persistente a los enemigos'),
(23,'Celestial Resilience','Concede resistencia celestial, reduciendo daño y protegiendo contra efectos negativos'),
(23,'Frosty Gale','Desata un vendaval gélido que congela a los enemigos y reduce su velocidad de movimiento'),
(23,'Arcane Infusion','Infunde energía arcana, potenciando temporalmente las habilidades y ataques básicos'),
(24,'Shadow Surge','Realiza un embate veloz desde las sombras, desorientando a los enemigos afectados'),
(24,'Thunderclash','Colisiona con fuerza eléctrica, aturdiendo a los enemigos en el área de impacto'),
(24,'Pyroburst','Libera una ráfaga de fuego, quemando a los enemigos y aumentando el daño infligido'),
(25,'Blizzardsong','Entona una canción glacial, congelando a los enemigos cercanos y ralentizando sus movimientos'),
(25,'Solar Flare','Desata una explosión solar, quemando a los enemigos y cegándolos temporalmente'),
(25,'Ethereal Burst','Explota en una descarga etérea, dañando a los enemigos y aumentando la velocidad propia'),
(26,'Stoneguardian','Invoca un golem pétreo como guardián, atrayendo la atención de los enemigos'),
(26,'Aqua Fury','Canaliza la furia del agua, potenciando ataques y habilidades acuáticas'),
(26,'Mystic Charge','Carga con energía mística, aumentando la velocidad de movimiento y resistencia'),
(27,'Celestial Leap','Realiza un salto celestial, esquivando ataques y aumentando la altura del salto'),
(27,'Thunderstrike','Descarga un rayo en un área, aturdiendo a los enemigos y potenciando aliados'),
(27,'Frostbite Fury','Desata la furia del frío, congelando a los enemigos y aumentando el daño'),
(28,'Radiant Shield','Despliega un escudo radiante, bloqueando proyectiles y debilitando a enemigos undead'),
(28,'Venomous Storm','Genera una tormenta de veneno, envenenando a los enemigos y reduciendo sus defensas'),
(28,'Chrono Shift','Manipula el tiempo, ralentizando a los enemigos y acelerando la velocidad propia'),
(29,'Inferno Cascade','Desata una cascada ígnea, quemando a los enemigos y dejando llamas persistentes'),
(29,'Stonefall','Hace caer piedras desde lo alto, infligiendo daño y aturdiendo a los enemigos'),
(29,'Frostshock Wave','Libera una onda de choque gélida, ralentizando y debilitando a los enemigos'),
(30,'Nebula Burst','Genera una explosión nebulosa, confundiendo a los enemigos y reduciendo su precisión'),
(30,'Sonic Impact','Impacta con una onda sonora, aturdiendo a los enemigos y aumentando la velocidad aliada'),
(30,'Emberstrike','Realiza un golpe ígneo, infligiendo daño ardiente y reduciendo la resistencia enemiga'),
(31,'Arcane Flow','Controla el flujo de energía arcana, potenciando habilidades y resistencias'),
(31,'Celestial Impact','Impacta con fuerza celestial, desorientando a los enemigos y aumentando la defensa aliada'),
(31,'Shadow Surge','Realiza un embate veloz desde las sombras, desorientando a los enemigos afectados'),
(32,'Hydroshock','Desata una onda de choque acuática, ralentizando y debilitando a los enemigos'),
(32,'Frostfire Wave','Combina el frío y el fuego en una onda ardiente y helada, causando confusión y daño'),
(32,'Thunderstorm Surge','Aumenta la intensidad de la tormenta eléctrica, aturdiendo a los enemigos y mejorando aliados'),
(33,'Quicksilver Stance','Adopta una postura ágil, aumentando la velocidad y el esquivo durante un tiempo'),
(33,'Radiant Barrier','Despliega una barrera radiante, bloqueando daño y debilitando a los enemigos undead'),
(33,'Venom Cascade','Crea una cascada de veneno, envenenando a los enemigos y reduciendo sus defensas'),
(34,'Chrono Flash','Realiza un destello temporal, ralentizando a los enemigos y acelerando la velocidad propia'),
(34,'Inferno Surge','Desata una oleada ígnea, quemando a los enemigos y dejando llamas persistentes'),
(34,'Mystic Shockwave','Libera una onda de choque mística, debilitando a los enemigos y mejorando habilidades aliadas'),
(35,'Aqua Burst','Genera una explosión acuática, dañando a los enemigos y ralentizando sus movimientos'),
(35,'Stoneguardian Slam','El golem pétreo ejecuta un potente golpe, aturdiendo a los enemigos cercanos'),
(35,'Celestial Fury','Canaliza la furia celestial, aumentando el daño y la velocidad durante un tiempo'),
(36,'Thunderclap Wave','Realiza una onda de choque eléctrica, aturdiendo a los enemigos y mejorando habilidades aliadas'),
(36,'Pyroburst Impact','Potencia el estallido ígneo, quemando a los enemigos y aumentando el daño infligido'),
(36,'Frostfall Surge','Desata una oleada helada, congelando a los enemigos y reduciendo su velocidad'),
(37,'Vortex of Shadows','Crea un vórtice de sombras, desorientando a los enemigos y mejorando habilidades aliadas'),
(37,'Resonance Strike','Ejecuta un golpe resonante, debilitando a los enemigos y potenciando habilidades aliadas'),
(37,'Arcane Cyclone','Genera un ciclón arcano, desorientando a los enemigos y mejorando la velocidad propia'),
(38,'Celestial Torrent','Desata un torrente celestial, aumentando el daño y ralentizando a los enemigos'),
(38,'Shadowstep Strike','Realiza un golpe veloz desde las sombras, debilitando a los enemigos y aumentando la velocidad propia'),
(38,'Hydroblast Wave','Genera una onda de choque acuática, ralentizando y debilitando a los enemigos'),
(39,'Frostshatter Slam','El impacto helado del golem, congelando a los enemigos y reduciendo su velocidad'),
(39,'Emberstrike Surge','Potencia el golpe ígneo, quemando a los enemigos y aumentando el daño infligido'),
(39,'Thunderous Impact','Impacta con fuerza eléctrica, aturdiendo a los enemigos y mejorando habilidades aliadas'),
(40,'Blazing Surge','Desata una oleada ígnea, quemando a los enemigos y dejando llamas persistentes'),
(40,'Ethereal Cyclone','Crea un ciclón etéreo, desorientando a los enemigos y mejorando la velocidad propia'),
(40,'Earthshaker Impact','Impacta con fuerza telúrica, aturdiendo a los enemigos y mejorando habilidades aliadas');

-- Instrucciones para generar jugadores
INSERT INTO Jugadores (NombreUsuario, Contraseña, PuntosDesbloqueo, EquipoID) VALUES
('Player1567', 'password1', 50, 1),
('Gamer21456', 'pass123', 30, 2),
('AwesomeGamer1234', 'securepwd', 75, 3),
('ProPlayer888', 'gaming456', 40, 4),
('59_EpicGamerX', 'playerpass', 60, 5),
('xMasterGamerx', 'masterpass', 90, 2),
('GameChanger000', 'change123', 25, 4),
('PixelWarrior23', 'pixel123', 55, 2),
('StrategicGamer58', 'stratpass', 70, 4),
('Player1', 'password1', 50, 1),
('Gamer2', 'pass123', 30, 2),
('AwesomeGamer', 'securepwd', 75, 3),
('ProPlayer', 'gaming456', 40, 4),
('EpicGamerX', 'playerpass', 60, 5),
('MasterGamer', 'masterpass', 90, 1),
('GameChanger', 'change123', 25, 2),
('PixelWarrior', 'pixel123', 55, 3),
('StrategicGamer', 'stratpass', 70, 4),
('GamingLegend', 'legend456', 80, 5),
('TheLegend', 'legendary123', 90, 1);

-- Asignaciones de personajes a jugadores
INSERT INTO JugadoresPersonajes (JugadorID, PersonajeID) VALUES
(1, 5), (1, 8), (1, 13),
(2, 1), (2, 7), (2, 9), (2, 11),
(3, 3), (3, 14), (3, 18), (3, 27),
(4, 4), (4, 15), (4, 19),
(5, 2), (5, 6), (5, 12),
(6, 10), (6, 16), (6, 22), (6, 30),
(7, 9), (7, 14), (7, 20), (7, 24),
(8, 3), (8, 8), (8, 11),
(9, 15), (9, 19), (9, 24),
(10, 10), (10, 13), (10, 21),
(11, 11), (11, 16), (11, 22),
(12, 17), (12, 24), (12, 30),(12,4),
(13, 12), (13, 17), (13, 23),
(14, 18), (14, 25), (14, 31),
(15, 13), (15, 18), (15, 24),(15,38),(15,1),(15,3),
(16, 19), (16, 26), (16, 32),
(17, 14), (17, 19), (17, 25),
(18, 20), (18, 27), (18, 33),(18,2),
(19, 15), (19, 20), (19, 26),(19,19),(19,40),
(20, 21), (20, 28), (20, 34),(20,19),(20,17),(20,2),(20,11);

-- Consulta 1
SELECT jugadores.NombreUsuario,COUNT(jugadorespersonajes.PersonajeID) AS NumPersonajes
FROM jugadores
JOIN jugadorespersonajes ON jugadores.ID = jugadorespersonajes.JugadorID
GROUP BY jugadores.ID
ORDER BY NumPersonajes;

-- Consulta 2
SELECT equipos.NombreEquipo, jugadores.NombreUsuario
FROM equipos
JOIN jugadores ON equipos.ID = jugadores.EquipoID
ORDER BY equipos.ID;

-- Consulta 3
SELECT personajes.NombrePersonaje, habilidades.NombreHabilidad, habilidades.Descripcion
FROM personajes
JOIN habilidades ON personajes.ID = habilidades.PersonajeID;

-- Consulta 4
SELECT equipos.NombreEquipo, COUNT(jugadores.NombreUsuario) AS NumJugadores
FROM equipos
JOIN jugadores ON equipos.ID = jugadores.EquipoID
GROUP BY equipos.ID
HAVING NumJugadores > 3;

-- Consulta 5
SELECT  personajes.NombrePersonaje, COUNT(jugadorespersonajes.PersonajeID) AS VecesDesbloqueado
FROM personajes
JOIN jugadorespersonajes ON personajes.ID = jugadorespersonajes.PersonajeID
GROUP BY personajes.ID
ORDER BY VecesDesbloqueado DESC
LIMIT 1;

-- Consulta 6
SELECT equipos.NombreEquipo, COUNT(jugadores.NombreUsuario) AS NumJugadores
FROM equipos
JOIN jugadores ON equipos.ID = jugadores.EquipoID
GROUP BY equipos.ID
ORDER BY NumJugadores DESC ;

-- Consulta 7
SELECT equipos.NombreEquipo, SUM(jugadores.PuntosDesbloqueo) AS PuntosDesbloqueTotales
FROM equipos
JOIN jugadores ON equipos.ID = jugadores.EquipoID
GROUP BY equipos.ID
ORDER BY PuntosDesbloqueTotales DESC;

-- Consulta 8
SELECT jugadores.NombreUsuario, MAX(jugadores.PuntosDesbloqueo) AS MaxPuntos
FROM jugadores
GROUP BY jugadores.ID
ORDER BY MaxPuntos DESC
LIMIT 1;

-- Consulta 9
SELECT jugadores.NombreUsuario, COUNT(jugadorespersonajes.PersonajeID) AS PersonajesDesbloqueados
FROM jugadores
JOIN jugadorespersonajes ON jugadores.ID = jugadorespersonajes.JugadorID
GROUP BY jugadores.ID
HAVING PersonajesDesbloqueados >4;

-- Consulta 10
SELECT jugadores.NombreUsuario, SUM(personajes.PuntosDesbloqueo) AS PuntosGastados
FROM jugadores
JOIN jugadorespersonajes ON jugadores.ID = jugadorespersonajes.JugadorID
JOIN personajes ON jugadorespersonajes.PersonajeID = personajes.ID
GROUP BY jugadores.ID;