-- 1. Create a table called person that records a person’s id, name, age, height (in cm) , city, favorite_color. The id should be an auto-incrementing id/primary key (use type: SERIAL)

CREATE TABLE person (
  	id SERIAL PRIMARY KEY,
  	person_name varchar(30) NOT NULL,
  	age INTEGER NOT NULL,
  	height_cm FLOAT,
  	city varchar(30),
  	favorite_color varchar(30)
)

-- 2. Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.

INSERT into person(person_name, age, height_cm, city, favorite_color)
VALUES ('Yun', 27, 160, 'Guangzhou', 'yellow'),
('Ayse', 33, 155, 'Istanbul', 'green'),
('Ela', 30, 162, 'Kathmandu', 'teal'),
('Dina', 30, 165.5, 'Springfield', 'orange'),
('Kelsey', 30, 161, 'Sacramento', 'blue');

-- 3. Select all the people in the person table by height from tallest to shortest.
SELECT person_name, height_cm FROM person ORDER BY height_cm desc;

-- 4. Select all the people in the person table by height from shortest to tallest.
SELECT person_name, height_cm FROM person ORDER BY height_cm;
/* or SELECT person_name, height_cm FROM person ORDER BY height_cm asc; */

-- 5. Select all the people in the person table by age from oldest to youngest.
SELECT person_name, age FROM person ORDER BY age desc;

-- 6. Select all the people in the person table older than age 20.
SELECT person_name, age from person WHERE age > 20;

-- 7. Select all the people in the person table that are exactly 18.
SELECT person_name, age from person WHERE age = 18;

-- 8. Select all the people in the person table that are less than 20 and older than 30.
SELECT person_name, age from person WHERE age < 20 OR age > 30;

-- 9. Select all the people in the person table that are not 27 (use not equals).
SELECT person_name, age from person WHERE age <> 27;

-- 10. Select all the people in the person table where their favorite color is not red.
SELECT person_name, favorite_color from person WHERE favorite_color <> 'red';

-- 11. Select all the people in the person table where their favorite color is not red and is not blue.
SELECT person_name, favorite_color from person WHERE favorite_color <> 'red' AND favorite_color <> 'blue';

-- 12. Select all the people in the person table where their favorite color is orange or green.
SELECT person_name, favorite_color from person WHERE favorite_color = 'orange' OR favorite_color = 'green';

-- 13. Select all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT person_name, favorite_color FROM person WHERE favorite_color IN ('orange', 'green', 'blue');

-- 14. Select all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT person_name, favorite_color FROM person WHERE favorite_color IN ('yellow', 'purple');