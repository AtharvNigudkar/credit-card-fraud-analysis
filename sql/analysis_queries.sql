/* fraud by hour*/
SELECT FLOOR(Time/3600) as hour,
COUNT(*) AS total_txn,
SUM(Class) AS fraud_txn
FROM transactions
GROUP BY hour ; 

/* fraud by period*/
WITH period_analysis AS (
SELECT FLOOR(Time/3600) as hour,
COUNT(*) AS total_transcation,
SUM(CASE WHEN Class= 1 THEN 1 ELSE 0 END) AS fraud_transcation
FROM transactions
GROUP BY hour )

SELECT 
CASE
WHEN hour BETWEEN 0 AND 5 THEN 'Night'
WHEN hour BETWEEN 6 AND 11 THEN 'Morning'
WHEN hour BETWEEN 12 AND 17 THEN 'Afternoon'
WHEN hour BETWEEN 18 AND 23 THEN 'Evening'
WHEN hour BETWEEN 24 AND 29 THEN 'Night'
WHEN hour BETWEEN 30 AND 35 THEN 'Morning'
WHEN hour BETWEEN 36 AND 41 THEN 'Afternoon'
WHEN hour BETWEEN 42 AND 47 THEN 'Evening'
ELSE 'Unknown'
END AS period,
SUM(total_transcation) AS total_transcation,
SUM(fraud_transcation) AS fraud_transcation,
ROUND(SUM(fraud_transcation)/SUM(total_transcation)*100,3) AS fraud_percentage
FROM period_analysis
GROUP BY period ;    



/* fraud by amount */
SELECT FLOOR(Amount/100)*100 AS amount_range,
COUNT(*) AS total_transcation,
SUM(CASE WHEN Class= 1 THEN 1 ELSE 0 END) AS fraud_transcation,
ROUND(SUM(CASE WHEN Class= 1 THEN 1 ELSE 0 END)/COUNT(*) *100,2) AS fraud_percentage
FROM transactions 
GROUP BY amount_range
ORDER BY amount_range ;