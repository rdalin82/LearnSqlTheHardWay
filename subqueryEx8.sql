DELETE FROM pet WHERE id IN (
	SELECT pet.id
	FROM pet, person_pet, person_pet
	WHERE
	person.id = person_pet.person_id AND 
	pet.id = peson_pet.pet_id AND 
	person.first_name = "Zed"
);

SELECT * FROM pet;

SELECT * FROM person_pet;

DELETE from person_pet 
	WHERE pet_id NOT IN (
			SELECT id FROM pet 
		);

SELECT * FROM person_pet;