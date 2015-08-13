ALTER TABLE person ADD COLUMN dead INTEGER;
ALTER TABLE person ADD COLUMN phone_number TEXT;
ALTER TABLE person ADD COLUMN salary FLOAT; 
ALTER TABLE person ADD COLUMN dob DATETIME;
ALTER TABLE pet ADD COLUMN dob DATETIME;
ALTER TABLE person_pet ADD COLUMN purchased_on DATETIME;
ALTER TABLE pet ADD COLUMN parent INTEGER; --person_pet id

UPDATE person SET salary = 2000.25
	WHERE first_name = "Zed";

UPDATE person SET phone_number = "555-555-5555"
	WHERE first_name = "Zed";

UPDATE person SET dead = 0
	WHERE first_name = "Zed";

UPDATE person SET dob = datetime("1962-12-01")
	WHERE first_name = "Zed";

UPDATE pet SET parent = 1 WHERE id = 0;

UPDATE person_pet SET purchased_on = datetime('1992-01-01') WHERE person_id in (
	SELECT person.id
	FROM person
	WHERE 
	person.first_name = "Zed"
);

INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
	VALUES(1, "Ned", "Stark", 45, 1, "Raven", 10000.01, datetime(1945-01-01));

INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
	VALUES(2, "Catelyn", "Stark", 43, 1, "Raven", 10.01, datetime(1943-01-01));

INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
	VALUES(3, "Rob", "Stark", 19, 1, "Raven", 1000.23, datetime(1967-01-01));

INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
	VALUES(4, "Ayra", "Stark", 12, 0, "Warg", 0.01, datetime(1975-01-01));

INSERT INTO pet (id, name, breed, age, dead, parent)
	VALUES(3, "Ghost", "Direwolf", 3, 0, 1);

INSERT INTO pet (id, name, breed, age, dead, parent)
	VALUES(4, "Nymera", "Direwolf", 3, 0, 3);

INSERT INTO person_pet(person_id, pet_id, purchased_on)
	VALUES(3, 3, datetime(1996-12-20));

INSERT INTO person_pet(person_id, pet_id, purchased_on)
	VALUES(4, 4, datetime(1996-12-20));

SELECT * FROM person;
SELECT * FROM pet;
SELECT * FROM person_pet;