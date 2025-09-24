# 🏡 Airbnb Data Pipeline — dbt + Snowflake + Power BI

A modern data pipeline built with **dbt**, using **Snowflake** as the warehouse and **Power BI** for analytics.  
This project transforms raw Airbnb data into clean, analytics-ready tables and dashboards.

---

## 🚀 Project Overview

This project demonstrates how to build a robust ELT (Extract → Load → Transform) workflow for Airbnb listings, hosts, and reviews.  
Raw data is loaded into Snowflake, transformed using dbt into curated models, and finally visualized in Power BI.

---

## 🏗️ Tech Stack

- **dbt (data build tool)** — SQL-based transformations & testing
- **Snowflake** — cloud data warehouse
- **Power BI** — dashboard & reporting
- **dbt-utils** — helper macros (e.g., `generate_surrogate_key`)
- **GitHub** — version control & project sharing

---

## 📂 Project Structure
dbtlearn/
├── analyses/ # ad-hoc SQL analysis
├── assets/ # images & docs (e.g., input schema diagram)
├── macros/ # custom dbt macros
├── models/ # all dbt models
│ ├── src/ # raw → staging models (ephemeral)
│ ├── dim/ # cleaned dimension tables (dim_listings_cleansed, dim_hosts_cleansed)
│ ├── fct/ # fact tables (fct_reviews)
│ └── marts/ # final curated mart tables (mart_full_moon_reviews)
├── seeds/ # optional CSV seeds
├── snapshots/ # slowly changing dimension tracking (if any)
├── tests/ # generic & custom tests
├── dbt_project.yml # main dbt project config
├── packages.yml # external dbt packages
└── README.md

---

## 🔄 Data Transformation Flow (DAG)
Sources (Snowflake RAW schema)
├── raw_listings
├── raw_hosts
└── raw_reviews
│
▼
Staging (src_*)
│
▼
Dimension Models (dim_listings_cleansed, dim_hosts_cleansed)
│
▼
Fact Models (fct_reviews)
│
▼
Marts (mart_full_moon_reviews)
│
▼
📊 Power BI Dashboard

You can also explore this DAG visually with:
```bash
dbt docs generate
dbt docs serve

✅ Data Quality

Unique & Not Null checks on keys (listing_id, host_id)

Accepted Values tests (e.g., room_type, review_sentiment)

Freshness Checks on raw sources

Custom test: no_nulls_in_columns(ref('dim_listings_cleansed'))

📊 Dashboard

Interactive Power BI dashboard built on top of the curated mart tables.
Includes insights on:

Listings by room type & price

Host performance (Superhost flag)

Review sentiment analysis

Full moon review patterns 🌕
