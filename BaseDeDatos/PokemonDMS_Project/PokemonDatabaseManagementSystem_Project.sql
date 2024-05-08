-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               11.2.2-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for pokemon_league_project
CREATE DATABASE IF NOT EXISTS `pokemon_league_project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `pokemon_league_project`;

-- Dumping structure for procedure pokemon_league_project.AddBattle
DELIMITER //
CREATE PROCEDURE `AddBattle`(
    IN p_trainer1_id INT,
    IN p_trainer2_id INT,
    IN p_date DATE,
    IN p_winner_id INT
)
BEGIN
    INSERT INTO Battles (ID_Trainer1, ID_Trainer2, Date, Winner)
    VALUES (p_trainer1_id, p_trainer2_id, p_date, p_winner_id);
END//
DELIMITER ;

-- Dumping structure for procedure pokemon_league_project.AddMove
DELIMITER //
CREATE PROCEDURE `AddMove`(
    IN p_name VARCHAR(255),
    IN p_type VARCHAR(50),
    IN p_category VARCHAR(50),
    IN p_power INT,
    IN p_accuracy INT,
    IN p_pp INT,
    IN p_description TEXT
)
BEGIN
    INSERT INTO Moves (Name, Type, Category, Power, Accuracy, PP, Description)
    VALUES (p_name, p_type, p_category, p_power, p_accuracy, p_pp, p_description);
END//
DELIMITER ;

-- Dumping structure for procedure pokemon_league_project.AddPokemon
DELIMITER //
CREATE PROCEDURE `AddPokemon`(
    IN p_name VARCHAR(255),
    IN p_type1 VARCHAR(50),
    IN p_type2 VARCHAR(50),
    IN p_species VARCHAR(255),
    IN p_generation INT,
    IN p_attack INT,
    IN p_defense INT,
    IN p_hp INT,
    IN p_speed INT,
    IN p_ability VARCHAR(255),
    IN p_hidden_ability VARCHAR(255)
)
BEGIN
    INSERT INTO Pokemons (Name, Type1, Type2, Species, Generation, Attack, Defense, HP, Speed, Ability, Hidden_Ability)
    VALUES (p_name, p_type1, p_type2, p_species, p_generation, p_attack, p_defense, p_hp, p_speed, p_ability, p_hidden_ability);
END//
DELIMITER ;

-- Dumping structure for procedure pokemon_league_project.AddPokemonMove
DELIMITER //
CREATE PROCEDURE `AddPokemonMove`(
    IN p_pokemon_id INT,
    IN p_move_id INT
)
BEGIN
    INSERT INTO Pokemons_Moves (ID_Pokemon, ID_Move)
    VALUES (p_pokemon_id, p_move_id);
END//
DELIMITER ;

-- Dumping structure for procedure pokemon_league_project.AddTrainer
DELIMITER //
CREATE PROCEDURE `AddTrainer`(
    IN p_name VARCHAR(255),
    IN p_city VARCHAR(255)
)
BEGIN
    INSERT INTO Trainers (Name, City) VALUES (p_name, p_city);
END//
DELIMITER ;

-- Dumping structure for table pokemon_league_project.battles
CREATE TABLE IF NOT EXISTS `battles` (
  `ID_Battle` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Trainer1` int(11) DEFAULT NULL,
  `ID_Trainer2` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Winner` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Battle`),
  KEY `ID_Trainer1` (`ID_Trainer1`),
  KEY `ID_Trainer2` (`ID_Trainer2`),
  KEY `Winner` (`Winner`),
  KEY `idx_battle_date` (`Date`),
  CONSTRAINT `battles_ibfk_1` FOREIGN KEY (`ID_Trainer1`) REFERENCES `trainers` (`ID_Trainer`),
  CONSTRAINT `battles_ibfk_2` FOREIGN KEY (`ID_Trainer2`) REFERENCES `trainers` (`ID_Trainer`),
  CONSTRAINT `battles_ibfk_3` FOREIGN KEY (`Winner`) REFERENCES `trainers` (`ID_Trainer`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table pokemon_league_project.battles: ~34 rows (approximately)
INSERT INTO `battles` (`ID_Battle`, `ID_Trainer1`, `ID_Trainer2`, `Date`, `Winner`) VALUES
	(1, 1, 2, '2024-01-05', 1),
	(2, 3, 4, '2024-01-10', 3),
	(3, 5, 6, '2024-01-15', 6),
	(4, 7, 8, '2024-01-20', 8),
	(5, 9, 10, '2024-01-25', 10),
	(6, 11, 12, '2024-02-01', 11),
	(7, 13, 14, '2024-02-06', 14),
	(8, 15, 16, '2024-02-11', 15),
	(9, 17, 18, '2024-02-16', 17),
	(10, 19, 20, '2024-02-21', 19),
	(11, 21, 22, '2024-02-26', 21),
	(12, 23, 24, '2024-03-04', 24),
	(13, 25, 26, '2024-03-09', 25),
	(14, 27, 28, '2024-03-14', 27),
	(15, 29, 30, '2024-03-19', 30),
	(16, 31, 32, '2024-03-24', 31),
	(17, 1, 3, '2024-03-29', 1),
	(18, 5, 7, '2024-04-03', 5),
	(19, 9, 11, '2024-04-08', 9),
	(20, 13, 15, '2024-04-13', 13),
	(21, 17, 19, '2024-04-18', 17),
	(22, 21, 23, '2024-04-23', 23),
	(23, 25, 27, '2024-04-28', 27),
	(24, 29, 31, '2024-05-03', 29),
	(25, 2, 4, '2024-05-08', 4),
	(26, 6, 8, '2024-05-13', 6),
	(27, 10, 12, '2024-05-18', 10),
	(28, 14, 16, '2024-05-23', 14),
	(29, 18, 20, '2024-05-28', 20),
	(30, 22, 24, '2024-06-02', 24),
	(31, 26, 28, '2024-06-07', 28),
	(32, 1, 2, '2024-04-18', 1),
	(33, 1, 2, '2024-04-18', 1),
	(34, 1, 2, '2024-04-18', 1);

-- Dumping structure for procedure pokemon_league_project.DeleteMove
DELIMITER //
CREATE PROCEDURE `DeleteMove`(
    IN p_id INT
)
BEGIN
    DELETE FROM Moves WHERE ID_Move = p_id;
END//
DELIMITER ;

-- Dumping structure for procedure pokemon_league_project.DeletePokemon
DELIMITER //
CREATE PROCEDURE `DeletePokemon`(
    IN p_id INT
)
BEGIN
    DELETE FROM Pokemons WHERE ID_Pokemon = p_id;
END//
DELIMITER ;

-- Dumping structure for procedure pokemon_league_project.DeletePokemonMove
DELIMITER //
CREATE PROCEDURE `DeletePokemonMove`(
    IN p_pokemon_move_id INT
)
BEGIN
    DELETE FROM Pokemons_Moves WHERE ID_Pokemon_Moves = p_pokemon_move_id;
END//
DELIMITER ;

-- Dumping structure for procedure pokemon_league_project.DeleteTrainer
DELIMITER //
CREATE PROCEDURE `DeleteTrainer`(
    IN p_id INT
)
BEGIN
    DELETE FROM Trainers WHERE ID_Trainer = p_id;
END//
DELIMITER ;

-- Dumping structure for table pokemon_league_project.moves
CREATE TABLE IF NOT EXISTS `moves` (
  `ID_Move` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Power` int(11) DEFAULT NULL,
  `Accuracy` int(11) DEFAULT NULL,
  `PP` int(11) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  PRIMARY KEY (`ID_Move`),
  KEY `idx_move_name` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table pokemon_league_project.moves: ~161 rows (approximately)
INSERT INTO `moves` (`ID_Move`, `Name`, `Type`, `Category`, `Power`, `Accuracy`, `PP`, `Description`) VALUES
	(1, 'Acid', 'Poison', 'Special', 40, 100, 30, 'The opposing Pokémon are attacked with a spray of harsh acid.'),
	(2, 'Agility', 'Psychic', 'Status', NULL, NULL, 30, 'The user relaxes and lightens its body to move faster. It sharply boosts the Speed stat.'),
	(3, 'Amnesia', 'Psychic', 'Status', NULL, NULL, 20, 'The user temporarily empties its mind to forget its concerns. It sharply raises the user\'s Sp. Def stat.'),
	(4, 'Aurora Beam', 'Ice', 'Special', 65, 100, 20, 'The target is hit with a rainbow-colored beam. It may also lower the target\'s Attack stat.'),
	(5, 'Barrage', 'Normal', 'Physical', 15, 85, 20, 'Round objects are hurled at the target to strike two to five times in a row.'),
	(6, 'Barrier', 'Psychic', 'Status', NULL, NULL, 20, 'The user throws up a sturdy wall that sharply raises its Defense stat.'),
	(7, 'Bide', 'Normal', 'Physical', NULL, 100, 10, 'The user endures attacks for two turns, then strikes back to cause double the damage taken.'),
	(8, 'Bind', 'Normal', 'Physical', 15, 85, 20, 'Things such as long bodies or tentacles are used to bind and squeeze the target for four to five turns.'),
	(9, 'Blizzard', 'Ice', 'Special', 110, 70, 5, 'A howling blizzard is summoned to strike opposing Pokémon. It may also freeze them solid.'),
	(10, 'Body Slam', 'Normal', 'Physical', 85, 100, 15, 'The user drops onto the target with its full body weight. It may also leave the target with paralysis.'),
	(11, 'Bone Club', 'Ground', 'Physical', 65, 85, 20, 'The user clubs the target with a bone. It may also make the target flinch.'),
	(12, 'Bonemerang', 'Ground', 'Physical', 50, 90, 10, 'The user throws the bone it holds. The bone loops to hit the target twice, coming and going.'),
	(13, 'Bubble', 'Water', 'Special', 40, 100, 30, 'A spray of countless bubbles is jetted at the opposing Pokémon. It may also lower their Speed stats.'),
	(14, 'Bubble Beam', 'Water', 'Special', 65, 100, 20, 'A spray of bubbles is forcefully ejected at the opposing Pokémon. It may also lower their Speed stats.'),
	(15, 'Clamp', 'Water', 'Physical', 35, 85, 15, 'The target is clamped and squeezed by the user\'s very thick and sturdy shell for four to five turns.'),
	(16, 'Comet Punch', 'Normal', 'Physical', 18, 85, 15, 'The target is hit with a flurry of punches that strike two to five times in a row.'),
	(17, 'Confuse Ray', 'Ghost', 'Status', NULL, 100, 10, 'The target is exposed to a sinister ray that triggers confusion.'),
	(18, 'Confusion', 'Psychic', 'Special', 50, 100, 25, 'The target is hit by a weak telekinetic force. It may also leave the target confused.'),
	(19, 'Constrict', 'Normal', 'Physical', 10, 100, 35, 'The target is attacked with long, creeping tentacles, vines, or the like. This may also lower the target\'s Speed stat.'),
	(20, 'Counter', 'Fighting', 'Physical', NULL, 100, 20, 'A retaliation move that counters any physical attack, inflicting double the damage taken.'),
	(21, 'Crabhammer', 'Water', 'Physical', 100, 90, 10, 'The target is hammered with a large pincer. Critical hits land more easily.'),
	(22, 'Cut', 'Normal', 'Physical', 50, 95, 30, 'The target is cut with a scythe or a claw. It can also be used to cut down thin trees.'),
	(23, 'Defense Curl', 'Normal', 'Status', NULL, NULL, 40, 'The user curls up to conceal weak spots and raise its Defense stat.'),
	(24, 'Dig', 'Ground', 'Physical', 80, 100, 10, 'The user burrows, then attacks on the next turn.'),
	(25, 'Disable', 'Normal', 'Status', NULL, 100, 20, 'For four turns, this move prevents the target from using the move it last used.'),
	(26, 'Dizzy Punch', 'Normal', 'Physical', 70, 100, 10, 'The target is hit with rhythmically launched punches that may also leave it confused.'),
	(27, 'Double Kick', 'Fighting', 'Physical', 30, 100, 30, 'The target is quickly kicked twice in succession using both feet.'),
	(28, 'Double-Edge', 'Normal', 'Physical', 120, 100, 15, 'A reckless, life-risking tackle. It also damages the user by a fairly large amount, however.'),
	(29, 'Double Team', 'Normal', 'Status', NULL, NULL, 15, 'By moving rapidly, the user makes illusory copies of itself to raise its evasiveness.'),
	(30, 'DoubleSlap', 'Normal', 'Physical', 15, 85, 10, 'The target is slapped repeatedly, back and forth, two to five times in a row.'),
	(31, 'Dragon Rage', 'Dragon', 'Special', NULL, 100, 10, 'This attack hits the target with a shock wave of pure rage. This attack always inflicts 40 HP damage.'),
	(32, 'Dream Eater', 'Psychic', 'Special', 100, 100, 15, 'The user eats the dreams of a sleeping target. It absorbs half the damage caused to heal the user\'s HP.'),
	(33, 'Drill Peck', 'Flying', 'Physical', 80, 100, 20, 'A corkscrewing attack with the sharp beak acting as a drill.'),
	(34, 'Earthquake', 'Ground', 'Physical', 100, 100, 10, 'The user sets off an earthquake that strikes every Pokémon around it.'),
	(35, 'Egg Bomb', 'Normal', 'Physical', 100, 75, 10, 'A large egg is hurled at the target with maximum force to inflict damage.'),
	(36, 'Ember', 'Fire', 'Special', 40, 100, 25, 'The target is attacked with small flames. It may also leave the target with a burn.'),
	(37, 'Explosion', 'Normal', 'Physical', 250, 100, 5, 'The user explodes to inflict damage on all Pokémon in battle. The user faints upon using this move.'),
	(38, 'Fire Blast', 'Fire', 'Special', 110, 85, 5, 'The target is attacked with an intense blast of all-consuming fire. It may also leave the target with a burn.'),
	(39, 'Fire Punch', 'Fire', 'Physical', 75, 100, 15, 'The target is punched with a fiery fist. It may also leave the target with a burn.'),
	(40, 'Fire Spin', 'Fire', 'Special', 35, 85, 15, 'The target becomes trapped within a fierce vortex of fire that rages for four to five turns.'),
	(41, 'Fissure', 'Ground', 'Physical', NULL, 30, 5, 'The user opens up a fissure in the ground and drops the target in. The target instantly faints if it hits.'),
	(42, 'Flamethrower', 'Fire', 'Special', 90, 100, 15, 'The target is scorched with an intense blast of fire. It may also leave the target with a burn.'),
	(43, 'Flash', 'Normal', 'Status', NULL, 100, 20, 'The user flashes a bright light that cuts the target\'s accuracy. It can also be used to illuminate caves.'),
	(44, 'Fly', 'Flying', 'Physical', 90, 95, 15, 'The user soars and then strikes its target on the next turn.'),
	(45, 'Focus Energy', 'Normal', 'Status', NULL, NULL, 30, 'The user takes a deep breath and focuses so that critical hits land more easily.'),
	(46, 'Fury Attack', 'Normal', 'Physical', 15, 85, 20, 'The target is jabbed repeatedly with a horn or beak two to five times in a row.'),
	(47, 'Fury Swipes', 'Normal', 'Physical', 18, 80, 15, 'The target is raked with sharp claws or scythes for two to five times in quick succession.'),
	(48, 'Glare', 'Normal', 'Status', NULL, 100, 30, 'The user intimidates the target with the pattern on its belly to cause paralysis.'),
	(49, 'Growl', 'Normal', 'Status', NULL, 100, 40, 'The user growls in an endearing way, making the opposing team less wary and lowering their Defense stats.'),
	(50, 'Growth', 'Normal', 'Status', NULL, NULL, 20, 'The user\'s body grows all at once, raising the Attack and Sp. Atk stats.'),
	(51, 'Guillotine', 'Normal', 'Physical', NULL, 30, 5, 'A vicious, tearing attack with big pincers. The target faints instantly if this attack hits.'),
	(52, 'Gust', 'Flying', 'Special', 40, 100, 35, 'A gust of wind is whipped up by wings and launched at the target to inflict damage.'),
	(53, 'Harden', 'Normal', 'Status', NULL, NULL, 30, 'The user stiffens all the muscles in its body to raise its Defense stat.'),
	(54, 'Haze', 'Ice', 'Status', NULL, NULL, 30, 'The user creates a haze that eliminates every stat change among all the Pokémon engaged in battle.'),
	(55, 'Headbutt', 'Normal', 'Physical', 70, 100, 15, 'The user sticks out its head and attacks by charging straight into the target. It may also make the target flinch.'),
	(56, 'High Jump Kick', 'Fighting', 'Physical', 130, 90, 10, 'The target is attacked with a knee kick from a jump. If it misses, the user is hurt instead.'),
	(57, 'Horn Attack', 'Normal', 'Physical', 65, 100, 25, 'The target is jabbed with a sharply pointed horn to inflict damage.'),
	(58, 'Horn Drill', 'Normal', 'Physical', NULL, 30, 5, 'The user stabs the target with a horn that rotates like a drill. If it hits, the target faints instantly.'),
	(59, 'Hydro Pump', 'Water', 'Special', 110, 80, 5, 'The target is blasted by a huge volume of water launched under great pressure.'),
	(60, 'Hyper Beam', 'Normal', 'Special', 150, 90, 5, 'The target is attacked with a powerful beam. The user can\'t move on the next turn.'),
	(61, 'Hyper Fang', 'Normal', 'Physical', 80, 90, 15, 'The user bites hard on the target with its sharp front fangs. It may also make the target flinch.'),
	(62, 'Hypnosis', 'Psychic', 'Status', NULL, 60, 20, 'The user employs hypnotic suggestion to make the target fall into a deep sleep.'),
	(63, 'Ice Beam', 'Ice', 'Special', 90, 100, 10, 'The target is struck with an icy-cold beam of energy. It may also freeze the target solid.'),
	(64, 'Ice Punch', 'Ice', 'Physical', 75, 100, 15, 'The target is punched with an icy fist. It may also leave the target frozen.'),
	(65, 'Jump Kick', 'Fighting', 'Physical', 100, 95, 10, 'The user jumps up high, then strikes with a kick. If the kick misses, the user hurts itself.'),
	(66, 'Karate Chop', 'Fighting', 'Physical', 50, 100, 25, 'The target is attacked with a sharp chop. It has a high critical-hit ratio.'),
	(67, 'Kinesis', 'Psychic', 'Status', NULL, 80, 15, 'The user distracts the target by bending a spoon. It lowers the target\'s accuracy.'),
	(68, 'Leech Life', 'Bug', 'Physical', 80, 100, 10, 'The user drains the target\'s blood. The user\'s HP is restored by half the damage taken by the target.'),
	(69, 'Leech Seed', 'Grass', 'Status', NULL, 90, 10, 'A seed is planted on the target. It steals some HP from the target every turn.'),
	(70, 'Leer', 'Normal', 'Status', NULL, 100, 30, 'The opposing team gains an intimidating leer with sharp eyes. The opposing team\'s Defense stats are reduced.'),
	(71, 'Lick', 'Ghost', 'Physical', 30, 100, 30, 'The target is licked with a long tongue, causing damage. It may also leave the target with paralysis.'),
	(72, 'Light Screen', 'Psychic', 'Status', NULL, NULL, 30, 'A wondrous wall of light is put up to suppress damage from special attacks for five turns.'),
	(73, 'Lovely Kiss', 'Normal', 'Status', NULL, 75, 10, 'With a scary face, the user tries to force a kiss on the target. If it succeeds, the target falls asleep.'),
	(74, 'Low Kick', 'Fighting', 'Physical', NULL, 100, 20, 'A powerful low kick that makes the target fall over. The heavier the target, the greater the move\'s power.'),
	(75, 'Meditate', 'Psychic', 'Status', NULL, NULL, 40, 'The user meditates to awaken the power deep within its body and raise its Attack stat.'),
	(76, 'Mega Drain', 'Grass', 'Special', 40, 100, 15, 'A nutrient-draining attack. The user\'s HP is restored by half the damage taken by the target.'),
	(77, 'Mega Kick', 'Normal', 'Physical', 120, 75, 5, 'The target is attacked by a kick launched with muscle-packed power.'),
	(78, 'Mega Punch', 'Normal', 'Physical', 80, 85, 20, 'The target is slugged by a punch thrown with muscle-packed power.'),
	(79, 'Metronome', 'Normal', 'Status', NULL, NULL, 10, 'The user waggles a finger and stimulates its brain into randomly using nearly any move.'),
	(80, 'Mimic', 'Normal', 'Status', NULL, NULL, 10, 'The user copies the target\'s last move. The move can be used during battle until the Pokémon is switched out.'),
	(81, 'Minimize', 'Normal', 'Status', NULL, NULL, 20, 'The user compresses its body to make itself look smaller, which sharply raises its evasiveness.'),
	(82, 'Mirror Move', 'Flying', 'Status', NULL, NULL, 20, 'The user counters the target by mimicking the target\'s last move.'),
	(83, 'Mist', 'Ice', 'Status', NULL, NULL, 30, 'The user cloaks its body with a white mist that prevents any of its stats from being cut for five turns.'),
	(84, 'Night Shade', 'Ghost', 'Special', NULL, 100, 15, 'The user makes the target see a frightening mirage. It inflicts damage matching the user\'s level.'),
	(85, 'Pay Day', 'Normal', 'Physical', 40, 100, 20, 'Numerous coins are hurled at the target to inflict damage. Money is earned after the battle.'),
	(86, 'Peck', 'Flying', 'Physical', 35, 100, 35, 'The target is jabbed with a sharply pointed beak or horn.'),
	(87, 'Petal Dance', 'Grass', 'Special', 120, 100, 10, 'The user attacks the target by scattering petals for two to three turns. The user then becomes confused.'),
	(88, 'Pin Missile', 'Bug', 'Physical', 25, 95, 20, 'Sharp spikes are shot at the target in rapid succession. They hit two to five times in a row.'),
	(89, 'Poison Gas', 'Poison', 'Status', NULL, 90, 40, 'A cloud of poison gas is sprayed in the face of opposing Pokémon, poisoning those hit.'),
	(90, 'Poison Sting', 'Poison', 'Physical', 15, 100, 35, 'The user stabs the target with a poisonous stinger. This may also poison the target.'),
	(91, 'Poisonpowder', 'Poison', 'Status', NULL, 75, 35, 'The user scatters a cloud of poisonous dust on the target. It may poison the target.'),
	(92, 'Pound', 'Normal', 'Physical', 40, 100, 35, 'The target is physically pounded with a long tail, a foreleg, or the like.'),
	(93, 'Psybeam', 'Psychic', 'Special', 65, 100, 20, 'The target is attacked with a peculiar ray. It may also cause confusion.'),
	(94, 'Psychic', 'Psychic', 'Special', 90, 100, 10, 'The target is hit by a strong telekinetic force. It may also reduce the target\'s Sp. Def stat.'),
	(95, 'Psywave', 'Psychic', 'Special', NULL, 100, 15, 'The target is attacked with an odd psychic wave. The attack varies in intensity.'),
	(96, 'Quick Attack', 'Normal', 'Physical', 40, 100, 30, 'The user lunges at the target at a speed that makes it almost invisible. This move always goes first.'),
	(97, 'Rage', 'Normal', 'Physical', 20, 100, 20, 'As long as this move is in use, the power of rage raises the Attack stat each time the user is hit in battle.'),
	(98, 'Razor Leaf', 'Grass', 'Physical', 55, 95, 25, 'Sharp-edged leaves are launched to slash at the opposing Pokémon. Critical hits land more easily.'),
	(99, 'Razor Wind', 'Normal', 'Special', 80, 100, 10, 'A two-turn attack. Blades of wind hit opposing Pokémon on the second turn. Critical hits land more easily.'),
	(100, 'Recover', 'Normal', 'Status', NULL, NULL, 10, 'Restoring its own cells, the user restores its own HP by half of its max HP.'),
	(101, 'Reflect', 'Psychic', 'Status', NULL, NULL, 20, 'A wondrous wall of light is put up to suppress damage from physical attacks for five turns.'),
	(102, 'Rest', 'Psychic', 'Status', NULL, NULL, 10, 'The user goes to sleep for two turns. It fully restores the user\'s HP and heals any status problem.'),
	(103, 'Roar', 'Normal', 'Status', NULL, 100, 20, 'The target is scared off and replaced by another Pokémon in its party. In the wild, the battle ends.'),
	(104, 'Rock Slide', 'Rock', 'Physical', 75, 90, 10, 'Large boulders are hurled at the opposing Pokémon to inflict damage. It may also make the targets flinch.'),
	(105, 'Rock Throw', 'Rock', 'Physical', 50, 90, 15, 'The user picks up and throws a small rock at the target to attack.'),
	(106, 'Rolling Kick', 'Fighting', 'Physical', 60, 85, 15, 'The user lashes out with a quick, spinning kick. It may also make the target flinch.'),
	(107, 'Sand-Attack', 'Ground', 'Status', NULL, 100, 15, 'Sand is hurled in the target\'s face, reducing the target\'s accuracy.'),
	(108, 'Scratch', 'Normal', 'Physical', 40, 100, 35, 'Hard, pointed, and sharp claws rake the target to inflict damage.'),
	(109, 'Screech', 'Normal', 'Status', NULL, 85, 40, 'An earsplitting screech harshly lowers the target\'s Defense stat.'),
	(110, 'Seismic Toss', 'Fighting', 'Physical', NULL, 100, 20, 'The target is thrown using the power of gravity. It inflicts damage equal to the user\'s level.'),
	(111, 'Self-Destruct', 'Normal', 'Physical', 200, 100, 5, 'The user attacks everything around it by causing an explosion. The user faints upon using this move.'),
	(112, 'Sharpen', 'Normal', 'Status', NULL, NULL, 30, 'The user makes its edges more jagged, which raises its Attack stat.'),
	(113, 'Sing', 'Normal', 'Status', NULL, 55, 15, 'A soothing lullaby is sung in a calming voice that puts the target into a deep slumber.'),
	(114, 'Skull Bash', 'Normal', 'Physical', 130, 100, 10, 'The user tucks in its head to raise its Defense stat on the first turn, then rams the target on the next turn.'),
	(115, 'Sky Attack', 'Flying', 'Physical', 140, 90, 5, 'A second-turn attack move where critical hits land more easily. This may also make the target flinch.'),
	(116, 'Slam', 'Normal', 'Physical', 80, 75, 20, 'The target is slammed with a long tail, vines, or the like to inflict damage.'),
	(117, 'Slash', 'Normal', 'Physical', 70, 100, 20, 'The target is attacked with a slash of claws or blades. Critical hits land more easily.'),
	(118, 'Sleep Powder', 'Grass', 'Status', NULL, 75, 15, 'The user scatters a big cloud of sleep-inducing dust around the target.'),
	(119, 'Sludge', 'Poison', 'Special', 65, 100, 20, 'Unsanitary sludge is hurled at the target. It may also poison the target.'),
	(120, 'Smog', 'Poison', 'Special', 30, 70, 20, 'The target is attacked with a discharge of filthy gases. It may also poison the target.'),
	(121, 'Smokescreen', 'Normal', 'Status', NULL, 100, 20, 'The user releases an obscuring cloud of smoke or ink. It reduces the target\'s accuracy.'),
	(122, 'Soft-Boiled', 'Normal', 'Status', NULL, NULL, 10, 'The user restores its own HP by up to half of its max HP. May also be used in the field to heal HP.'),
	(123, 'Solar Beam', 'Grass', 'Special', 120, 100, 10, 'A two-turn attack. The user gathers light, then blasts a bundled beam on the second turn.'),
	(124, 'Sonic Boom', 'Normal', 'Special', NULL, 90, 20, 'The target is hit with a destructive shock wave that always inflicts 20 HP damage.'),
	(125, 'Spike Cannon', 'Normal', 'Physical', 20, 100, 15, 'Sharp spikes are shot at the target in rapid succession. They hit two to five times in a row.'),
	(126, 'Splash', 'Normal', 'Status', NULL, NULL, 40, 'The user just flops and splashes around to no effect at all...'),
	(127, 'Spore', 'Grass', 'Status', NULL, 100, 15, 'The user scatters bursts of spores that induce sleep.'),
	(128, 'Stomp', 'Normal', 'Physical', 65, 100, 20, 'The target is stomped with a big foot. It may also make the target flinch.'),
	(129, 'Strength', 'Normal', 'Physical', 80, 100, 15, 'The target is slugged with a punch thrown at maximum power.'),
	(130, 'String Shot', 'Bug', 'Status', NULL, 95, 40, 'The opposing Pokémon are bound with silk blown from the user\'s mouth that harshly lowers the Speed stat.'),
	(131, 'Struggle', 'Normal', 'Physical', 50, NULL, NULL, 'An attack that is used in desperation only if the user has no PP. It also hurts the user slightly.'),
	(132, 'Stun Spore', 'Grass', 'Status', NULL, 75, 30, 'The user scatters a cloud of paralyzing powder. It may also leave the target with paralysis.'),
	(133, 'Submission', 'Fighting', 'Physical', 80, 80, 25, 'The user grabs the target and recklessly dives for the ground. It also hurts the user slightly.'),
	(134, 'Substitute', 'Normal', 'Status', NULL, NULL, 10, 'The user makes a copy of itself using some of its HP. The copy serves as the user\'s decoy.'),
	(135, 'Super Fang', 'Normal', 'Physical', NULL, 90, 10, 'The user chomps hard on the target with its sharp front fangs. It cuts the target\'s HP to half.'),
	(136, 'Supersonic', 'Normal', 'Status', NULL, 55, 20, 'The user generates odd sound waves from its body. It may confuse the target.'),
	(137, 'Surf', 'Water', 'Special', 90, 100, 15, 'The user attacks everything around it by swamping its surroundings with a giant wave.'),
	(138, 'Swift', 'Normal', 'Special', 60, NULL, 20, 'Star-shaped rays are shot at the opposing Pokémon. This attack never misses.'),
	(139, 'Swords Dance', 'Normal', 'Status', NULL, NULL, 20, 'A frenetic dance to uplift the fighting spirit. It sharply raises the user\'s Attack stat.'),
	(140, 'Tackle', 'Normal', 'Physical', 40, 100, 35, 'A physical attack in which the user charges and slams into the target with its whole body.'),
	(141, 'Tail Whip', 'Normal', 'Status', NULL, 100, 30, 'The user wags its tail cutely, making opposing Pokémon less wary and lowering their Defense stats.'),
	(142, 'Take Down', 'Normal', 'Physical', 90, 85, 20, 'A reckless, full-body charge attack for slamming into the target. It also damages the user a little.'),
	(143, 'Teleport', 'Psychic', 'Status', NULL, NULL, 20, 'The user disappears, then strikes the target on the next turn. This move hits even if the target protects itself.'),
	(144, 'Thrash', 'Normal', 'Physical', 120, 100, 10, 'The user rampages and attacks for two to three turns. The user then becomes confused.'),
	(145, 'Thunder', 'Electric', 'Special', 110, 70, 10, 'A wicked thunderbolt is dropped on the target to inflict damage. It may also leave the target with paralysis.'),
	(146, 'Thunder Wave', 'Electric', 'Status', NULL, 90, 20, 'A weak electric charge is launched at the target. It causes paralysis if it hits.'),
	(147, 'Thunderbolt', 'Electric', 'Special', 90, 100, 15, 'A strong electric blast crashes down on the target. It may also leave the target with paralysis.'),
	(148, 'Thundershock', 'Electric', 'Special', 40, 100, 30, 'A jolt of electricity is hurled at the target to inflict damage. It may also leave the target with paralysis.'),
	(149, 'Toxic', 'Poison', 'Status', NULL, 90, 10, 'A move that leaves the target badly poisoned. Its poison damage worsens every turn.'),
	(150, 'Transform', 'Normal', 'Status', NULL, NULL, 10, 'The user transforms into a copy of the target right down to having the same move set.'),
	(151, 'Tri Attack', 'Normal', 'Special', 80, 100, 10, 'The user strikes with a simultaneous three-beam attack. May also burn, freeze, or paralyze the target.'),
	(152, 'Twineedle', 'Bug', 'Physical', 25, 100, 20, 'The user damages the target twice in succession by jabbing it with two spikes. It may also poison the target.'),
	(153, 'Vice Grip', 'Normal', 'Physical', 55, 100, 30, 'The target is gripped and squeezed from both sides to inflict damage.'),
	(154, 'Vine Whip', 'Grass', 'Physical', 45, 100, 25, 'The target is struck with slender, whiplike vines to inflict damage.'),
	(155, 'Water Gun', 'Water', 'Special', 40, 100, 25, 'The target is blasted with a forceful shot of water.'),
	(156, 'Waterfall', 'Water', 'Physical', 80, 100, 15, 'The user charges at the target and may make it flinch. It can also be used to climb a waterfall.'),
	(157, 'Whirlwind', 'Normal', 'Status', NULL, 100, 20, 'The target is blown away, and a different Pokémon is dragged out. In the wild, this ends a battle against a single Pokémon.'),
	(158, 'Wing Attack', 'Flying', 'Physical', 60, 100, 35, 'The target is struck with large, imposing wings spread wide to inflict damage.'),
	(159, 'Withdraw', 'Water', 'Status', NULL, NULL, 40, 'The user withdraws its body into its hard shell, raising its Defense stat.'),
	(160, 'Wrap', 'Normal', 'Physical', 15, 90, 20, 'A long body or vines are used to wrap and squeeze the target for four to five turns.'),
	(161, 'Zap Cannon', 'Electric', 'Special', 120, 50, 5, 'The user fires an electric blast like a cannon to inflict damage and cause paralysis.');

-- Dumping structure for table pokemon_league_project.pokemons
CREATE TABLE IF NOT EXISTS `pokemons` (
  `ID_Pokemon` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Type1` varchar(50) DEFAULT NULL,
  `Type2` varchar(50) DEFAULT NULL,
  `Species` varchar(255) DEFAULT NULL,
  `Generation` int(11) DEFAULT NULL,
  `Attack` int(11) DEFAULT NULL,
  `Defense` int(11) DEFAULT NULL,
  `HP` int(11) DEFAULT NULL,
  `Speed` int(11) DEFAULT NULL,
  `Ability` varchar(255) DEFAULT NULL,
  `Hidden_Ability` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_Pokemon`),
  KEY `idx_pokemon_name` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table pokemon_league_project.pokemons: ~151 rows (approximately)
INSERT INTO `pokemons` (`ID_Pokemon`, `Name`, `Type1`, `Type2`, `Species`, `Generation`, `Attack`, `Defense`, `HP`, `Speed`, `Ability`, `Hidden_Ability`) VALUES
	(1, 'Bulbasaur', 'Grass', 'Poison', 'Seed', 1, 49, 49, 45, 45, 'Overgrow', 'Chlorophyll'),
	(2, 'Ivysaur', 'Grass', 'Poison', 'Seed', 1, 62, 63, 60, 60, 'Overgrow', 'Chlorophyll'),
	(3, 'Venusaur', 'Grass', 'Poison', 'Seed', 1, 82, 83, 80, 80, 'Overgrow', 'Chlorophyll'),
	(4, 'Charmander', 'Fire', NULL, 'Lizard', 1, 52, 43, 39, 65, 'Blaze', 'Solar Power'),
	(5, 'Charmeleon', 'Fire', NULL, 'Flame', 1, 64, 58, 58, 80, 'Blaze', 'Solar Power'),
	(6, 'Charizard', 'Fire', 'Flying', 'Flame', 1, 84, 78, 78, 100, 'Blaze', 'Solar Power'),
	(7, 'Squirtle', 'Water', NULL, 'Tiny Turtle', 1, 48, 65, 44, 43, 'Torrent', 'Rain Dish'),
	(8, 'Wartortle', 'Water', NULL, 'Turtle', 1, 63, 80, 59, 58, 'Torrent', 'Rain Dish'),
	(9, 'Blastoise', 'Water', NULL, 'Shellfish', 1, 83, 100, 79, 78, 'Torrent', 'Rain Dish'),
	(10, 'Caterpie', 'Bug', NULL, 'Worm', 1, 30, 35, 45, 45, 'Shield Dust', 'Run Away'),
	(11, 'Metapod', 'Bug', NULL, 'Cocoon', 1, 20, 55, 50, 30, 'Shed Skin', NULL),
	(12, 'Butterfree', 'Bug', 'Flying', 'Butterfly', 1, 45, 50, 60, 70, 'Compound Eyes', 'Tinted Lens'),
	(13, 'Weedle', 'Bug', 'Poison', 'Hairy Bug', 1, 35, 30, 40, 50, 'Shield Dust', 'Swarm'),
	(14, 'Kakuna', 'Bug', 'Poison', 'Cocoon', 1, 25, 50, 45, 35, 'Shed Skin', NULL),
	(15, 'Beedrill', 'Bug', 'Poison', 'Poison Bee', 1, 90, 40, 65, 75, 'Swarm', 'Sniper'),
	(16, 'Pidgey', 'Normal', 'Flying', 'Tiny Bird', 1, 45, 40, 40, 56, 'Keen Eye', 'Tangled Feet'),
	(17, 'Pidgeotto', 'Normal', 'Flying', 'Bird', 1, 60, 55, 63, 71, 'Keen Eye', 'Tangled Feet'),
	(18, 'Pidgeot', 'Normal', 'Flying', 'Bird', 1, 80, 75, 83, 91, 'Keen Eye', 'Tangled Feet'),
	(19, 'Rattata', 'Normal', NULL, 'Mouse', 1, 56, 35, 30, 72, 'Run Away', 'Guts'),
	(20, 'Raticate', 'Normal', NULL, 'Mouse', 1, 81, 60, 55, 97, 'Run Away', 'Guts'),
	(21, 'Spearow', 'Normal', 'Flying', 'Tiny Bird', 1, 60, 30, 40, 70, 'Keen Eye', 'Sniper'),
	(22, 'Fearow', 'Normal', 'Flying', 'Beak', 1, 90, 65, 65, 100, 'Keen Eye', 'Sniper'),
	(23, 'Ekans', 'Poison', NULL, 'Snake', 1, 60, 44, 35, 55, 'Intimidate', 'Shed Skin'),
	(24, 'Arbok', 'Poison', NULL, 'Cobra', 1, 85, 69, 60, 80, 'Intimidate', 'Shed Skin'),
	(25, 'Pikachu', 'Electric', NULL, 'Mouse', 1, 55, 40, 35, 90, 'Static', 'Lightning Rod'),
	(26, 'Raichu', 'Electric', NULL, 'Mouse', 1, 90, 55, 60, 110, 'Static', 'Lightning Rod'),
	(27, 'Sandshrew', 'Ground', NULL, 'Mouse', 1, 75, 85, 50, 40, 'Sand Veil', 'Sand Rush'),
	(28, 'Sandslash', 'Ground', NULL, 'Mouse', 1, 100, 110, 75, 65, 'Sand Veil', 'Sand Rush'),
	(29, 'Nidoran M', 'Poison', NULL, 'Poison Pin', 1, 47, 52, 55, 41, 'Poison Point', 'Rivalry'),
	(30, 'Nidorina', 'Poison', NULL, 'Poison Pin', 1, 62, 67, 70, 56, 'Poison Point', 'Rivalry'),
	(31, 'Nidoqueen', 'Poison', 'Ground', 'Drill', 1, 92, 87, 90, 76, 'Poison Point', 'Rivalry'),
	(32, 'Nidoran F', 'Poison', NULL, 'Poison Pin', 1, 57, 40, 46, 50, 'Poison Point', 'Rivalry'),
	(33, 'Nidorino', 'Poison', NULL, 'Poison Pin', 1, 72, 57, 61, 65, 'Poison Point', 'Rivalry'),
	(34, 'Nidoking', 'Poison', 'Ground', 'Drill', 1, 102, 77, 81, 85, 'Poison Point', 'Rivalry'),
	(35, 'Clefairy', 'Fairy', NULL, 'Fairy', 1, 45, 48, 70, 35, 'Cute Charm', 'Magic Guard'),
	(36, 'Clefable', 'Fairy', NULL, 'Fairy', 1, 70, 73, 95, 60, 'Cute Charm', 'Magic Guard'),
	(37, 'Vulpix', 'Fire', NULL, 'Fox', 1, 41, 40, 38, 65, 'Flash Fire', 'Drought'),
	(38, 'Ninetales', 'Fire', NULL, 'Fox', 1, 76, 75, 73, 100, 'Flash Fire', 'Drought'),
	(39, 'Jigglypuff', 'Normal', 'Fairy', 'Balloon', 1, 45, 20, 115, 20, 'Cute Charm', 'Friend Guard'),
	(40, 'Wigglytuff', 'Normal', 'Fairy', 'Balloon', 1, 70, 45, 140, 45, 'Cute Charm', 'Frisk'),
	(41, 'Zubat', 'Poison', 'Flying', 'Bat', 1, 45, 35, 40, 55, 'Inner Focus', 'Infiltrator'),
	(42, 'Golbat', 'Poison', 'Flying', 'Bat', 1, 80, 70, 75, 90, 'Inner Focus', 'Infiltrator'),
	(43, 'Oddish', 'Grass', 'Poison', 'Weed', 1, 50, 55, 45, 30, 'Chlorophyll', 'Run Away'),
	(44, 'Gloom', 'Grass', 'Poison', 'Weed', 1, 65, 70, 60, 40, 'Chlorophyll', 'Stench'),
	(45, 'Vileplume', 'Grass', 'Poison', 'Flower', 1, 80, 85, 75, 50, 'Chlorophyll', 'Effect Spore'),
	(46, 'Paras', 'Bug', 'Grass', 'Mushroom', 1, 70, 55, 35, 25, 'Effect Spore', 'Dry Skin'),
	(47, 'Parasect', 'Bug', 'Grass', 'Mushroom', 1, 95, 80, 60, 30, 'Effect Spore', 'Dry Skin'),
	(48, 'Venonat', 'Bug', 'Poison', 'Insect', 1, 55, 50, 60, 45, 'Compound Eyes', 'Tinted Lens'),
	(49, 'Venomoth', 'Bug', 'Poison', 'Poison Moth', 1, 65, 60, 70, 90, 'Shield Dust', 'Tinted Lens'),
	(50, 'Diglett', 'Ground', NULL, 'Mole', 1, 55, 25, 10, 95, 'Sand Veil', 'Arena Trap'),
	(51, 'Dugtrio', 'Ground', NULL, 'Mole', 1, 80, 50, 35, 120, 'Sand Veil', 'Arena Trap'),
	(52, 'Meowth', 'Normal', NULL, 'Scratch Cat', 1, 45, 35, 40, 90, 'Pickup', 'Technician'),
	(53, 'Persian', 'Normal', NULL, 'Classy Cat', 1, 70, 60, 65, 115, 'Limber', 'Technician'),
	(54, 'Psyduck', 'Water', NULL, 'Duck', 1, 52, 48, 50, 55, 'Damp', 'Cloud Nine'),
	(55, 'Golduck', 'Water', NULL, 'Duck', 1, 82, 78, 80, 85, 'Damp', 'Cloud Nine'),
	(56, 'Mankey', 'Fighting', NULL, 'Pig Monkey', 1, 80, 35, 40, 70, 'Vital Spirit', 'Anger Point'),
	(57, 'Primeape', 'Fighting', NULL, 'Pig Monkey', 1, 105, 60, 65, 95, 'Vital Spirit', 'Anger Point'),
	(58, 'Growlithe', 'Fire', NULL, 'Puppy', 1, 70, 45, 55, 60, 'Intimidate', 'Flash Fire'),
	(59, 'Arcanine', 'Fire', NULL, 'Legendary', 1, 110, 80, 90, 95, 'Intimidate', 'Flash Fire'),
	(60, 'Poliwag', 'Water', NULL, 'Tadpole', 1, 50, 40, 40, 90, 'Water Absorb', 'Damp'),
	(61, 'Poliwhirl', 'Water', NULL, 'Tadpole', 1, 65, 65, 65, 90, 'Water Absorb', 'Damp'),
	(62, 'Poliwrath', 'Water', 'Fighting', 'Tadpole', 1, 95, 95, 90, 70, 'Water Absorb', 'Damp'),
	(63, 'Abra', 'Psychic', NULL, 'Psi', 1, 20, 15, 25, 90, 'Synchronize', 'Inner Focus'),
	(64, 'Kadabra', 'Psychic', NULL, 'Psi', 1, 35, 30, 40, 105, 'Synchronize', 'Inner Focus'),
	(65, 'Alakazam', 'Psychic', NULL, 'Psi', 1, 50, 45, 55, 120, 'Synchronize', 'Inner Focus'),
	(66, 'Machop', 'Fighting', NULL, 'Superpower', 1, 80, 50, 70, 35, 'Guts', 'Steadfast'),
	(67, 'Machoke', 'Fighting', NULL, 'Superpower', 1, 100, 70, 80, 45, 'Guts', 'Steadfast'),
	(68, 'Machamp', 'Fighting', NULL, 'Superpower', 1, 130, 80, 90, 55, 'Guts', 'No Guard'),
	(69, 'Bellsprout', 'Grass', 'Poison', 'Flower', 1, 75, 35, 50, 40, 'Chlorophyll', 'Gluttony'),
	(70, 'Weepinbell', 'Grass', 'Poison', 'Flycatcher', 1, 90, 50, 65, 55, 'Chlorophyll', 'Gluttony'),
	(71, 'Victreebel', 'Grass', 'Poison', 'Flycatcher', 1, 105, 65, 80, 70, 'Chlorophyll', 'Gluttony'),
	(72, 'Tentacool', 'Water', 'Poison', 'Jellyfish', 1, 40, 35, 40, 70, 'Clear Body', 'Liquid Ooze'),
	(73, 'Tentacruel', 'Water', 'Poison', 'Jellyfish', 1, 70, 65, 80, 100, 'Clear Body', 'Liquid Ooze'),
	(74, 'Geodude', 'Rock', 'Ground', 'Rock', 1, 80, 100, 40, 20, 'Rock Head', 'Sturdy'),
	(75, 'Graveler', 'Rock', 'Ground', 'Rock', 1, 95, 115, 55, 35, 'Rock Head', 'Sturdy'),
	(76, 'Golem', 'Rock', 'Ground', 'Megaton', 1, 120, 130, 80, 45, 'Rock Head', 'Sturdy'),
	(77, 'Ponyta', 'Fire', NULL, 'Fire Horse', 1, 85, 55, 50, 90, 'Run Away', 'Flash Fire'),
	(78, 'Rapidash', 'Fire', NULL, 'Fire Horse', 1, 105, 70, 60, 105, 'Run Away', 'Flash Fire'),
	(79, 'Slowpoke', 'Water', 'Psychic', 'Dopey', 1, 90, 65, 65, 15, 'Oblivious', 'Own Tempo'),
	(80, 'Slowbro', 'Water', 'Psychic', 'Hermit Crab', 1, 95, 75, 110, 30, 'Oblivious', 'Own Tempo'),
	(81, 'Magnemite', 'Electric', 'Steel', 'Magnet', 1, 25, 35, 70, 45, 'Magnet Pull', 'Sturdy'),
	(82, 'Magneton', 'Electric', 'Steel', 'Magnet', 1, 50, 60, 95, 70, 'Magnet Pull', 'Sturdy'),
	(83, 'Farfetchd', 'Normal', 'Flying', 'Wild Duck', 1, 52, 65, 55, 60, 'Keen Eye', 'Inner Focus'),
	(84, 'Doduo', 'Normal', 'Flying', 'Twin Bird', 1, 35, 85, 45, 75, 'Run Away', 'Early Bird'),
	(85, 'Dodrio', 'Normal', 'Flying', 'Triple Bird', 1, 60, 110, 70, 100, 'Run Away', 'Early Bird'),
	(86, 'Seel', 'Water', NULL, 'Sea Lion', 1, 65, 45, 55, 45, 'Thick Fat', 'Hydration'),
	(87, 'Dewgong', 'Water', 'Ice', 'Sea Lion', 1, 90, 70, 80, 70, 'Thick Fat', 'Hydration'),
	(88, 'Grimer', 'Poison', NULL, 'Sludge', 1, 80, 80, 50, 25, 'Stench', 'Sticky Hold'),
	(89, 'Muk', 'Poison', NULL, 'Sludge', 1, 105, 105, 75, 50, 'Stench', 'Sticky Hold'),
	(90, 'Shellder', 'Water', NULL, 'Bivalve', 1, 30, 65, 100, 40, 'Shell Armor', 'Skill Link'),
	(91, 'Cloyster', 'Water', 'Ice', 'Bivalve', 1, 50, 95, 180, 70, 'Shell Armor', 'Skill Link'),
	(92, 'Gastly', 'Ghost', 'Poison', 'Gas', 1, 30, 35, 30, 80, 'Levitate', NULL),
	(93, 'Haunter', 'Ghost', 'Poison', 'Gas', 1, 45, 50, 45, 95, 'Levitate', NULL),
	(94, 'Gengar', 'Ghost', 'Poison', 'Shadow', 1, 60, 65, 60, 110, 'Cursed Body', NULL),
	(95, 'Onix', 'Rock', 'Ground', 'Rock Snake', 1, 35, 45, 160, 70, 'Rock Head', 'Sturdy'),
	(96, 'Drowzee', 'Psychic', NULL, 'Hypnosis', 1, 60, 48, 45, 42, 'Insomnia', 'Forewarn'),
	(97, 'Hypno', 'Psychic', NULL, 'Hypnosis', 1, 85, 73, 70, 67, 'Insomnia', 'Forewarn'),
	(98, 'Krabby', 'Water', NULL, 'River Crab', 1, 30, 105, 90, 50, 'Hyper Cutter', 'Shell Armor'),
	(99, 'Kingler', 'Water', NULL, 'Pincer', 1, 55, 130, 115, 75, 'Hyper Cutter', 'Shell Armor'),
	(100, 'Voltorb', 'Electric', NULL, 'Ball', 1, 40, 30, 50, 100, 'Soundproof', 'Static'),
	(101, 'Electrode', 'Electric', NULL, 'Ball', 1, 60, 50, 70, 150, 'Soundproof', 'Static'),
	(102, 'Exeggcute', 'Grass', 'Psychic', 'Egg', 1, 60, 40, 80, 40, 'Chlorophyll', 'Harvest'),
	(103, 'Exeggutor', 'Grass', 'Psychic', 'Coconut', 1, 95, 95, 85, 55, 'Chlorophyll', 'Harvest'),
	(104, 'Cubone', 'Ground', NULL, 'Lonely', 1, 50, 50, 95, 35, 'Rock Head', 'Lightning Rod'),
	(105, 'Marowak', 'Ground', NULL, 'Bone Keeper', 1, 60, 80, 110, 45, 'Rock Head', 'Lightning Rod'),
	(106, 'Hitmonlee', 'Fighting', NULL, 'Kicking', 1, 50, 120, 53, 87, 'Limber', 'Reckless'),
	(107, 'Hitmonchan', 'Fighting', NULL, 'Punching', 1, 50, 105, 79, 76, 'Keen Eye', 'Iron Fist'),
	(108, 'Lickitung', 'Normal', NULL, 'Licking', 1, 90, 55, 75, 30, 'Own Tempo', 'Oblivious'),
	(109, 'Koffing', 'Poison', NULL, 'Poison Gas', 1, 40, 65, 95, 35, 'Levitate', NULL),
	(110, 'Weezing', 'Poison', NULL, 'Poison Gas', 1, 65, 90, 120, 60, 'Levitate', NULL),
	(111, 'Rhyhorn', 'Ground', 'Rock', 'Spikes', 1, 80, 85, 95, 25, 'Lightning Rod', 'Rock Head'),
	(112, 'Rhydon', 'Ground', 'Rock', 'Drill', 1, 105, 130, 120, 40, 'Lightning Rod', 'Rock Head'),
	(113, 'Chansey', 'Normal', NULL, 'Egg', 1, 250, 5, 5, 50, 'Natural Cure', 'Serene Grace'),
	(114, 'Tangela', 'Grass', NULL, 'Vine', 1, 65, 55, 115, 60, 'Chlorophyll', 'Leaf Guard'),
	(115, 'Kangaskhan', 'Normal', NULL, 'Parent', 1, 105, 95, 80, 90, 'Early Bird', 'Scrappy'),
	(116, 'Horsea', 'Water', NULL, 'Dragon', 1, 30, 40, 70, 60, 'Swift Swim', 'Sniper'),
	(117, 'Seadra', 'Water', NULL, 'Dragon', 1, 55, 65, 95, 85, 'Poison Point', 'Sniper'),
	(118, 'Goldeen', 'Water', NULL, 'Goldfish', 1, 67, 60, 45, 63, 'Swift Swim', 'Water Veil'),
	(119, 'Seaking', 'Water', NULL, 'Goldfish', 1, 92, 65, 80, 68, 'Swift Swim', 'Water Veil'),
	(120, 'Staryu', 'Water', NULL, 'Star Shape', 1, 45, 55, 30, 85, 'Illuminate', 'Natural Cure'),
	(121, 'Starmie', 'Water', 'Psychic', 'Mysterious', 1, 75, 85, 60, 115, 'Illuminate', 'Natural Cure'),
	(122, 'MrMime', 'Psychic', 'Fairy', 'Barrier', 1, 45, 65, 40, 90, 'Soundproof', 'Filter'),
	(123, 'Scyther', 'Bug', 'Flying', 'Mantis', 1, 110, 80, 70, 105, 'Swarm', 'Technician'),
	(124, 'Jynx', 'Ice', 'Psychic', 'Human Shape', 1, 50, 35, 65, 95, 'Oblivious', 'Forewarn'),
	(125, 'Electabuzz', 'Electric', NULL, 'Electric', 1, 83, 57, 65, 105, 'Static', 'Vital Spirit'),
	(126, 'Magmar', 'Fire', NULL, 'Spitfire', 1, 95, 57, 65, 93, 'Flame Body', 'Vital Spirit'),
	(127, 'Pinsir', 'Bug', NULL, 'Stag Beetle', 1, 125, 100, 65, 85, 'Hyper Cutter', 'Mold Breaker'),
	(128, 'Tauros', 'Normal', NULL, 'Wild Bull', 1, 100, 95, 75, 110, 'Intimidate', 'Anger Point'),
	(129, 'Magikarp', 'Water', NULL, 'Fish', 1, 10, 55, 20, 80, 'Swift Swim', 'Rattled'),
	(130, 'Gyarados', 'Water', 'Flying', 'Atrocious', 1, 125, 79, 95, 81, 'Intimidate', 'Moxie'),
	(131, 'Lapras', 'Water', 'Ice', 'Transport', 1, 85, 80, 130, 60, 'Water Absorb', 'Shell Armor'),
	(132, 'Ditto', 'Normal', NULL, 'Transform', 1, 48, 48, 48, 48, 'Limber', 'Imposter'),
	(133, 'Eevee', 'Normal', NULL, 'Evolution', 1, 55, 50, 55, 55, 'Run Away', 'Adaptability'),
	(134, 'Vaporeon', 'Water', NULL, 'Bubble Jet', 1, 65, 60, 130, 65, 'Water Absorb', 'Hydration'),
	(135, 'Jolteon', 'Electric', NULL, 'Lightning', 1, 65, 60, 65, 130, 'Volt Absorb', 'Quick Feet'),
	(136, 'Flareon', 'Fire', NULL, 'Flame', 1, 130, 60, 65, 65, 'Flash Fire', 'Guts'),
	(137, 'Porygon', 'Normal', NULL, 'Virtual', 1, 60, 70, 65, 40, 'Trace', 'Download'),
	(138, 'Omanyte', 'Rock', 'Water', 'Spiral', 1, 40, 100, 35, 35, 'Swift Swim', 'Shell Armor'),
	(139, 'Omastar', 'Rock', 'Water', 'Spiral', 1, 60, 125, 70, 55, 'Swift Swim', 'Shell Armor'),
	(140, 'Kabuto', 'Rock', 'Water', 'Shellfish', 1, 80, 90, 30, 55, 'Swift Swim', 'Battle Armor'),
	(141, 'Kabutops', 'Rock', 'Water', 'Shellfish', 1, 115, 105, 60, 80, 'Swift Swim', 'Battle Armor'),
	(142, 'Aerodactyl', 'Rock', 'Flying', 'Fossil', 1, 105, 65, 80, 130, 'Rock Head', 'Pressure'),
	(143, 'Snorlax', 'Normal', NULL, 'Sleeping', 1, 110, 65, 160, 30, 'Immunity', 'Thick Fat'),
	(144, 'Articuno', 'Ice', 'Flying', 'Freeze', 1, 85, 100, 90, 85, 'Pressure', NULL),
	(145, 'Zapdos', 'Electric', 'Flying', 'Electric', 1, 90, 85, 90, 100, 'Pressure', NULL),
	(146, 'Moltres', 'Fire', 'Flying', 'Flame', 1, 100, 90, 90, 90, 'Pressure', NULL),
	(147, 'Dratini', 'Dragon', NULL, 'Dragon', 1, 64, 45, 41, 50, 'Shed Skin', 'Marvel Scale'),
	(148, 'Dragonair', 'Dragon', NULL, 'Dragon', 1, 84, 65, 61, 70, 'Shed Skin', 'Marvel Scale'),
	(149, 'Dragonite', 'Dragon', 'Flying', 'Dragon', 1, 134, 95, 91, 80, 'Inner Focus', 'Multiscale'),
	(150, 'Mewtwo', 'Psychic', NULL, 'Genetic', 1, 110, 90, 106, 130, 'Pressure', NULL),
	(151, 'Mew', 'Psychic', NULL, 'New Species', 1, 100, 100, 100, 100, 'Synchronize', NULL);

-- Dumping structure for table pokemon_league_project.pokemons_moves
CREATE TABLE IF NOT EXISTS `pokemons_moves` (
  `ID_Pokemon_Moves` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Pokemon` int(11) DEFAULT NULL,
  `ID_Move` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Pokemon_Moves`),
  KEY `ID_Pokemon` (`ID_Pokemon`),
  KEY `ID_Move` (`ID_Move`),
  CONSTRAINT `pokemons_moves_ibfk_1` FOREIGN KEY (`ID_Pokemon`) REFERENCES `pokemons` (`ID_Pokemon`),
  CONSTRAINT `pokemons_moves_ibfk_2` FOREIGN KEY (`ID_Move`) REFERENCES `moves` (`ID_Move`)
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table pokemon_league_project.pokemons_moves: ~302 rows (approximately)
INSERT INTO `pokemons_moves` (`ID_Pokemon_Moves`, `ID_Pokemon`, `ID_Move`) VALUES
	(1, 1, 1),
	(2, 1, 3),
	(3, 2, 2),
	(4, 2, 4),
	(5, 3, 5),
	(6, 3, 7),
	(7, 4, 6),
	(8, 4, 8),
	(9, 5, 9),
	(10, 5, 11),
	(11, 6, 10),
	(12, 6, 12),
	(13, 7, 13),
	(14, 7, 15),
	(15, 8, 14),
	(16, 8, 16),
	(17, 9, 17),
	(18, 9, 19),
	(19, 10, 18),
	(20, 10, 20),
	(21, 11, 21),
	(22, 11, 23),
	(23, 12, 22),
	(24, 12, 24),
	(25, 13, 25),
	(26, 13, 27),
	(27, 14, 26),
	(28, 14, 28),
	(29, 15, 29),
	(30, 15, 31),
	(31, 16, 30),
	(32, 16, 32),
	(33, 17, 33),
	(34, 17, 35),
	(35, 18, 34),
	(36, 18, 36),
	(37, 19, 37),
	(38, 19, 39),
	(39, 20, 38),
	(40, 20, 40),
	(41, 21, 41),
	(42, 21, 43),
	(43, 22, 42),
	(44, 22, 44),
	(45, 23, 45),
	(46, 23, 47),
	(47, 24, 46),
	(48, 24, 48),
	(49, 25, 49),
	(50, 25, 51),
	(51, 26, 50),
	(52, 26, 52),
	(53, 27, 53),
	(54, 27, 55),
	(55, 28, 54),
	(56, 28, 56),
	(57, 29, 57),
	(58, 29, 59),
	(59, 30, 58),
	(60, 30, 60),
	(61, 31, 61),
	(62, 31, 63),
	(63, 32, 62),
	(64, 32, 64),
	(65, 33, 65),
	(66, 33, 67),
	(67, 34, 66),
	(68, 34, 68),
	(69, 35, 69),
	(70, 35, 71),
	(71, 36, 70),
	(72, 36, 72),
	(73, 37, 73),
	(74, 37, 75),
	(75, 38, 74),
	(76, 38, 76),
	(77, 39, 77),
	(78, 39, 79),
	(79, 40, 78),
	(80, 40, 80),
	(81, 41, 81),
	(82, 41, 83),
	(83, 42, 82),
	(84, 42, 84),
	(85, 43, 85),
	(86, 43, 87),
	(87, 44, 86),
	(88, 44, 88),
	(89, 45, 89),
	(90, 45, 91),
	(91, 46, 90),
	(92, 46, 92),
	(93, 47, 93),
	(94, 47, 95),
	(95, 48, 94),
	(96, 48, 96),
	(97, 49, 97),
	(98, 49, 99),
	(99, 50, 98),
	(100, 50, 100),
	(101, 51, 101),
	(102, 51, 103),
	(103, 52, 102),
	(104, 52, 104),
	(105, 53, 105),
	(106, 53, 107),
	(107, 54, 106),
	(108, 54, 108),
	(109, 55, 109),
	(110, 55, 111),
	(111, 56, 110),
	(112, 56, 112),
	(113, 57, 113),
	(114, 57, 115),
	(115, 58, 114),
	(116, 58, 116),
	(117, 59, 117),
	(118, 59, 119),
	(119, 60, 118),
	(120, 60, 120),
	(121, 61, 121),
	(122, 61, 123),
	(123, 62, 122),
	(124, 62, 124),
	(125, 63, 125),
	(126, 63, 127),
	(127, 64, 126),
	(128, 64, 128),
	(129, 65, 129),
	(130, 65, 131),
	(131, 66, 130),
	(132, 66, 132),
	(133, 67, 133),
	(134, 67, 135),
	(135, 68, 134),
	(136, 68, 136),
	(137, 69, 137),
	(138, 69, 139),
	(139, 70, 138),
	(140, 70, 140),
	(141, 71, 141),
	(142, 71, 143),
	(143, 72, 142),
	(144, 72, 144),
	(145, 73, 145),
	(146, 73, 147),
	(147, 74, 146),
	(148, 74, 148),
	(149, 75, 149),
	(150, 75, 151),
	(151, 76, 150),
	(152, 76, 152),
	(153, 77, 153),
	(154, 77, 155),
	(155, 78, 154),
	(156, 78, 156),
	(157, 79, 157),
	(158, 79, 159),
	(159, 80, 158),
	(160, 80, 160),
	(161, 81, 161),
	(162, 81, 3),
	(163, 82, 2),
	(164, 82, 4),
	(165, 83, 5),
	(166, 83, 7),
	(167, 84, 6),
	(168, 84, 8),
	(169, 85, 9),
	(170, 85, 11),
	(171, 86, 10),
	(172, 86, 12),
	(173, 87, 13),
	(174, 87, 15),
	(175, 88, 14),
	(176, 88, 16),
	(177, 89, 17),
	(178, 89, 19),
	(179, 90, 18),
	(180, 90, 20),
	(181, 91, 21),
	(182, 91, 23),
	(183, 92, 22),
	(184, 92, 24),
	(185, 93, 25),
	(186, 93, 27),
	(187, 94, 26),
	(188, 94, 28),
	(189, 95, 29),
	(190, 95, 31),
	(191, 96, 30),
	(192, 96, 32),
	(193, 97, 33),
	(194, 97, 35),
	(195, 98, 34),
	(196, 98, 36),
	(197, 99, 37),
	(198, 99, 39),
	(199, 100, 38),
	(200, 100, 40),
	(201, 101, 41),
	(202, 101, 43),
	(203, 102, 42),
	(204, 102, 44),
	(205, 103, 45),
	(206, 103, 47),
	(207, 104, 46),
	(208, 104, 48),
	(209, 105, 49),
	(210, 105, 51),
	(211, 106, 50),
	(212, 106, 52),
	(213, 107, 53),
	(214, 107, 55),
	(215, 108, 54),
	(216, 108, 56),
	(217, 109, 57),
	(218, 109, 59),
	(219, 110, 58),
	(220, 110, 60),
	(221, 111, 61),
	(222, 111, 63),
	(223, 112, 62),
	(224, 112, 64),
	(225, 113, 65),
	(226, 113, 67),
	(227, 114, 66),
	(228, 114, 68),
	(229, 115, 69),
	(230, 115, 71),
	(231, 116, 70),
	(232, 116, 72),
	(233, 117, 73),
	(234, 117, 75),
	(235, 118, 74),
	(236, 118, 76),
	(237, 119, 77),
	(238, 119, 79),
	(239, 120, 78),
	(240, 120, 80),
	(241, 121, 81),
	(242, 121, 83),
	(243, 122, 82),
	(244, 122, 84),
	(245, 123, 85),
	(246, 123, 87),
	(247, 124, 86),
	(248, 124, 88),
	(249, 125, 89),
	(250, 125, 91),
	(251, 126, 90),
	(252, 126, 92),
	(253, 127, 93),
	(254, 127, 95),
	(255, 128, 94),
	(256, 128, 96),
	(257, 129, 97),
	(258, 129, 99),
	(259, 130, 98),
	(260, 130, 100),
	(261, 131, 101),
	(262, 131, 103),
	(263, 132, 102),
	(264, 132, 104),
	(265, 133, 105),
	(266, 133, 107),
	(267, 134, 106),
	(268, 134, 108),
	(269, 135, 109),
	(270, 135, 111),
	(271, 136, 110),
	(272, 136, 112),
	(273, 137, 113),
	(274, 137, 115),
	(275, 138, 114),
	(276, 138, 116),
	(277, 139, 117),
	(278, 139, 119),
	(279, 140, 118),
	(280, 140, 120),
	(281, 141, 121),
	(282, 141, 123),
	(283, 142, 122),
	(284, 142, 124),
	(285, 143, 125),
	(286, 143, 127),
	(287, 144, 126),
	(288, 144, 128),
	(289, 145, 129),
	(290, 145, 131),
	(291, 146, 130),
	(292, 146, 132),
	(293, 147, 133),
	(294, 147, 135),
	(295, 148, 134),
	(296, 148, 136),
	(297, 149, 137),
	(298, 149, 139),
	(299, 150, 138),
	(300, 150, 140),
	(301, 151, 141),
	(302, 151, 143);

-- Dumping structure for table pokemon_league_project.trainers
CREATE TABLE IF NOT EXISTS `trainers` (
  `ID_Trainer` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_Trainer`),
  KEY `idx_trainer_name` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table pokemon_league_project.trainers: ~31 rows (approximately)
INSERT INTO `trainers` (`ID_Trainer`, `Name`, `City`) VALUES
	(1, 'Austin', 'New York'),
	(2, 'Luis', 'Los Angeles'),
	(3, 'Pedro', 'Miami'),
	(4, 'Jaume', 'Chicago'),
	(5, 'Sakura', 'Tokyo'),
	(6, 'Mateo', 'Barcelona'),
	(7, 'Jasmine', 'Sydney'),
	(8, 'Ravi', 'Mumbai'),
	(9, 'Olivia', 'London'),
	(10, 'Mohammed', 'Dubai'),
	(11, 'Sophie', 'Paris'),
	(12, 'Youssef', 'Cairo'),
	(13, 'Anastasia', 'Moscow'),
	(14, 'Diego', 'Rio de Janeiro'),
	(15, 'Chen', 'Shanghai'),
	(16, 'Alessia', 'Rome'),
	(17, 'Miguel', 'Mexico City'),
	(18, 'Isabella', 'Toronto'),
	(19, 'Javier', 'Madrid'),
	(20, 'Mila', 'Berlin'),
	(21, 'Yuki', 'Osaka'),
	(22, 'Alexei', 'St. Petersburg'),
	(23, 'Lei', 'Beijing'),
	(24, 'Freya', 'Stockholm'),
	(25, 'Hiroshi', 'Kyoto'),
	(26, 'Maria', 'São Paulo'),
	(27, 'Ibrahim', 'Istanbul'),
	(28, 'Elena', 'Athens'),
	(29, 'Sven', 'Copenhagen'),
	(30, 'Anna', 'Vienna'),
	(31, 'Sebastian', 'Buenos Aires'),
	(32, 'Winston', 'Boston'),
	(33, 'Brock', 'Pewter City');

-- Dumping structure for table pokemon_league_project.trainers_pokemons
CREATE TABLE IF NOT EXISTS `trainers_pokemons` (
  `ID_Pokemon_Trainers` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Trainers` int(11) DEFAULT NULL,
  `ID_Pokemon` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Pokemon_Trainers`),
  KEY `ID_Pokemon` (`ID_Pokemon`),
  KEY `ID_Trainers` (`ID_Trainers`),
  CONSTRAINT `trainers_pokemons_ibfk_1` FOREIGN KEY (`ID_Pokemon`) REFERENCES `pokemons` (`ID_Pokemon`),
  CONSTRAINT `trainers_pokemons_ibfk_2` FOREIGN KEY (`ID_Trainers`) REFERENCES `trainers` (`ID_Trainer`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table pokemon_league_project.trainers_pokemons: ~198 rows (approximately)
INSERT INTO `trainers_pokemons` (`ID_Pokemon_Trainers`, `ID_Trainers`, `ID_Pokemon`) VALUES
	(1, 1, 1),
	(2, 1, 4),
	(3, 1, 7),
	(4, 1, 25),
	(5, 1, 38),
	(6, 1, 47),
	(7, 2, 2),
	(8, 2, 5),
	(9, 2, 8),
	(10, 2, 26),
	(11, 2, 41),
	(12, 2, 58),
	(13, 3, 3),
	(14, 3, 6),
	(15, 3, 9),
	(16, 3, 19),
	(17, 3, 49),
	(18, 3, 64),
	(19, 4, 10),
	(20, 4, 13),
	(21, 4, 16),
	(22, 4, 23),
	(23, 4, 29),
	(24, 4, 41),
	(25, 5, 11),
	(26, 5, 14),
	(27, 5, 17),
	(28, 5, 20),
	(29, 5, 24),
	(30, 5, 30),
	(31, 6, 12),
	(32, 6, 15),
	(33, 6, 18),
	(34, 6, 21),
	(35, 6, 27),
	(36, 6, 35),
	(37, 7, 28),
	(38, 7, 31),
	(39, 7, 33),
	(40, 7, 36),
	(41, 7, 39),
	(42, 7, 43),
	(43, 8, 32),
	(44, 8, 34),
	(45, 8, 37),
	(46, 8, 40),
	(47, 8, 42),
	(48, 8, 45),
	(49, 9, 44),
	(50, 9, 46),
	(51, 9, 48),
	(52, 9, 50),
	(53, 9, 51),
	(54, 9, 52),
	(55, 10, 53),
	(56, 10, 54),
	(57, 10, 55),
	(58, 10, 56),
	(59, 10, 57),
	(60, 10, 59),
	(61, 11, 60),
	(62, 11, 61),
	(63, 11, 62),
	(64, 11, 63),
	(65, 11, 65),
	(66, 11, 66),
	(67, 12, 67),
	(68, 12, 68),
	(69, 12, 69),
	(70, 12, 70),
	(71, 12, 71),
	(72, 12, 72),
	(73, 13, 73),
	(74, 13, 74),
	(75, 13, 75),
	(76, 13, 76),
	(77, 13, 77),
	(78, 13, 78),
	(79, 14, 79),
	(80, 14, 80),
	(81, 14, 81),
	(82, 14, 82),
	(83, 14, 83),
	(84, 14, 84),
	(85, 15, 85),
	(86, 15, 86),
	(87, 15, 87),
	(88, 15, 88),
	(89, 15, 89),
	(90, 15, 90),
	(91, 16, 91),
	(92, 16, 92),
	(93, 16, 93),
	(94, 16, 94),
	(95, 16, 95),
	(96, 16, 96),
	(97, 17, 97),
	(98, 17, 98),
	(99, 17, 99),
	(100, 17, 100),
	(101, 17, 101),
	(102, 17, 102),
	(103, 18, 103),
	(104, 18, 104),
	(105, 18, 105),
	(106, 18, 106),
	(107, 18, 107),
	(108, 18, 108),
	(109, 19, 109),
	(110, 19, 110),
	(111, 19, 111),
	(112, 19, 112),
	(113, 19, 113),
	(114, 19, 114),
	(115, 20, 115),
	(116, 20, 116),
	(117, 20, 117),
	(118, 20, 118),
	(119, 20, 119),
	(120, 20, 120),
	(121, 21, 121),
	(122, 21, 122),
	(123, 21, 123),
	(124, 21, 124),
	(125, 21, 125),
	(126, 21, 126),
	(127, 22, 127),
	(128, 22, 128),
	(129, 22, 129),
	(130, 22, 130),
	(131, 22, 131),
	(132, 22, 132),
	(133, 23, 133),
	(134, 23, 134),
	(135, 23, 135),
	(136, 23, 136),
	(137, 23, 137),
	(138, 23, 138),
	(139, 24, 139),
	(140, 24, 140),
	(141, 24, 141),
	(142, 24, 142),
	(143, 24, 143),
	(144, 24, 144),
	(145, 25, 145),
	(146, 25, 146),
	(147, 25, 147),
	(148, 25, 148),
	(149, 25, 149),
	(150, 25, 150),
	(151, 26, 151),
	(152, 26, 52),
	(153, 26, 53),
	(154, 26, 54),
	(155, 26, 55),
	(156, 26, 56),
	(157, 26, 57),
	(158, 26, 58),
	(159, 26, 59),
	(160, 26, 60),
	(161, 26, 61),
	(162, 26, 62),
	(163, 27, 63),
	(164, 27, 64),
	(165, 27, 65),
	(166, 27, 66),
	(167, 27, 67),
	(168, 27, 68),
	(169, 28, 69),
	(170, 28, 70),
	(171, 28, 71),
	(172, 28, 72),
	(173, 28, 73),
	(174, 28, 74),
	(175, 29, 75),
	(176, 29, 76),
	(177, 29, 77),
	(178, 29, 78),
	(179, 29, 79),
	(180, 29, 80),
	(181, 30, 81),
	(182, 30, 82),
	(183, 30, 83),
	(184, 30, 84),
	(185, 30, 85),
	(186, 30, 86),
	(187, 31, 87),
	(188, 31, 88),
	(189, 31, 89),
	(190, 31, 90),
	(191, 31, 91),
	(192, 31, 92),
	(199, 32, 93),
	(200, 32, 94),
	(201, 32, 95),
	(202, 32, 96),
	(203, 32, 97),
	(204, 32, 98);

-- Dumping structure for procedure pokemon_league_project.UpdateMove
DELIMITER //
CREATE PROCEDURE `UpdateMove`(
    IN p_id INT,
    IN p_name VARCHAR(255),
    IN p_type VARCHAR(50),
    IN p_category VARCHAR(50),
    IN p_power INT,
    IN p_accuracy INT,
    IN p_pp INT,
    IN p_description TEXT
)
BEGIN
    UPDATE Moves
    SET Name = p_name, Type = p_type, Category = p_category, Power = p_power,
        Accuracy = p_accuracy, PP = p_pp, Description = p_description
    WHERE ID_Move = p_id;
END//
DELIMITER ;

-- Dumping structure for procedure pokemon_league_project.UpdatePokemon
DELIMITER //
CREATE PROCEDURE `UpdatePokemon`(
    IN p_id INT,
    IN p_name VARCHAR(255),
    IN p_type1 VARCHAR(50),
    IN p_type2 VARCHAR(50),
    IN p_species VARCHAR(255),
    IN p_generation INT,
    IN p_attack INT,
    IN p_defense INT,
    IN p_hp INT,
    IN p_speed INT,
    IN p_ability VARCHAR(255),
    IN p_hidden_ability VARCHAR(255)
)
BEGIN
    UPDATE Pokemons
    SET Name = p_name,
        Type1 = p_type1,
        Type2 = p_type2,
        Species = p_species,
        Generation = p_generation,
        Attack = p_attack,
        Defense = p_defense,
        HP = p_hp,
        Speed = p_speed,
        Ability = p_ability,
        Hidden_Ability = p_hidden_ability
    WHERE ID_Pokemon = p_id;
END//
DELIMITER ;

-- Dumping structure for procedure pokemon_league_project.UpdateTrainer
DELIMITER //
CREATE PROCEDURE `UpdateTrainer`(
    IN p_id INT,
    IN p_name VARCHAR(255),
    IN p_city VARCHAR(255)
)
BEGIN
    UPDATE Trainers SET Name = p_name, City = p_city WHERE ID_Trainer = p_id;
END//
DELIMITER ;

-- Dumping structure for trigger pokemon_league_project.Trigger_Before_Add_Pokemon
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER Trigger_Before_Add_Pokemon
BEFORE INSERT ON Pokemons
FOR EACH ROW
BEGIN
    -- Check if the Pokémon name is not empty
    IF NEW.Name = '' OR NEW.Name IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Pokemon name cannot be empty';
    END IF;

    -- Check if attack, defense, HP, and speed values are within a valid range
    IF NEW.Attack < 0 OR NEW.Attack > 255 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid Attack value';
    END IF;

    IF NEW.Defense < 0 OR NEW.Defense > 255 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid Defense value';
    END IF;

    IF NEW.HP < 0 OR NEW.HP > 255 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid HP value';
    END IF;

    IF NEW.Speed < 0 OR NEW.Speed > 255 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid Speed value';
    END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger pokemon_league_project.Trigger_Before_Add_Trainer
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER Trigger_Before_Add_Trainer
BEFORE INSERT ON Trainers
FOR EACH ROW
BEGIN
    -- Check if the trainer name is not empty
    IF NEW.Name = '' OR NEW.Name IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Trainer name cannot be empty';
    END IF;

    -- Check if the city name is not empty
    IF NEW.City = '' OR NEW.City IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Trainer name cannot be empty';
    END IF;

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
