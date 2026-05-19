# E-Commerce Customer & Sales Analytics using SQL
## Project Overview

This project is an end-to-end SQL Business Case Study performed on an E-Commerce dataset containing customer transactions, product purchases, reviews, and user engagement events.

The objective of this project is to analyze:

sales performance
customer behavior
retention trends
conversion funnel
product performance
churn risk
customer lifetime value (CLV)

using advanced SQL queries and business analytics techniques.

## Dataset Information

The dataset contains the following tables:

### Table Name	           Description
- users	                    Customer details
- orders	                  Order transactions
- order_items	              Product-level order details
- reviews	                  Product ratings and feedback
- events	                  Customer interaction events

## Business Problems Solved

This project answers important business questions such as:

- What is the total revenue generated?
- Which months generated the highest sales?
- Who are the top revenue-generating customers?
- What is the customer retention rate?
- Which products are best-selling?
- Which products have the highest and lowest ratings?
- Which users are most active?
- What does the customer conversion funnel look like?
- Which customers are at risk of churn?
- What is the Customer Lifetime Value (CLV)?
- How can customers be segmented using RFM analysis?
  
## SQL Concepts Used

This project demonstrates strong SQL skills using:

-JOINs
- GROUP BY
- Aggregate Functions
- CTEs
- Subqueries
- Window Functions
- DENSE_RANK()
- LAG()
- CASE WHEN
- Date Functions
- RFM Analysis

## Key Project KPIs
### KPI	Value
Total Revenue	             11,918,668.95
Total Orders	             20,000
Total Items Sold	         43,525
Total Events	             80,000
Average Order Value	       595.93
Customer Retention Rate	   68.26%

### Monthly Sales Trend
#### Month	     Revenue
- July	         1,137,336.74
- May	           1,091,377.77
- April	         1,077,469.41
- June	         1,056,448.28

#### Insight

Sales peaked during July while revenue significantly dropped during November and December, indicating possible seasonal demand fluctuations.

### Top Revenue-Generating Customers
Customer ID	      Customer Name	     Revenue
U009931	          Meagan Case	       44,286.70
U009903	          Jessica Russell	   43,466.35
U006233         	Willie Esparza	   43,060.16
U006469         	Audrey Ware	       40,431.01

#### Insight

A small group of high-value customers contributes a significant portion of overall revenue.

## Product Performance Analysis
#### Best Selling Products
##### Product ID	Units Sold
      P001354	     54
      P000027	     53
      P000244	     53
### Highest Rated Products
#### Product ID	     Average Rating
     P000904	      5.00
     P000844	      5.00
     P000833	      5.00
### Lowest Rated Products
#### Product ID	 Average Rating
     P001634	   2.00
     P001271	   2.00
     P000974	   2.00
     
#### Insight

Some products show poor customer satisfaction despite active sales, indicating potential quality or service issues.

### Customer Engagement Funnel
#### Event Type	  Count
- View	          56,013
- Cart	          12,035
- Wishlist	      7,946
- Purchase	      4,006
  
#### Insight

A large drop-off exists between product views and completed purchases, suggesting cart abandonment and checkout optimization opportunities.

### Customer Churn Analysis

Customers with no purchases in the last 90 days were identified as churn-risk customers.

#### Insight

Inactive users can be targeted through:

- re-engagement campaigns
- personalized offers
- loyalty rewards
  
## RFM Analysis

RFM Analysis was performed using:

- Recency
- Frequency
- Monetary value

### Insight

High-frequency and high-monetary customers represent loyal premium users, while low-frequency users are potential churn candidates.

### Window Function Analysis
- DENSE_RANK()

Used to rank top customers based on revenue contribution.

- LAG()

Used to compare daily sales trends with previous days and identify sales fluctuations.

## Business Insights
- Revenue remained strong from March to October.
- Customer retention rate is relatively healthy at 68.26%.
- Significant customer drop-off occurs in the purchase funnel.
- High-value customers contribute disproportionately to revenue.
- Several products require quality improvement due to low ratings.
- Cart abandonment appears to be a major business challenge.

## Recommendations
- Implement loyalty programs for repeat customers.
- Improve checkout experience to reduce cart abandonment.
- Target churn-risk customers with personalized campaigns.
- Improve low-rated products using customer feedback analysis.
- Focus marketing campaigns during high-performing sales months.

## Tools & Technologies Used
- SQL
- MySQL
- Data Analysis
-Business Analytics

## Future Improvements
- Build an interactive Power BI dashboard
- Perform customer segmentation
- Add predictive churn analysis

## Author
### Shiva Pagidimarri

