--Top five countries where green coffee inventories have grown the most since 2015?
-- 2019-2015
SELECT 
	country,
	"2015",
	"2019",
	"2019" - "2015" AS difference
FROM coffee_green_coffee_inventories
ORDER BY difference DESC
LIMIT 5
	