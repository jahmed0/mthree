USE personaltrainer;
    
    SELECT
		FirstName
        LastName
    FROM client
    WHERE BirthDate IS NULL;