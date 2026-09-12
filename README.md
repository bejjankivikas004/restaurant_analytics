# 🍽️ Restaurant Analytics Platform

<p align="center">
  <i>End-to-End Cloud Data Engineering & Analytics Solution</i>
</p>

---

## 🛠️ Technology Stack

| Technology | Category |
|:---:|:---:|
| ❄️ **SNOWFLAKE** | **DATA WAREHOUSE** |
| 🔄 **DBT** | **TRANSFORMATION** |
| 🪣 **AMAZON S3** | **DATA LAKE** |
| 📊 **STREAMLIT** | **DASHBOARD** |
| 🐍 **PYTHON** | **PROGRAMMING** |
| 🗄️ **SQL** | **DATA ENGINEERING** |
| 🐙 **GITHUB** | **VERSION CONTROL** |

---

# 📌 Project Overview

The **Restaurant Analytics Platform** is an end-to-end cloud data engineering and analytics solution designed to ingest, transform, model, and analyze restaurant business data.

The project demonstrates a complete modern data pipeline starting from raw CSV files and ending with business-ready analytical dashboards.

The platform combines:

- ☁️ Amazon S3
- ❄️ Snowflake
- ⚡ Snowpipe
- 📡 Amazon SNS
- 🔄 dbt
- 🗄️ SQL
- 🐍 Python
- 📊 Streamlit
- 🐙 GitHub

The project follows a modern:

**Bronze → Silver → Gold**

data architecture.

---

# 🎯 Project Objectives

The main objectives of this project are:

- Build an end-to-end cloud data pipeline
- Store raw data in Amazon S3
- Automatically ingest files into Snowflake
- Implement Snowpipe Auto-Ingestion
- Use event-driven data ingestion
- Create a Bronze data layer
- Transform data using dbt
- Create Silver transformation models
- Build Gold analytical models
- Implement fact and dimension tables
- Create business KPIs
- Analyze customers
- Analyze restaurant performance
- Analyze menu item performance
- Analyze delivery operations
- Analyze customer reviews
- Build an interactive Streamlit dashboard
- Maintain the project using GitHub

---

# 🏗️ Architecture

```text
                         ┌──────────────────────┐
                         │      SOURCE DATA     │
                         │                      │
                         │ Customers            │
                         │ Orders               │
                         │ Menu Items           │
                         │ Locations            │
                         │ Delivery             │
                         │ Reviews              │
                         └──────────┬───────────┘
                                    │
                                    ▼
                         ┌──────────────────────┐
                         │      AMAZON S3       │
                         │      raw/ folder     │
                         └──────────┬───────────┘
                                    │
                                    ▼
                         ┌──────────────────────┐
                         │  S3 EVENT NOTIFICATION│
                         └──────────┬───────────┘
                                    │
                                    ▼
                         ┌──────────────────────┐
                         │      AMAZON SNS      │
                         │   Event Notification │
                         └──────────┬───────────┘
                                    │
                                    ▼
                         ┌──────────────────────┐
                         │      SNOWPIPE        │
                         │    AUTO INGESTION    │
                         └──────────┬───────────┘
                                    │
                                    ▼
              ┌────────────────────────────────────────┐
              │             SNOWFLAKE                  │
              │                                        │
              │              BRONZE                    │
              │                                        │
              │  BRONZE_CUSTOMERS                     │
              │  BRONZE_ORDERS                        │
              │  BRONZE_MENU_ITEMS                    │
              │  BRONZE_LOCATIONS                     │
              │  BRONZE_DELIVERY                      │
              │  BRONZE_REVIEWS                       │
              └───────────────────┬────────────────────┘
                                  │
                                  ▼
                         ┌──────────────────────┐
                         │         DBT          │
                         │    TRANSFORMATIONS   │
                         └──────────┬───────────┘
                                    │
                                    ▼
              ┌────────────────────────────────────────┐
              │              SILVER                    │
              │                                        │
              │     Cleaned & Transformed Data         │
              └───────────────────┬────────────────────┘
                                  │
                                  ▼
              ┌────────────────────────────────────────┐
              │               GOLD                     │
              │                                        │
              │ Facts                                  │
              │ Dimensions                             │
              │ KPIs                                   │
              │ Business Analytics                     │
              └───────────────────┬────────────────────┘
                                  │
                                  ▼
                         ┌──────────────────────┐
                         │      STREAMLIT       │
                         │       DASHBOARD      │
                         └──────────┬───────────┘
                                    │
                                    ▼
                         ┌──────────────────────┐
                         │   BUSINESS INSIGHTS  │
                         └──────────────────────┘
