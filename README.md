# Credit Card Fraud Analysis (SQL & Tableau)

## 1. Project Overview
This project analyzes 284,807 credit card transactions collected over two days to identify behavioral patterns linked to fraudulent activity. Only 492 transactions are fraudulent (0.172%), making fraud detection a highly imbalanced problem.  
The project covers SQL-based data preparation, transformation, exploratory analysis, and a Tableau dashboard designed to highlight fraud insights effectively.

## 2. Objectives
- Analyze fraud patterns across different hours of the day  
- Compare fraud behavior across time periods (Morning, Afternoon, Evening, Night)  
- Study fraud distribution across transaction amount ranges  
- Build SQL summary tables for Tableau reporting  

## 3. Dataset Summary
- Total transactions: 284,807  
- Fraud transactions: 492  
- Features V1–V28 are PCA-transformed  
- *Time* → seconds elapsed since the first transaction  
- *Amount* → transaction value  
- *Class* → 1 = fraud, 0 = legitimate  

## 4. Tools & Technologies
- MySQL  
- Tableau Public  
- Excel / CSV  
- GitHub Desktop  

## 5. SQL Work Included
- Data import and cleaning  
- Time conversion from seconds to hours  
- Period segmentation (Morning, Afternoon, Evening, Night)  
- Amount range bucketing  
- Summary table creation for:
  - Total transactions  
  - Fraud transactions  
  - Fraud percentage  

## 6. Key Insights
- Night hours show a higher fraud rate compared to total volume  
- Mid-range transaction amounts show higher fraud probability  
- Time-period grouping reveals meaningful fraud patterns despite low overall fraud rate  

## 7. Dashboard Overview
The Tableau dashboard visualizes:
- Fraud by Hour  
- Fraud by Period  
- Fraud by Transaction Amount Range  

**Dashboard Link:**  
https://public.tableau.com/app/profile/atharv.nigudkar/viz/fraud_dashboard/CreditCardFraudAnalysisDashboard?publish=yes

## 8. How to Reproduce

### SQL
1. Load `creditcard.csv` into MySQL  
2. Run scripts in the following order:
   - `create_table.sql`  
   - `eda_queries.sql`  
   - `analysis_queries.sql`  
   - `summary_tables.sql`

### Tableau
1. Open the `.twbx` file in `/tableau`  
2. Connect to the summary CSVs  
3. Publish to Tableau Public  

## 9. Author
**Atharv Nigudkar**  
Data Analyst  
LinkedIn: www.linkedin.com/in/atharv-nigudkar-495968227  

## 10. License
For educational and portfolio use.
