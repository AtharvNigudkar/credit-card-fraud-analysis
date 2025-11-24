💳 Credit Card Fraud Analysis - SQL & Tableau
📘 Project Overview

This project analyzes credit card transactions to identify patterns associated with fraudulent activity. The dataset contains 284,807 transactions recorded over a two-day period, including 492 confirmed frauds. Due to the extremely low fraud rate (0.172%), the challenge requires careful analysis and meaningful visualizations to highlight hidden fraud patterns.

The project includes data cleaning, SQL-based exploration, summary table creation, and an interactive Tableau dashboard for insight communication.

🎯 Objectives

Analyze hourly fraud behavior.
Compare fraud distribution across time periods (Morning, Afternoon, Evening, Night).
Understand fraud trends across different transaction amount ranges.
Build SQL summary tables to support Tableau visualizations.

📊 Dataset Summary

Total transactions: 284,807
Fraud transactions: 492
PCA-transformed features (V1–V28) due to confidentiality
Time = seconds since the first transaction
Amount = transaction value
Class = 1 (fraud) or 0 (legitimate)

🛠️ Tools & Technologies

MySQL
Tableau Public
Excel/CSV
GitHub Desktop

🧮 SQL Work Included

Imported and cleaned raw data.
Converted seconds into hours for time-based analysis.
Categorized hours into periods of the day.
Created transaction amount ranges.
Calculated:
• total transactions
• fraud transactions
• fraud percentages
Generated summary tables for Tableau.

🔑 Key Insights

Fraud occurrences spike during Night hours in relation to total volume.
Certain mid-range transaction amounts show higher fraud tendencies.
Even though overall fraud rate is extremely low, clear patterns appear when grouped by period and amount.

📉 Dashboard Overview

The Tableau dashboard visualizes:
Fraud by Hour
Fraud by Period
Fraud by Amount Range
Clean, easy-to-interpret charts for fraud behavior

Dashboard Link:
https://public.tableau.com/app/profile/atharv.nigudkar/viz/fraud_dashboard/CreditCardFraudAnalysisDashboard?publish=yes

🧪 How to Reproduce
SQL

Load the dataset into MySQL
Run scripts in the following order:
create_table.sql
eda_queries.sql
analysis_queries.sql
summary_tables.sql

Tableau

Open the .twbx file in the tableau/ directory
Connect it to the exported summary CSVs
Publish to Tableau Public

👤 Author

Atharv Nigudkar
Data Analyst
www.linkedin.com/in/atharv-nigudkar-495968227

📜 License

For educational and portfolio use only.