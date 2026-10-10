# Train the BQML K-Means Model
CREATE OR REPLACE MODEL `retail_segmentation.customer_clusters`
OPTIONS(
  model_type = 'kmeans',
  num_clusters = 5,
  standardize_features = TRUE
) AS
SELECT
  age,
  annual_income_k,
  spending_score
FROM `retail_segmentation.model_features`;
