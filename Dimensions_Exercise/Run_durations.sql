-- This query calculates the total duration (in minutes) of all runs
-- that took place during the month of July in the year 2019.
-- It joins the fact table `runs_fact` with the `week_dim` dimension
-- using the `week_id` to filter runs only from that specific time period.
SELECT 
	-- Get the total duration of all runs
	SUM(duration_mins)
FROM 
	runs_fact
-- Get all the week_id's that are from July, 2019
INNER JOIN week_dim ON week_dim.week_id = runs_fact.week_id
WHERE month = 'July' and year = '2019';