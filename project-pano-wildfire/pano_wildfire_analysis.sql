-- Wildfire Site Intelligence Analysis | Pano AI Camera Placement Support
-- Dataset: 1.88M U.S. wildfire records 1992-2015 | USDA Forest Service
-- Tools: SQLite, DBeaver
-- Author: [Abraham Molina]

-- Q1: Highest risk states by fire frequency and average size (2005-2015)
SELECT state,
	   COUNT(*) as fire_count,
	   ROUND(AVG(fire_size),2) AS avg_size_acres
FROM fires
WHERE fire_year >= 2005
GROUP BY state
ORDER BY fire_count DESC
LIMIT 15;


-- Q2: Average containment time by state (days) for fires 100+ acres (Class D-G) 2005-2015
SELECT state,
	   ROUND(AVG(JULIANDAY(cont_date) - JULIANDAY(discovery_date)),1) as containment_time
FROM Fires 
WHERE fire_year >= 2005 
	AND cont_date IS NOT NULL 
	AND discovery_date IS NOT NULL
	AND fire_size >= 100
GROUP BY state
ORDER BY containment_time DESC
;

-- Q3: Monthly wildfire ignition frequency 2005-2015
SELECT strftime('%m', DISCOVERY_DATE) AS month_num,
	   COUNT(*) AS ignition
FROM fires
WHERE fire_year >= 2005
GROUP BY month_num
ORDER BY month_num;

-- Q4: Year over year trend for CA using LAG
WITH cte AS 
	(SELECT strftime('%Y', discovery_date) AS year,
	  	    COUNT(*) as num_of_fires
	 FROM fires
	 WHERE  state = 'CA' 
	 	AND fire_year >= 2005
	 GROUP BY year)
	 
SELECT year,
	   num_of_fires,
	   LAG(num_of_fires,1) OVER(ORDER BY year) AS prev_yr_fires,
	   num_of_fires - LAG(num_of_fires,1) OVER(ORDER BY year) AS yoy_change
FROM cte;

-- Q4b: California 2007 peak year analysis — fire size and causes
SELECT SUM(fire_size) AS total_size_acres, 
	   stat_cause_descr AS cause
FROM fires
WHERE state = 'CA' 
	AND fire_year = 2007 
GROUP BY stat_cause_descr  
ORDER BY SUM(fire_size) DESC;

-- Q5: County-level fire hotspots in top 5 high-risk states 2005-2015
SELECT state,
	   fips_code AS county,
	   fips_name,
	   COUNT(*) AS fire_count,
	   ROUND(SUM(fire_size),0) AS total_acres,
	   RANK() OVER(PARTITION BY state ORDER BY COUNT(*) DESC) AS rank
FROM fires 
WHERE state IN ('CA','OR','AZ','TX','MT')
	AND fire_year >= 2005
	AND county IS NOT NULL
	AND CAST(county AS INTEGER) = 0
GROUP BY state, fips_code
ORDER by state, fire_count DESC;

-- Q6: Wildfire cause breakdown with percentage 2005-2015
SELECT stat_cause_descr AS cause,
	   COUNT(*) AS fire_count,
	   ROUND(COUNT(*)*100.0 / (SELECT COUNT(*) FROM fires WHERE fire_year >= 2005),2) AS pct
FROM fires
WHERE fire_year >= 2005
GROUP BY cause
ORDER BY fire_count DESC;




