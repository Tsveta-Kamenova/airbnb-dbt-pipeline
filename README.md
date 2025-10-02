# Airbnb Data Pipeline — dbt + Snowflake + Power BI + Dagster

A modern end-to-end data pipeline for Airbnb analytics, built with **dbt**, **Snowflake**, and **Power BI**, orchestrated with **Dagster**. This project transforms raw Airbnb data into clean, analytics-ready tables and dashboards.

---

## 🚀 Project Highlights

- End-to-end modern data stack pipeline  
- dbt models (staging → intermediate → marts)  
- Data quality tests & snapshots  
- Dagster orchestration for scheduling and logging  
- Power BI dashboards for business insights (pricing, reviews, host performance)  

---

## 🛠️ Tech Stack

- **Data Warehouse:** Snowflake  
- **Transformation:** dbt (models, tests, snapshots, macros)  
- **Orchestration:** Dagster  
- **Visualization:** Power BI (PDF screenshots)  
- **Python Environment:** venv + requirements.txt  

---

## 🗂️ Project Structure
airbnb-dbt-pipeline/
├─ airbnb_dbt_dagster_project/ # Dagster pipeline & logs
├─ dashboards/ # Power BI PDF screenshots
├─ dbtlearn/ # dbt models, snapshots, docs, assets, macros
├─ requirements.txt # Python dependencies
├─ README.md
├─ .gitignore
 

❄️ Raw Snowflake Data
│
▼
dbtlearn/ models (staging → intermediate → marts)
│
▼
Curated marts
│
▼
Dashboards / Analytics


### dbt Input schema
<img width="1278" height="888" alt="input_schema git" src="https://github.com/user-attachments/assets/4c5efeda-3fa6-4c10-90e2-452a03a3c91f" />


### dbt Lineage
<img width="1887" height="995" alt="lineage" src="https://github.com/user-attachments/assets/ef0f28f6-8e72-476b-966d-baa9f09bf06e" />


### dbt Exposures with Preset.io (sample)
<img width="1892" height="832" alt="Preset io" src="https://github.com/user-attachments/assets/1e3f9f1f-d9dd-491b-94ff-1afdc169a0f1" />


### Dagster
<img width="1832" height="1070" alt="dagster" src="https://github.com/user-attachments/assets/adc27d2d-7475-42f9-88ef-96266884b6a0" />



## ✅ Data Quality

- Unique & Not Null checks on keys (listing_id, host_id)  
- Accepted Values tests (e.g., room_type, review_sentiment)  
- Freshness checks on raw sources  
- Custom tests: `no_nulls_in_columns(ref('dim_listings_cleansed'))`  

---

## 📊 Dashboards

Interactive **Power BI dashboards** built on top of curated mart tables. Insights include:

- Listings by room type & price  
- Host performance (Superhost flag)  
- Review sentiment analysis  
- Full moon review patterns 🌕  

<img width="1332" height="736" alt="pbi dash" src="https://github.com/user-attachments/assets/0871c4ed-e5a4-4fed-8f16-e1bec8d43e6c" />

---
