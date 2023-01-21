-- Name top five countries that has the most combined coffee export and import between 1995 to 2000
-- CSV output should contain country, export, import, and combined export&import between 1995 to 2000
-- WITH export_year_range AS (
-- 	SELECT 
-- 		country,
-- 		"1995"+"1996"+"1997"+"1999"+"2000" AS export_volume 
-- 	FROM coffee_export
-- 	)
-- SELECT
-- * 
-- FROM export_year_range
-- FULL JOIN coffee_import ON export_year_range.country = coffee_import.country
-- ORDER BY export_volume DESC;

-- SELECT 
-- --   coffee_import.country,
-- --   coffee_export.country,
-- coffee_import.*,
-- coffee_export.*,
-- coffee_import.country,
-- coffee_export.country,
--  (coffee_import."1995" + coffee_import."1996" + coffee_import."1997" + coffee_import."1998" + coffee_import."1999") AS import_years,
--  (coffee_export."1995" + coffee_export."1996" + coffee_export."1997" + coffee_export."1998" + coffee_export."1999") AS export_years
-- --   coffee_export."1995" AS export_1995,
-- --   coffee_import."1995" AS import_1995,
-- --   (coffee_export."1995" + coffee_import."1995") AS combined_1995,
-- --   coffee_export."1996" AS export_1996,
-- --   coffee_import."1996" AS import_1996,
-- --   (coffee_export."1996" + coffee_import."1996") AS combined_1996,
-- --   coffee_export."1997" AS export_1997,
-- --   coffee_import."1997" AS import_1997,
-- --   (coffee_export."1997" + coffee_import."1997") AS combined_1997
-- FROM 
--   coffee_import
--   JOIN coffee_export ON coffee_export.country = coffee_import.country


SELECT
COALESCE(coffee_import."1995" + coffee_import."1996" + coffee_import."1997" + coffee_import."1998" + coffee_import."1999", 0) AS import_years,
 COALESCE(coffee_export."1995" + coffee_export."1996" + coffee_export."1997" + coffee_export."1998" + coffee_export."1999", 0) AS export_years
-- coffee_import."1995" + coffee_import."1996" + coffee_import."1997" + coffee_import."1998" + coffee_import."1999",
-- coffee_export."1995" + coffee_export."1996" + coffee_export."1997" + coffee_export."1998" + coffee_export."1999"
FROM coffee_import
FULL JOIN coffee_export ON coffee_import.country = coffee_export.country
-- WHERE coffee_export."1995" IS NOT NULL AND 
--   coffee_import."1995" IS NOT NULL AND 
--   coffee_export."1996" IS NOT NULL AND 
--   coffee_import."1996" IS NOT NULL AND 
--   coffee_export."1997" IS NOT NULL AND 
--   coffee_import."1997" IS NOT NULL AND
--   coffee_export."1998" IS NOT NULL AND
--   coffee_import."1998" IS NOT NULL AND
--   coffee_export."1999" IS NOT NULL AND
--   coffee_import."1999" IS NOT NULL;
WHERE coffee_export."1995" != 0 AND
coffee_import."1995" != 0 AND
coffee_export."1996" != 0 AND
coffee_import."1996" != 0 AND
coffee_export."1997" != 0 AND
coffee_import."1997" != 0 AND
coffee_export."1998" != 0 AND
coffee_import."1998" != 0 AND
coffee_export."1999" != 0 AND
coffee_import."1999" != 0 AND
coffee_export."2000" != 0 AND
coffee_import."2000" != 0;
