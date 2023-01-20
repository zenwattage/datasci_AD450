-- Can you find five countries with the most coffee production from 1999 to 2004?
-- Your output should contain country, rank, combined production from 1999 to 2004
SELECT
	country,
	"1999_2000"+"2000_2001"+"2001_2002"+"2002_2003"+"2003_2004" AS volume,
	RANK() OVER (
		PARTITION BY country
		ORDER BY total_production
	)
FROM coffee_production
ORDER BY volume DESC
LIMIT 5;