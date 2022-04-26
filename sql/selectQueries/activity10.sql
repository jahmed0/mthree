USE personaltrainer;
    
    SELECT
		FirstName,
        LastName,
        BirthDate
    FROM client
    WHERE BirthDate BETWEEN '1980-01-01' AND '1990-01-01';