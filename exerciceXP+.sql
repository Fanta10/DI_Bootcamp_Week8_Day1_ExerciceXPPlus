-- Database: bootcamp

-- DROP DATABASE IF EXISTS bootcamp;

CREATE DATABASE bootcamp
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'French_France.1252'
    LC_CTYPE = 'French_France.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
	CREATE TABLE students(
		id SERIAL PRIMARY KEY,
		last_name VARCHAR(100) NOT NULL,
		first_name VARCHAR(120) NOT NULL,
		birth_date DATE NOT NULL
	);
	
	INSERT INTO students(last_name, first_name, birth_date) 
	VALUES('Marc', 'Benichou','02/11/1998'),
		  ('Yoan', 'Cohen','03/12/2010'),
		  ('Ième', 'Benichou','27/07/1987'),
		  ('Amelia', 'Dux','07/04/1996'),
		  ('David', 'Grez','14/06/2003'),
		  ('Omer', 'Simpson','03/10/1980');
	
	INSERT INTO students(last_name, first_name, birth_date)
	VALUES('Fanta', 'Kamate', '15/11/1995');
	
	SELECT * FROM students;
	
	SELECT first_name ,last_name FROM students;
	
	SELECT first_name ,last_name FROM students WHERE id = 2;
	SELECT first_name ,last_name FROM students WHERE id = 2;
	SELECT first_name ,last_name FROM students WHERE last_name = 'Marc'
	AND first_name = 'Benichou';
	
	SELECT first_name ,last_name FROM students WHERE last_name = 'Marc'
	OR first_name = 'Benichou';
	
	SELECT first_name ,last_name FROM students WHERE last_name LIKE '%a%';
	
	SELECT first_name ,last_name FROM students WHERE last_name LIKE 'a%';
	
	SELECT first_name ,last_name FROM students WHERE last_name LIKE '%a';
	
	SELECT first_name ,last_name FROM students WHERE last_name LIKE '%a_';
	
	SELECT first_name ,last_name FROM students WHERE id IN (1,3);
	
	SELECT first_name ,last_name FROM students WHERE birth_date >= '1/01/2000';
	
	
	
	
	
	
			