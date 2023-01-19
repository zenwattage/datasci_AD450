-- WHO ARE THE BIGGEST EXPORTER LAST 5 YEARS (2015-2019)
SELECT
	country,
	"2015" + "2016" + "2017" + "2018" + "2019" AS export_last5
FROM coffee_export
ORDER BY export_last5 DESC
LIMIT 1;
