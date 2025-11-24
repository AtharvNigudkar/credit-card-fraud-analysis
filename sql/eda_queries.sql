/* total transcations*/
SELECT COUNT(*) FROM transactions;

/* Max time MAX amount MAX class*/
SELECT MAX(time),MAX(Amount),MAX(class) FROM transactions;  

/* total fraud transcations*/
SELECT class,count(*)
FROM transactions
WHERE class=1
GROUP BY class; 

/* total fraud percentage*/
SELECT sum(class)/count(*)*100
FROM transactions ;  