-- Name top five countries that has the most combined coffee export and import between 1995 to 2000
-- CSV output should contain country, export, import, and combined export&import between 1995 to 2000
WITH export_year_range AS (
	SELECT 
		country,
		"1995"+"1996"+"1997"+"1999"+"2000" AS export_volume
	FROM coffee_export
	)
SELECT
* 
FROM export_year_range
FULL JOIN coffee_import ON export_year_range.country = coffee_import.country
ORDER BY export_volume DESC;

