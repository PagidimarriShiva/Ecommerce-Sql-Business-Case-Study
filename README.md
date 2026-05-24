# 🛒 E-Commerce Customer & Sales Analytics — SQL Business Case Study

> End-to-end SQL analysis of an e-commerce platform covering sales performance, customer behavior, retention trends, conversion funnel, product performance, churn risk, and Customer Lifetime Value (CLV).

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat-square&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-CC2927?style=flat-square&logo=microsoftsqlserver&logoColor=white)
![Data Analysis](https://img.shields.io/badge/Data%20Analysis-0078D4?style=flat-square&logo=microsoft&logoColor=white)

---

## 📑 Table of Contents

- [Project Overview](#-project-overview)
- [Dataset Information](#-dataset-information)
- [Business Problems Solved](#-business-problems-solved)
- [SQL Concepts Used](#-sql-concepts-used)
- [Key KPIs](#-key-kpis)
- [Monthly Sales Trend](#-monthly-sales-trend)
- [Top Customers](#-top-revenue-generating-customers)
- [Product Performance](#-product-performance-analysis)
- [Conversion Funnel](#-customer-engagement-funnel)
- [Churn Analysis](#-customer-churn-analysis)
- [RFM Analysis](#-rfm-analysis)
- [Business Insights](#-business-insights)
- [Recommendations](#-recommendations)
- [Future Improvements](#-future-improvements)

---

## 📝 Project Overview

This project is an end-to-end SQL Business Case Study performed on an e-commerce dataset containing customer transactions, product purchases, reviews, and user engagement events.

The objective is to analyze sales performance, customer behavior, retention trends, conversion funnels, product performance, churn risk, and Customer Lifetime Value (CLV) using advanced SQL queries and business analytics techniques.

**Pipeline:**
```
Raw Dataset → SQL Analysis → KPI Reporting → Insights → Recommendations
```

---

## 📂 Dataset Information

| Table | Description |
|-------|-------------|
| `users` | Customer details and demographics |
| `orders` | Order transactions and revenue |
| `order_items` | Product-level order details |
| `reviews` | Product ratings and customer feedback |
| `events` | Customer interaction and engagement events |

> ER Diagram is available in the repository: `ER Diagram.png`

---

## ❓ Business Problems Solved

1. What is the total revenue generated?
2. Which months generated the highest sales?
3. Who are the top revenue-generating customers?
4. What is the customer retention rate?
5. Which products are best-selling?
6. Which products have the highest and lowest ratings?
7. Which users are most active?
8. What does the customer conversion funnel look like?
9. Which customers are at risk of churn?
10. What is the Customer Lifetime Value (CLV)?
11. How can customers be segmented using RFM analysis?

---

## 🧠 SQL Concepts Used

| Concept | Usage |
|---------|-------|
| `JOINs` | Combining users, orders, order_items, reviews, events |
| `GROUP BY` + Aggregate Functions | Revenue totals, order counts, averages |
| `CTEs` | Modular query building for RFM and CLV |
| `Subqueries` | Filtering and nested logic |
| `Window Functions` | Ranking and trend analysis |
| `DENSE_RANK()` | Top customer and product ranking |
| `LAG()` | Day-over-day and month-over-month comparisons |
| `CASE WHEN` | Segmentation and conditional logic |
| Date Functions | Monthly trend extraction |
| RFM Analysis | Recency, Frequency, Monetary segmentation |

---

## 📊 Key KPIs

| KPI | Value |
|-----|-------|
| Total Revenue | ₹1,19,18,668.95 |
| Total Orders | 20,000 |
| Total Items Sold | 43,525 |
| Total Events | 80,000 |
| Average Order Value (AOV) | ₹595.93 |
| Customer Retention Rate | 68.26% |

---

## 📅 Monthly Sales Trend

| Month | Revenue |
|-------|---------|
| July | ₹11,37,336.74 |
| May | ₹10,91,377.77 |
| April | ₹10,77,469.41 |
| June | ₹10,56,448.28 |

**Insight:** Sales peaked during July. Revenue dropped significantly in November and December, indicating seasonal demand fluctuations that could be addressed with targeted campaigns.

---

## 👑 Top Revenue-Generating Customers

| Customer ID | Customer Name | Revenue |
|-------------|---------------|---------|
| U009931 | Meagan Case | ₹44,286.70 |
| U009903 | Jessica Russell | ₹43,466.35 |
| U006233 | Willie Esparza | ₹43,060.16 |
| U006469 | Audrey Ware | ₹40,431.01 |

**Insight:** A small group of high-value customers contributes a significant portion of overall revenue — a classic Pareto distribution. These customers are priority targets for loyalty programs.

---

## 📦 Product Performance Analysis

### Best-Selling Products (by Units Sold)

| Product ID | Units Sold |
|------------|-----------|
| P001354 | 54 |
| P000027 | 53 |
| P000244 | 53 |

### Highest Rated Products

| Product ID | Average Rating |
|------------|---------------|
| P000904 | 5.00 ⭐ |
| P000844 | 5.00 ⭐ |
| P000833 | 5.00 ⭐ |

### Lowest Rated Products

| Product ID | Average Rating |
|------------|---------------|
| P001634 | 2.00 ⚠️ |
| P001271 | 2.00 ⚠️ |
| P000974 | 2.00 ⚠️ |

**Insight:** Some products show poor customer satisfaction despite active sales — indicating potential quality, packaging, or expectation mismatch issues that need investigation.

---

## 🔁 Customer Engagement Funnel

| Event Type | Count |
|------------|-------|
| View | 56,013 |
| Cart | 12,035 |
| Wishlist | 7,946 |
| Purchase | 4,006 |

**Insight:** A large drop-off exists between product views (56K) and completed purchases (4K) — roughly a **7% conversion rate**. Cart abandonment and checkout friction are major optimization opportunities.

---

## ⚠️ Customer Churn Analysis

Customers with **no purchases in the last 90 days** were identified as churn-risk customers.

**Churn re-engagement strategies:**
- Personalized discount offers via email
- Loyalty reward reminders
- Targeted re-engagement campaigns based on past purchase behavior

---

## 🎯 RFM Analysis

Customers were segmented using three dimensions:

| Dimension | Definition |
|-----------|------------|
| **Recency** | How recently did the customer purchase? |
| **Frequency** | How often do they buy? |
| **Monetary** | How much do they spend in total? |

**Insight:** High-frequency, high-monetary customers represent loyal premium users. Low-frequency users with recent activity are growth opportunities. Low-recency users are churn candidates.

---

## 💡 Business Insights

- Revenue remained strong from **March to October**
- Customer retention rate is healthy at **68.26%**
- Significant drop-off occurs between **product view → purchase** (conversion funnel gap)
- **Top customers** contribute disproportionately to revenue — Pareto pattern confirmed
- Several products need **quality improvement** due to low ratings
- **Cart abandonment** is a major business challenge requiring UX and pricing improvements

---

## 📌 Recommendations

| Recommendation | Expected Impact |
|---------------|----------------|
| Implement loyalty programs for repeat customers | Higher retention & CLV |
| Improve checkout UX to reduce cart abandonment | Better conversion rate |
| Target churn-risk customers with personalized campaigns | Recovered revenue |
| Fix low-rated products using customer feedback | Improved satisfaction |
| Focus marketing during July (peak month) | Maximized seasonal ROI |
| Bundle best-sellers with low-performing products | Increased average order value |

---

## 🚀 Future Improvements

- Build an interactive **Power BI dashboard** for visual KPI reporting
- Add **customer segmentation** using clustering techniques
- Implement **predictive churn modeling** with Python (Scikit-learn)
- Automate monthly KPI reports using **stored procedures**

---

## ▶️ How to Run

1. Clone the repository
   ```bash
   git clone https://github.com/PagidimarriShiva/Ecommerce-Sql-Business-Case-Study.git
   cd Ecommerce-Sql-Business-Case-Study
   ```

2. Import datasets from the `Ecommerce_Datasets/` folder into MySQL

3. Open and run `E-Commerce Sales & Customer Analysis.sql` in **MySQL Workbench**

4. Review the `ER Diagram.png` for the database schema

---

## 👤 Author

**Shiva Pagidimarri**
Data Analyst | MySQL · SQL · Power BI · Python · Excel

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?style=flat-square&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/shiva-pagidimarri/)
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=flat-square&logo=github&logoColor=white)](https://github.com/PagidimarriShiva)
