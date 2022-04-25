USE personaltrainer;
    
    SELECT
		FirstName,
        LastName,
        City
    FROM client
    WHERE City = 'Metairie' OR City = 'Kenner' OR City = 'Gretna';