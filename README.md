# Tokyo Olympics 2021 Data Engineering on Azure

## Overview

This project focuses on building an end-to-end data engineering pipeline for analyzing Olympic datasets using Microsoft Azure services. The objective was to ingest raw Olympic data, store it in a scalable cloud environment, transform and clean the data for analytical purposes, and generate meaningful insights through a dedicated analytics platform. The project follows a modern data engineering workflow that separates data ingestion, storage, transformation, and analysis into different layers for better scalability and maintainability.


## Services Used

**Azure Data Factory:** It was used as the data ingestion service. Using the Copy Data activity, Olympic datasets were extracted from the source and loaded into Azure Data Lake Storage.

**Azure Data Lake Storage:** It served as the centralized storage solution for the project. The ingested datasets were initially stored in a raw data folder, preserving the original source data. After processing and transformation, the cleaned datasets were stored in a separate transformed data folder. This layered storage approach helped maintain data integrity and provided a clear separation between raw and processed data.

**Azure Databricks:** It was used for data transformation and processing. Databricks leverages Apache Spark, a distributed data processing framework capable of handling large-scale datasets efficiently. Using Spark-based notebooks, the Olympic data was cleaned, transformed, and prepared for analysis. Various data preprocessing tasks, including handling inconsistencies, restructuring datasets, and applying business logic, were performed before writing the data back to the transformed layer in Azure Data Lake Storage.

**Azure Synapse Analytics:** It was used as the analytics layer of the project. The transformed data stored in Azure Data Lake Storage was connected to Synapse Analytics, where SQL queries were executed to analyze Olympic performance metrics. The analysis focused on deriving insights such as medal distribution across countries, gender-wise participation statistics, and overall country performance. Synapse Analytics provided a powerful environment for querying large datasets and generating meaningful business insights.

## Dataset

This project uses the **2021 Olympics in Tokyo** dataset, which contains information about athletes, coaches, teams, medals, and gender-based participation in the Tokyo Olympics. The dataset includes details of over 11,000 athletes competing across 47 sports and representing 743 teams.

* **Dataset Source:** https://www.kaggle.com/datasets/arjunprasadsarkhel/2021-olympics-in-tokyo


## Project Workflow

```text
Olympics Dataset
       ↓
Azure Data Factory
(Data Ingestion)
       ↓
Azure Data Lake Storage
(Raw Layer)
       ↓
Azure Databricks
(Data Cleaning & Transformation)
       ↓
Azure Data Lake Storage
(Transformed Layer)
       ↓
Azure Synapse Analytics
(Data Analysis & Reporting)
```
