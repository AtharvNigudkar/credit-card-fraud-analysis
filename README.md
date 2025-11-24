Credit Card Fraud Analysis (SQL & Tableau)
1. Project Overview

This project analyzes 284,807 credit card transactions collected over two days to identify behavioral patterns linked to fraudulent activity. Only 492 transactions are fraudulent (0.172%), making fraud detection a highly imbalanced problem.
The project covers SQL-based data preparation, transformation, exploratory analysis, and a Tableau dashboard designed to highlight fraud insights effectively.

2. Objectives

Analyze fraud patterns across different hours of the day

Compare fraud behavior across periods of the day (Morning, Afternoon, Evening, Night)

Study fraud distribution across transaction amount ranges

Build SQL summary tables for Tableau reporting

3. Dataset Summary

Total transactions: 284,807

Fraud transactions: 492

Features V1–V28: PCA-transformed due to confidentiality

Time: Seconds elapsed since the first transaction

Amount: Transaction value

Class: 1 (fraud), 0 (legitimate)

4. Tools & Technologies

MySQL

Tableau Public

Excel / CSV

GitHub Desktop

5. SQL Work Included

Imported and cleaned raw data

Converted seconds into hour-based time buckets

Segmented hours into daily time periods

Created transaction amount buckets

Calculated:

Total transactions

Fraud transactions

Fraud percentage

Generated summary tables for Tableau

6. Key Insights

Night hours show a disproportionately high fraud rate relative to transaction volume

Mid-range transaction amounts have higher fraud tendencies

Despite the low overall fraud rate, grouping data by period and amount reveals clear behavioral fraud patterns

7. Dashboard Overview

The Tableau dashboard visualizes:

Fraud by Hour

Fraud by Period

Fraud by Transaction Amount Range

Dashboard Link:
https://public.tableau.com/app/profile/atharv.nigudkar/viz/fraud_dashboard/CreditCardFraudAnalysisDashboard?publish=yes

8. How to Reproduce
SQL

Load the dataset into MySQL

Run scripts in this order:

create_table.sql

eda_queries.sql

analysis_queries.sql

summary_tables.sql

Tableau

Open the .twbx file in the tableau/ directory

Connect it to the exported summary CSVs

Publish the dashboard to Tableau Public

9. Author

Atharv Nigudkar
Data Analyst
LinkedIn: www.linkedin.com/in/atharv-nigudkar-495968227

10. License

For educational and portfolio use only.