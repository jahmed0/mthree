USE personaltrainer;
    
    SELECT
		Name,
        Notes
    FROM workout
    WHERE LevelId=3
    AND Notes LIKE '%you%';