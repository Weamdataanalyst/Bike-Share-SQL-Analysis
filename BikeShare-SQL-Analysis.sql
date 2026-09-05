

SELECT * FROM bike_share_yr_0
SELECT * FROM bike_share_yr_1
SELECT * FROM cost_table

---------------************* Total Revenue ***********----------

SELECT sum (riders * price) as Total_Revenue_2021 FROM bike_share_yr_0
join cost_table on bike_share_yr_0. yr = cost_table.yr


SELECT sum (riders * price) as Total_Revenue_2022 FROM bike_share_yr_1
join cost_table on bike_share_yr_1. yr = cost_table.yr



----------------------******** CTE ( Common Table Exprisson )*********----------------------

WITH Bikes AS (SELECT * FROM bike_share_yr_0
UNION
SELECT * FROM bike_share_yr_1)

SELECT  sum (riders * price) as Total_Revenue FROM Bikes
join cost_table on Bikes.yr = cost_table.yr

---------------------************** Total Revenue by Year **************-----------------

WITH Bikes AS (
SELECT * FROM bike_share_yr_0
UNION
SELECT * FROM bike_share_yr_1
)
SELECT cost_table.yr , sum (riders * price) as Total_Revenue FROM Bikes
join cost_table on Bikes.yr = cost_table.yr
group by cost_table.yr

-----------************** Total Revenue by season *************------------

WITH Bikes AS (
SELECT * FROM bike_share_yr_0
UNION
SELECT * FROM bike_share_yr_1
)
SELECT season , sum (riders * price) as Total_Revenue FROM  Bikes
join cost_table on Bikes.yr = cost_table.yr
GROUP BY season

-----------************** Total Revenue by rider type *************------------

WITH Bikes AS (
SELECT * FROM bike_share_yr_0
UNION
SELECT * FROM bike_share_yr_1
)
SELECT rider_type , sum (riders * price) as Total_Revenue FROM  Bikes
join cost_table on Bikes.yr = cost_table.yr
GROUP BY rider_type

----------------************* Distribution riders by rider type *********---------

WITH Bikes AS (
SELECT * FROM bike_share_yr_0
UNION
SELECT * FROM bike_share_yr_1
)
SELECT SUM (riders) FROM  Bikes


WITH Bikes AS (
SELECT * FROM bike_share_yr_0
UNION
SELECT * FROM bike_share_yr_1
)

SELECT rider_type , 
ROUND(100.0*SUM(riders)/ (
SELECT SUM (riders) FROM  BIKES),2) AS Precentage

from Bikes
GROUP BY rider_type


----------------************* Monthly Trend *********---------

WITH Bikes AS (
SELECT * FROM bike_share_yr_0
UNION
SELECT * FROM bike_share_yr_1
)
SELECT mnth , SUM (riders) as Total_Riders FROM  Bikes
GROUP BY mnth

----------------************* Hourly trend *********---------

WITH Bikes AS (
SELECT * FROM bike_share_yr_0
UNION
SELECT * FROM bike_share_yr_1
)
SELECT hr , SUM (riders) as Total_Riders FROM  Bikes
GROUP BY hr 

------------**********  Revenue by season name *************----------

WITH Bikes AS (SELECT * FROM bike_share_yr_0 UNION SELECT * FROM bike_share_yr_1)
SELECT season , sum(riders * price) as Total_Revenue ,
CASE season
WHEN 1 THEN 'springer'
WHEN 2 THEN 'summer'
WHEN 3 THEN 'fall'
ELSE 'winter'
END AS Season_Name
FROM  Bikes
join cost_table on Bikes.yr = cost_table.yr
GROUP BY season
ORDER BY Total_Revenue 




