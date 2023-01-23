-- Can you find  countries with the second most coffee production from 1990-1994 by each coffee_type.
--     there can be one or more countries for each cofee_type (no gaps in ranking values)
SELECT *
	FROM (
		SELECT
		country,
		"1990_1991"+"1991_1992"+"1992_1993"+"1993_1994" AS volume,
		DENSE_RANK() OVER (
			PARTITION BY coffee_type
			ORDER BY country DESC
		) coffee_rank
		FROM coffee_production
	) coffee 
WHERE 
	coffee_rank = 2;
