-- Act 1 Crear BBDD
CREATE SCHEMA minipremiereleague;

-- Act 2 Crear tabla teams
CREATE TABLE
IF NOT EXISTS Teams
(
    tid INT AUTO_INCREMENT PRIMARY KEY,
    tname VARCHAR
(255) NOT NULL UNIQUE,
    tyear INT CHECK
(tyear > 1875)
);

-- Act 3 Crear tabla matches
CREATE TABLE
IF NOT EXISTS Matches
(
    mid INT AUTO_INCREMENT PRIMARY KEY,
    mtidhome INT,
    mtidaway INT,
    mgoalshome INT DEFAULT 0,
    mgoalsaway INT DEFAULT 0,
    mdate DATE NOT NULL,
    FOREIGN KEY
(mtidhome) REFERENCES Teams
(tid)
        ON
DELETE
SET NULL
ON
UPDATE CASCADE,
    FOREIGN KEY (mtidaway) REFERENCES Teams(tid)
ON
DELETE
SET NULL
ON
UPDATE CASCADE
);

-- Act 4 insertar datos en la tabla teams
INSERT INTO Teams
    (tid, tname, tyear)
VALUES
    (1, 'Arsenal', 1886),
    (2, 'Chelsea', 1905),
    (3, 'Liverpool', 1892),
    (4, 'Manchester City', 1880),
    (5, 'Manchester United', 1878),
    (6, 'Tottenham Hotspur', 1882);

-- Act 5 insertat datos en la tabla Matches
INSERT INTO Matches (mid, mtidhome, mtidaway, mgoalshome, mgoalsaway, mdate)
VALUES
    (1, 2, 5, 0, 0, '2016-11-12'),
    (2, 3, 6, 2, 2, '2016-11-12'),
    (3, 4, 1, 1, 1, '2016-11-13'),
    (4, 1, 3, 3, 1, '2016-11-20'),
    (5, 5, 4, 2, 2, '2016-11-20'),
    (6, 6, 6, 3, 1, '2016-11-21'),
    (7, 2, 1, 1, 0, '2016-11-27'),
    (8, 3, 4, 1, 0, '2016-11-27'),
    (9, 6, 5, 2, 2, '2016-11-28'),
    (10, 1, 6, 3, 3, '2016-12-03'),
    (11, 3, 5, 2, 2, '2016-12-03'),
    (12, 4, 2, 1, 0, '2016-12-04'),
    (13, 2, 3, 1, 0, '2016-12-10'),
    (14, 5, 1, 0, 1, '2016-12-10'),
    (15, 6, 4, 1, 1, '2016-12-11'),
    (16, 5, 2, 1, 2, '2017-01-07'),
    (17, 6, 3, 2, 1, '2017-01-07'),
    (18, 1, 4, 1, 2, '2017-01-08'),
    (19, 3, 1, 0, 1, '2017-01-14'),
    (20, 4, 5, 1, 0, '2017-01-14'),
    (21, 2, 6, 0, 0, '2017-01-15'),
    (22, 1, 2, 0, 0, '2017-01-21'),
    (23, 4, 3, 5, 1, '2017-01-21'),
    (24, 5, 6, 1, 2, '2017-01-22'),
    (25, 6, 1, 2, 1, '2017-02-04'),
    (26, 5, 3, 3, 1, '2017-02-04'),
    (27, 2, 4, 3, 1, '2017-02-05'),
    (28, 3, 2, 2, 2, '2017-02-11'),
    (29, 1, 5, 1, 0, '2017-02-11'),
    (30, 4, 6, 1, 1, '2017-02-12'),
    (31, 5, 2, 0, 1, '2017-11-18'),
    (32, 4, 1, 0, 0, '2017-11-18'),
    (33, 3, 6, 0, 0, '2017-11-19'),
    (34, 6, 4, 6, 0, '2017-11-25'),
    (35, 2, 3, 3, 1, '2017-11-25'),
    (36, 1, 5, 1, 1, '2017-11-26'),
    (37, 5, 6, 1, 2, '2017-12-02'),
    (38, 4, 3, 3, 0, '2017-12-02'),
    (39, 1, 2, 2, 0, '2017-12-03'),
    (40, 6, 1, 1, 0, '2017-12-09'),
    (41, 4, 2, 1, 1, '2017-12-09'),
    (42, 3, 5, 3, 1, '2017-12-10'),
    (43, 5, 4, 2, 1, '2017-12-16'),
    (44, 2, 6, 1, 1, '2017-12-16'),
    (45, 1, 3, 0, 0, '2018-01-17'),
    (46, 2, 5, 2, 0, '2018-01-13'),
    (47, 1, 4, 1, 1, '2018-01-14'),
    (48, 6, 3, 1, 1, '2018-01-14'),
    (49, 4, 6, 2, 1, '2018-01-20'),
    (50, 3, 2, 3, 0, '2018-01-21'),
    (51, 5, 1, 1, 0, '2018-01-21'),
    (52, 6, 5, 1, 0, '2018-01-27'),
    (53, 3, 4, 3, 3, '2018-01-28'),
    (54, 2, 1, 1, 0, '2018-01-28'),
    (55, 1, 6, 0, 2, '2018-02-03'),
    (56, 2, 4, 1, 0, '2018-02-04'),
    (57, 5, 3, 2, 1, '2018-02-04'),
    (58, 4, 5, 3, 2, '2018-02-10'),
    (59, 6, 2, 2, 3, '2018-02-11'),
    (60, 3, 1, 1, 0, '2018-02-11');

-- Act 6 Select the number of matches per team at home and away.
SELECT
    Teams.tid AS team_id,
    Teams.tname AS team_name,
    SUM(CASE WHEN Matches.mtidhome = Teams.tid THEN 1 ELSE 0 END) AS home_matches,
    SUM(CASE WHEN Matches.mtidaway = Teams.tid THEN 1 ELSE 0 END) AS away_matches
FROM
    Teams
    LEFT JOIN
    Matches ON Teams.tid = Matches.mtidhome OR Teams.tid = Matches.mtidaway
GROUP BY
   Teams.tid;


SELECT teams.tname, COUNT(matches.mtidhome) AS mtidhome,
    (SELECT COUNT(matches.mtidaway)
    FROM matches
    WHERE Teams.tid = Matches.mtidaway) AS mtidaway
FROM teams
    JOIN matches ON teams.tid=matches.mtidhome
GROUP BY teams.tid;

-- Act 7
with
    mysubquery (tid, tname, Won, Drawn, Lost, GF, GA)
    as
    (
        select tid, tname,
            (
  (select count(*)
            from Matches
            where mtidhome=tid
                and mgoalshome>mgoalsaway
                and mdate between '20161101' and '20170301')
  +
  (select count(*)
            from Matches
            where mtidaway=tid
                and mgoalsaway>mgoalshome
                and mdate between '20161101' and '20170301')
  )
  as Won,

            -- SEPARADO

            (
  (select count(*)
            from Matches
            where mtidhome=tid
                and mgoalshome=mgoalsaway
                and mdate between '20161101' and '20170301')
  +
  (select count(*)
            from Matches
            where mtidaway=tid
                and mgoalsaway=mgoalshome
                and mdate between '20161101' and '20170301')
  )
  as Drawn,

            -- SEPARADO

            (
  (select count(*)
            from Matches
            where mtidhome=tid
                and mgoalshome<mgoalsaway
                and mdate between '20161101' and '20170301')
  +
  (select count(*)
            from Matches
            where mtidaway=tid
                and mgoalsaway<mgoalshome
                and mdate between '20161101' and '20170301')
  )
  as Lost,

            -- SEPARADO

            (
  (select sum(mgoalshome)
            from Matches
            where mtidhome=tid
                and mdate between '20161101' and '20170301')
  +
  (select sum(mgoalsaway)
            from Matches
            where mtidaway=tid
                and mdate between '20161101' and '20170301')
  )
  as GF,

            -- SEPARADO

            (
  (select sum(mgoalsaway)
            from Matches
            where mtidhome=tid
                and mdate between '20161101' and '20170301')
  +
  (select sum(mgoalshome)
            from Matches
            where mtidaway=tid
                and mdate between '20161101' and '20170301')
  )
  as GA


        from Teams
    )
select tname,
    3*Won+Drawn as Points,
    Won,
    Drawn,
    Lost,
    GF,
    GA,
    GF-GA as GD
from mysubquery;

-- Act 8
with
    mysubquery (tid, tname, Won, Drawn, Lost, GF, GA)
    as
    (
        select tid, tname,
            (
  (select count(*)
            from Matches
            where mtidhome=tid
                and mgoalshome>mgoalsaway
                and mdate between '20171101' and '20180301')
  +
  (select count(*)
            from Matches
            where mtidaway=tid
                and mgoalsaway>mgoalshome
                and mdate between '20171101' and '20180301')
  )
  as Won,
            (
  (select count(*)
            from Matches
            where mtidhome=tid
                and mgoalshome=mgoalsaway
                and mdate between '20171101' and '20180301')
  +
  (select count(*)
            from Matches
            where mtidaway=tid
                and mgoalsaway=mgoalshome
                and mdate between '20171101' and '20180301')
  )
  as Drawn,
            (
  (select count(*)
            from Matches
            where mtidhome=tid
                and mgoalshome<mgoalsaway
                and mdate between '20171101' and '20180301')
  +
  (select count(*)
            from Matches
            where mtidaway=tid
                and mgoalsaway<mgoalshome
                and mdate between '20171101' and '20180301')
  )
  as Lost,
            (
  (select sum(mgoalshome)
            from Matches
            where mtidhome=tid
                and mdate between '20171101' and '20180301')
  +
  (select sum(mgoalsaway)
            from Matches
            where mtidaway=tid
                and mdate between '20171101' and '20180301')
  )
  as GF,
            (
  (select sum(mgoalsaway)
            from Matches
            where mtidhome=tid
                and mdate between '20171101' and '20180301')
  +
  (select sum(mgoalshome)
            from Matches
            where mtidaway=tid
                and mdate between '20171101' and '20180301')
  )
  as GA
        from Teams
    )
select tname,
    3*Won+Drawn as Points,
    Won,
    Drawn,
    Lost,
    GF,
    GA,
    GF-GA as GD
from mysubquery;