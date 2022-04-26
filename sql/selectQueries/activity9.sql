USE personaltrainer;
    
    SELECT
		FirstName,
        LastName,
        BirthDate
    FROM client
    WHERE BirthDate>= '1980-01-01' 
		AND BirthDate<'1990-01-01';