# Customer Segmentation using BigQuery ML (K-Means Clustering)

## Business Overview
This project builds an automated customer segmentation pipeline in Google BigQuery to divide retail shoppers into 5 distinct behavioral personas based on demographic and purchasing attributes.

## Tech Stack
* **Cloud Platform:** Google Cloud Platform (GCP)
* **Data Warehouse:** Google BigQuery
* **Machine Learning:** BigQuery ML (K-Means Unsupervised Clustering)
* **Dataset:** Kaggle Mall Customer Segmentation (200 customer profiles)

## Pipeline Architecture
1. **Data Preprocessing:** Standardized attribute schemas (`age`, `annual_income_k`, `spending_score`).
2. **Feature Normalization:** Applied automatic Z-score standardization inside BQML to eliminate scale bias across income and age dimensions.
3. **Model Evaluation:** Evaluated cluster compactness and separation using the Davies-Bouldin Index and Mean Squared Distance.
4. **Persona Mapping:** Analyzed cluster centroids to map numerical cluster IDs to strategic marketing segments (e.g. VIP targets vs. impulse buyers).

## Identified Customer Personas
* **Cluster 1 (Low Income, Low Spending):** Budget-conscious shoppers requiring entry-level discount messaging.
* **Cluster 2 (Low Income, High Spending):** Young impulse buyers receptive to trendy, lower-cost promotional items.
* **Cluster 3 (High Income, High Spending):** VIP high-value customers targeted for premium loyalty programs.
* **Cluster 4 (High Income, Low Spending):** Conservative high-net-worth individuals requiring high-value engagement offers.
* **Cluster 5 (Middle Income, Moderate Spending):** Mainstream average customers forming the revenue baseline.

## Repository Structure
* `sql/01_feature_engineering.sql` : Data cleaning & schema preparation
* `sql/02_kmeans_model_training.sql` : BQML model definition & parameters
* `sql/03_centroid_persona_analysis.sql` : Centroid aggregation and persona mapping
* `sql/04_batch_predictions.sql` : Batch prediction & segment assignment
