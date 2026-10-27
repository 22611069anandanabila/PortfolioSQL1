# E-Commerce Sales & Customer Behavior Analysis
**Public Dataset: TheLook E-Commerce Dataset**

## Project Overview
The e-commerce industry generates substantial volumes of transactional data, creating opportunities for businesses to leverage data analytics to evaluate sales performance, understand customer purchasing behavior, and identify high-performing products and markets. **This project analyzes e-commerce transaction data to uncover actionable insights and support data-driven business decisions.**

**Tools Used:** Google BigQuery (SQL) and GitHub  
**Dataset:** `bigquery-public-data.thelook_ecommerce`

---

## Business Objectives & Key Questions

1. How have sales evolved over time?
2. Which products and categories contribute the most to total revenue?
3. What are the customer purchasing patterns in terms of repeat purchases versus one-time transactions?
4. Which geographic markets generate the highest revenue?
5. What strategic recommendations can be derived from the findings?

---

## Data Preparation & Quality Assurance

Prior to conducting the analysis, data quality checks were performed on key columns across the `orders`, `order_items`, `products`, and `users` tables. No missing (`NULL`) values were identified in the critical fields, indicating that the selected data was sufficiently complete for subsequent analysis.

---

## Analysis & Key Findings

### 1. Monthly Sales Trends

**Key Insight:** Monthly revenue demonstrates a consistent upward trend, increasing from $104.13 in January 2019 to $205,465.68 in October 2026. Growth accelerated notably from 2023 onward, with **revenue exceeding $100,000 in July 2026**. October 2026 recorded the highest revenue in the dataset, although this figure should be interpreted cautiously as the month may contain incomplete or anomalous data.

![Monthly Sales Trend Output](assets/01_sales_trend.png)

---

### 2. Top Revenue-Contributing Product Categories

**Key Insight:** **Outerwear & Coats** generated the highest revenue at $336,881.68 (12.50%), followed by Jeans at $304,859.30 (11.31%). Together, these two categories contributed 23.81% of total revenue, highlighting their significant role in overall sales performance. Meanwhile, Intimates recorded the highest sales volume with 3,369 items sold, despite ranking 12th in revenue, indicating that **high sales volume does not necessarily translate into high revenue contribution**.

![Top Categories Output](assets/02_top_categories.png)

---

### 3. Customer Purchasing Behavior & Retention

**Key Insight:** **88.06%** of customers (24,284) made only one purchase, while just **11.94%** (3,292) returned for additional purchases. This indicates a potential customer retention challenge and an opportunity to increase repeat purchase rates through targeted loyalty programs, personalized promotions, and post-purchase engagement strategies.

![Customer Retention Output](assets/03_customer_retention.png)

---

### 4. Regional Sales Performance

**Key Insight:** **China** contributed the largest share of total revenue at $901,994.85 **(33.47%)**, followed by the **United States** at $601,355.59 **(22.31%)** and **Brazil** at $396,260.20 **(14.70%)**. Collectively, these three markets accounted for 70.48% of total revenue, highlighting a strong concentration of sales in these regions and an opportunity to optimize marketing strategies while exploring growth potential in other markets.

![Regional Revenue Output](assets/04_regional_performance.png)

---

## Business Recommendations

1. **Strengthen Customer Retention:** Given that 88.06% of customers made only one purchase, implement targeted retention initiatives, such as loyalty programs, personalized email campaigns, and incentives for second purchases.

2. **Optimize Product Bundling Strategies:** Develop complementary product bundles by combining high-revenue categories, such as Outerwear & Coats, with relevant categories, including Jeans and Intimates, to encourage cross-selling and increase average order value.

3. **Implement Geo-Targeted Marketing:** Prioritize marketing investment in China and the United States based on their substantial revenue contributions, while evaluating campaign performance and market-specific growth opportunities to optimize resource allocation.

---

## Conclusion

This analysis demonstrates how SQL-driven analytics can be used to evaluate sales trends, identify key revenue contributors, assess customer purchasing behavior, and compare regional performance. The findings highlight opportunities to improve customer retention, optimize product strategies, and refine geographic marketing allocation to support sustainable business growth.
