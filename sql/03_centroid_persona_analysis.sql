# Inspecting the Centroids of Clusters
SELECT
  centroid_id,
  feature,
  ROUND(numerical_value, 2) AS average_value
FROM ML.CENTROIDS(MODEL `retail_segmentation.customer_clusters`)
ORDER BY centroid_id, feature;

# Pivoting the overall output into a matrix table 
WITH centroid_data AS (
  SELECT
    centroid_id,
    feature,
    numerical_value
  FROM ML.CENTROIDS(MODEL `retail_segmentation.customer_clusters`)
)

SELECT
  centroid_id,
  MAX(IF(feature = 'age', ROUND(numerical_value, 1), NULL)) AS avg_age,
  MAX(IF(feature = 'annual_income_k', ROUND(numerical_value, 1), NULL)) AS avg_annual_income_k,
  MAX(IF(feature = 'spending_score', ROUND(numerical_value, 1), NULL)) AS avg_spending_score
FROM centroid_data
GROUP BY centroid_id
ORDER BY centroid_id;
