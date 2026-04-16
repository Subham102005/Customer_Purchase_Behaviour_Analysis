# Customer Behavior Analysis for Shopping

## Overview

This project analyzes customer shopping behavior using transaction data to uncover spending patterns, customer segments, and product preferences. The goal is to generate actionable insights that support better business decisions, including improving marketing strategies, customer retention, and revenue optimization .

The analysis covers the full data analytics pipeline, from data cleaning and exploration to SQL-based business analysis and interactive dashboard visualization.

---

## Dataset

* **Source:** Customer transaction dataset
* **Rows:** 3,900
* **Columns:** 18
* **Description:** The dataset includes customer demographics, purchase details, and behavioral attributes.

### Key Features:

* **Customer Info:** Age, Gender, Location, Subscription Status

* **Purchase Details:** Item Purchased, Category, Purchase Amount, Season, Size, Color

* **Behavioral Data:** Discount Applied, Promo Code Used, Previous Purchases, Frequency, Review Rating, Shipping Type

* **Missing Data:** 37 missing values in the *Review Rating* column 

---

## Tools & Technologies

* **Python (Pandas, NumPy)** – Data loading, cleaning, and EDA
* **SQL (PostgreSQL / MySQL / SQL Server)** – Business analysis and querying
* **Power BI** – Dashboard and data visualization
* **Gamma** – Presentation creation
* **Jupyter Notebook / VS Code** – Development environment

---

## Project Steps

### 1. Data Loading & Exploration

* Loaded dataset using Pandas
* Performed initial inspection using `.info()` and `.describe()`
* Checked data types, distributions, and structure 

### 2. Data Cleaning & Preparation

* Handled missing values in *Review Rating* using median per category
* Standardized column names to snake_case
* Removed redundant column (*promo_code_used*)
* Verified data consistency across features

### 3. Feature Engineering

* Created **age_group** for customer segmentation
* Created **purchase_frequency_days** to analyze buying behavior

### 4. Database Integration

* Loaded cleaned dataset into PostgreSQL
* Prepared data for structured SQL analysis 

### 5. SQL Analysis

Performed business-focused queries to answer key questions:

* Revenue comparison by gender
* Identification of high-spending discount users
* Top-rated products based on customer reviews
* Shipping type impact on purchase behavior
* Subscriber vs. non-subscriber analysis
* Discount-dependent products
* Customer segmentation (New, Returning, Loyal)
* Top products by category
* Repeat buyers and subscription behavior
* Revenue contribution by age group 

---

## Dashboard

* **Tool:** Power BI
* **Overview:** Interactive dashboard for visualizing customer behavior insights

### Key Metrics (from dashboard on page 5):

* Average Purchase Amount: **$59.76**
* Average Review Rating: **3.75**
* Total Customers: **3.9K** 

### Features:

* Revenue breakdown by category and age group
* Subscription distribution
* Sales by category
* Interactive filters (gender, category, shipping type)

---

## Results & Insights

* Male customers generated significantly higher revenue than female customers
* Certain products (e.g., gloves, sandals, boots) received the highest ratings
* Express shipping users had slightly higher average purchase values
* Majority of customers are non-subscribers, but they contribute substantial revenue
* Loyal customers drive the majority of purchases
* Younger and middle-aged groups contribute the highest revenue 

---

## Business Recommendations

* Increase subscription adoption through targeted incentives
* Implement loyalty programs to convert repeat buyers into loyal customers
* Optimize discount strategies to balance revenue and profit
* Promote top-performing and highly rated products
* Focus marketing efforts on high-value customer segments 

---

## How to Run

### Prerequisites

* Python 3.x
* Required libraries: pandas, numpy
* PostgreSQL / MySQL / SQL Server
* Power BI Desktop

### Steps

1. Clone the repository:

   ```
   git clone <your-repo-link>
   ```
2. Navigate to the project folder:

   ```
   cd customer-behavior-analysis
   ```
3. Install dependencies:

   ```
   pip install -r requirements.txt
   ```
4. Run Jupyter Notebook for EDA and data cleaning
5. Load cleaned dataset into your SQL database
6. Execute SQL queries from the `/sql` folder
7. Open the Power BI dashboard (`.pbix`)
8. Review the report and Gamma presentation

---

## Project Structure

```
├── data/                # Raw and cleaned datasets
├── notebooks/          # EDA & data cleaning
├── sql/                # SQL queries
├── dashboard/          # Power BI file
├── reports/            # Analysis report
├── presentation/       # Gamma PPT
└── README.md
```

---

## Conclusion

This project demonstrates a complete data analytics workflow, combining Python, SQL, and Power BI to extract insights and communicate them effectively. It highlights practical skills in data cleaning, analysis, and visualization, aligned with real-world business problem-solving.

---
