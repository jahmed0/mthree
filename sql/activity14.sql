USE personaltrainer;
    
    SELECT
		Name
    FROM exercisecategory
    WHERE ParentCategoryId IS NOT NULL;