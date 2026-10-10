# Assigning Cluster IDs to Customer Profiles
SELECT
  customer_id,
  age,
  annual_income_k,
  spending_score,
  CENTROID_ID AS assigned_cluster
FROM ML.PREDICT(
  MODEL `retail_segmentation.customer_clusters`,
  (SELECT * FROM `retail_segmentation.model_features`)
)
ORDER BY customer_id;
