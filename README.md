# Sales Analysis of Walmart Using MySQL 🛒📈

## 📌 Project Overview
This project performs a comprehensive sales analysis of Walmart's transaction data using advanced MySQL techniques. The objective is to extract actionable insights into sales performance, customer behavior, and operational efficiency across different branches. By answering key business questions, this analysis aims to help Walmart optimize its sales strategies and improve overall performance.

---

## 📂 Dataset
- **Source**: `Walmartsales.csv`
- **Details**:
  - The dataset contains historical sales data for three Walmart branches located in different cities.
  - It includes 18 columns detailing transactions, such as `Invoice ID`, `Branch`, `City`, `Customer type`, `Product line`, `Total` sales, `Date`, `Payment` method, and `gross income`.

---

## 🛠️ Database Setup & Data Loading
1.  A new database named `finalproject` was created in MySQL.
2.  A table `walmartsales` was created to match the structure of the CSV file.
3.  The `Walmartsales.csv` data was imported into the `walmartsales` table for analysis.

---

## 📈 Key Analyses Performed
A series of advanced SQL queries were executed to extract deep insights from the sales data. The core analyses included:

- **Sales & Profitability Analysis**: Investigated sales trends over time to identify the top-performing branches based on monthly growth. The most profitable product lines for each individual branch were also determined by analyzing gross income.

- **Customer Segmentation & Behavior**: Segmented customers into 'low', 'medium', and 'high' spending tiers based on their total purchase value. The analysis also identified the preferred product lines for different customer types ('Member' vs. 'Normal') and pinpointed the top 5 customers by total sales volume.

- **Operational Analysis**: Examined transaction data to determine the most popular payment methods used in each city, providing insights into local payment preferences.

---

## 📊 Key Insights & Findings
- **Branch Performance**: The analysis of monthly sales growth helps identify which branches are performing well and which may need strategic intervention.
- **Product Profitability**: For each branch, "Home and lifestyle" and "Sports and travel" were consistently among the most profitable product lines.
- **Customer Behavior**: Members tend to spend more on average than normal customers, with a clear preference for certain product lines.
- **Payment Methods**: "Ewallet" and "Cash" were the most popular payment methods, with variations across different cities.
- **Sales Trends**: The analysis revealed daily and monthly sales trends, providing insights into peak shopping times and customer traffic patterns.

---

## 🔧 Tools Used
- **MySQL**: For database creation, data querying, and performing advanced data analysis.
- **Microsoft PowerPoint**: For presenting the final queries, results, and key findings.
