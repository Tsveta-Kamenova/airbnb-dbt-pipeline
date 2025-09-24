# 🏡 Airbnb Data Pipeline — dbt + Snowflake + Power BI

A modern data pipeline built with **dbt**, using **Snowflake** as the warehouse and **Power BI** for analytics.  
This project transforms raw Airbnb data into clean, analytics-ready tables and dashboards.

---

## 🚀 Project Highlights

- End-to-end modern data stack pipeline  
- dbt models (staging → intermediate → marts)  
- Data quality tests & snapshots  
- Power BI dashboards for business insights (pricing, reviews, host performance)  

---

## 🛠️ Tech Stack

- **Data Warehouse**: Snowflake  
- **Transformation**: dbt (models, tests, snapshots, macros)  
- **Orchestration**: dbt CLI  
- **Visualization**: Power BI  
- **Version Control**: GitHub  

---

## 🗂️ Project Structure

| Folder / File     | Description                                                                        |
| ----------------- | ---------------------------------------------------------------------------------- |
| `models/src/`     | Staging models sourced from Snowflake (`raw_listings`, `raw_hosts`, `raw_reviews`) |
| `models/dim/`     | Cleansed dimension models (`dim_listings_cleansed`, `dim_hosts_cleansed`)          |
| `models/fct/`     | Fact models (`fct_reviews`)                                                        |
| `models/mart/`    | Business-facing marts (`mart_full_moon_reviews`)                                   |
| `analyses/`       | Ad-hoc SQL analysis (e.g., sentiment by full moon)                                 |
| `snapshots/`      | Slowly Changing Dimensions (`scd_raw_hosts`, `scd_raw_listings`)                   |
| `seeds/`          | Seed datasets (`seed_full_moon_dates.csv`)                                         |
| `tests/`          | Custom SQL-based tests                                                             |
| `macros/`         | Custom macros & reusable tests (`no_nulls_in_columns`, `positive_value`)           |
| `dashboards/`     | dbt exposures (links marts → dashboards)                                           |
| `docs/`           | dbt documentation blocks                                                           |
| `assets/`         | Input schema diagram & dashboard screenshots                                       |
| `overview/`       | Project documentation overview                                                     |
| `dbt_project.yml` | Main dbt project configuration                                                     |
| `packages.yml`    | External dbt package dependencies                                                  |
| `README.md`       | Project documentation (this file)                                                  |

---

flowchart TD
    subgraph Snowflake_RAW["❄️ Snowflake (RAW Schema)"]
        L["raw_listings"]
        H["raw_hosts"]
        R["raw_reviews"]
    end

    subgraph Staging["📦 Staging Models (src_*)"]
        SL["src_listings"]
        SH["src_hosts"]
        SR["src_reviews"]
    end

    subgraph Dimensions["🗂 Dimension Models"]
        DL["dim_listings_cleansed"]
        DH["dim_hosts_cleansed"]
    end

    subgraph Facts["📊 Fact Models"]
        FR["fct_reviews"]
    end

    subgraph Marts["🏪 Marts"]
        FM["mart_full_moon_reviews"]
    end

    subgraph BI["📈 Power BI Dashboard"]
        D["Airbnb Insights Dashboard"]
    end

    L --> SL
    H --> SH
    R --> SR
    SL --> DL
    SH --> DH
    DL --> FR
    DH --> FR
    FR --> FM
    FM --> D

---

✅ Data Quality

- Unique & Not Null checks on keys (listing_id, host_id)
- Accepted Values tests (e.g., room_type, review_sentiment)
- Freshness Checks on raw sources
- Custom test: no_nulls_in_columns(ref('dim_listings_cleansed'))

---

📊 Dashboard

- Interactive Power BI dashboard built on top of the curated mart tables.
- Includes insights on:
- Listings by room type & price
- Host performance (Superhost flag)
- Review sentiment analysis
- Full moon review patterns 🌕

  - [View the Dashboard](./Airbnb_FullMoon_Reviews.pbix)  

<img width="1517" height="853" alt="image" src="https://github.com/user-attachments/assets/1d7ee8a3-cf5c-466c-8ea2-92bc41e49ab3" />

