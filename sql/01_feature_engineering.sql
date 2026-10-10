# Cleaning column headers and isolate numerical metrics 
CREATE OR REPLACE TABLE `retail_segmentation.model_features` AS
SELECT
  CustomerID AS customer_id,
  Age AS age,
  `Annual Income _k__` AS annual_income_k,
  `Spending Score _1-100_` AS spending_score
FROM `retail_segmentation.raw_customers`;
