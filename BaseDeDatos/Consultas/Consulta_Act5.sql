/* Create the schema for our tables */
create table Person(name text, age int, gender text);
create table Frequents(name text, pizzeria text);
create table Eats(name text, pizza text);
create table Serves(pizzeria text, pizza text, price decimal);

/* Populate the tables with our data */
insert into Person values('Amy', 16, 'female');
insert into Person values('Ben', 21, 'male');
insert into Person values('Cal', 33, 'male');
insert into Person values('Dan', 13, 'male');
insert into Person values('Eli', 45, 'male');
insert into Person values('Fay', 21, 'female');
insert into Person values('Gus', 24, 'male');
insert into Person values('Hil', 30, 'female');
insert into Person values('Ian', 18, 'male');

insert into Frequents values('Amy', 'Pizza Hut');
insert into Frequents values('Ben', 'Pizza Hut');
insert into Frequents values('Ben', 'Chicago Pizza');
insert into Frequents values('Cal', 'Straw Hat');
insert into Frequents values('Cal', 'New York Pizza');
insert into Frequents values('Dan', 'Straw Hat');
insert into Frequents values('Dan', 'New York Pizza');
insert into Frequents values('Eli', 'Straw Hat');
insert into Frequents values('Eli', 'Chicago Pizza');
insert into Frequents values('Fay', 'Dominos');
insert into Frequents values('Fay', 'Little Caesars');
insert into Frequents values('Gus', 'Chicago Pizza');
insert into Frequents values('Gus', 'Pizza Hut');
insert into Frequents values('Hil', 'Dominos');
insert into Frequents values('Hil', 'Straw Hat');
insert into Frequents values('Hil', 'Pizza Hut');
insert into Frequents values('Ian', 'New York Pizza');
insert into Frequents values('Ian', 'Straw Hat');
insert into Frequents values('Ian', 'Dominos');

insert into Eats values('Amy', 'pepperoni');
insert into Eats values('Amy', 'mushroom');
insert into Eats values('Ben', 'pepperoni');
insert into Eats values('Ben', 'cheese');
insert into Eats values('Cal', 'supreme');
insert into Eats values('Dan', 'pepperoni');
insert into Eats values('Dan', 'cheese');
insert into Eats values('Dan', 'sausage');
insert into Eats values('Dan', 'supreme');
insert into Eats values('Dan', 'mushroom');
insert into Eats values('Eli', 'supreme');
insert into Eats values('Eli', 'cheese');
insert into Eats values('Fay', 'mushroom');
insert into Eats values('Gus', 'mushroom');
insert into Eats values('Gus', 'supreme');
insert into Eats values('Gus', 'cheese');
insert into Eats values('Hil', 'supreme');
insert into Eats values('Hil', 'cheese');
insert into Eats values('Ian', 'supreme');
insert into Eats values('Ian', 'pepperoni');

insert into Serves values('Pizza Hut', 'pepperoni', 12);
insert into Serves values('Pizza Hut', 'sausage', 12);
insert into Serves values('Pizza Hut', 'cheese', 9);
insert into Serves values('Pizza Hut', 'supreme', 12);
insert into Serves values('Little Caesars', 'pepperoni', 9.75);
insert into Serves values('Little Caesars', 'sausage', 9.5);
insert into Serves values('Little Caesars', 'cheese', 7);
insert into Serves values('Little Caesars', 'mushroom', 9.25);
insert into Serves values('Dominos', 'cheese', 9.75);
insert into Serves values('Dominos', 'mushroom', 11);
insert into Serves values('Straw Hat', 'pepperoni', 8);
insert into Serves values('Straw Hat', 'cheese', 9.25);
insert into Serves values('Straw Hat', 'sausage', 9.75);
insert into Serves values('New York Pizza', 'pepperoni', 8);
insert into Serves values('New York Pizza', 'cheese', 7);
insert into Serves values('New York Pizza', 'supreme', 8.5);
insert into Serves values('Chicago Pizza', 'cheese', 7.75);
insert into Serves values('Chicago Pizza', 'supreme', 8.5);

-- A Find all pizzerias frequented by at least one person under the age of 18.
SELECT pizzeria
FROM frequents
JOIN person ON frequents.name = person.name
WHERE person.age < 18;

-- B Find the names of all females who eat either mushroom or pepperoni pizza (or both).
SELECT eats.name
FROM eats
JOIN person ON eats.name = person.name
WHERE person.gender = 'female' AND (eats.pizza = 'mushroom' OR eats.pizza = 'pepperoni')
GROUP BY eats.name;

-- C Find the names of all females who eat both mushroom and pepperoni pizza. Solve it using intersect. Then solve it using “exists” and/or “not exists”.
-- Using INTERSECT
SELECT Eats.name
FROM Eats
JOIN Person ON Eats.name = Person.name
WHERE Person.gender = 'female' AND Eats.pizza = 'mushroom'

INTERSECT

SELECT Eats.name
FROM Eats
JOIN Person ON Eats.name = Person.name
WHERE Person.gender = 'female' AND Eats.pizza = 'pepperoni';

-- Using EXISTS and NOT EXISTS
SELECT name
FROM Eats
WHERE Eats.pizza = 'mushroom' AND EXISTS (
    SELECT 1
    FROM Eats e2
    WHERE Eats.name = e2.name AND e2.pizza = 'pepperoni'
    AND EXISTS (
        SELECT 1
        FROM Person
        WHERE name = Eats.name AND gender = 'female'
    )
);

-- D Find all pizzerias that serve at least one pizza that Amy eats for less than $10.00. Solve it using a join. Then solve it using “exists” and/or “not exists”.
SELECT DISTINCT Serves.pizzeria
FROM Serves
JOIN Eats ON Serves.pizza = Eats.pizza
JOIN Person ON Eats.name = Person.name
WHERE Person.name = 'Amy' AND Serves.price < 10.00;

-- Using EXISTS and NOT EXISTS
SELECT DISTINCT pizzeria
FROM Serves s
WHERE EXISTS (
    SELECT 1
    FROM Eats e
    JOIN Person p ON e.name = p.name
    WHERE e.pizza = s.pizza AND p.name = 'Amy'
) AND s.price < 10.00;

-- E Find all pizzerias that are frequented by only females or only males.
SELECT f.pizzeria
FROM Frequents f
JOIN Person p ON f.name = p.name
GROUP BY f.pizzeria
HAVING COUNT(DISTINCT CASE WHEN p.gender = 'female' THEN p.name END) = COUNT(DISTINCT p.name)
    OR COUNT(DISTINCT CASE WHEN p.gender = 'male' THEN p.name END) = COUNT(DISTINCT p.name);
