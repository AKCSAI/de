-- Select the university_shortname column
SELECT DISTINCT (university_shortname) 
FROM professors;

-- Specify the correct fixed-length character type
ALTER TABLE professors
ALTER COLUMN university_shortname
TYPE CHAR(3);

-- Change the type of firstname
ALTER TABLE professors 
ALTER COLUMN firstname
TYPE VARCHAR (64);

