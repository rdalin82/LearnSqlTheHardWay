SELECT pet.id, pet.name, pet.age, pet.dead
	FROM pet, person_pet, person
	WHERE
	pet.id = person_pet.pet_id AND 
	person.id = person_pet.person_id AND
	person.first_name = "Zed";

--sqlite3 -column -header ex3.db < ex6.sql  This is a comment