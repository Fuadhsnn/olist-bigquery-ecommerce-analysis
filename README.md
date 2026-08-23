# Olist E-Commerce Analysis with BigQuery

## 1. Project Overview

This project analyzes Brazilian e-commerce transaction data from Olist using Google BigQuery and SQL.

The analysis focuses on understanding overall sales performance, customer purchasing behavior, product category performance, seller performance, delivery operations, and payment methods.

The goal is to transform raw e-commerce transaction data into actionable business insights that can support customer retention, operational improvement, and revenue growth.

## 2. Business Objectives

- Analyze overall sales performance and revenue trends.
- Identify high-performing product categories.
- Analyze customer purchasing behavior and repeat purchase patterns.
- Evaluate seller performance based on order volume and revenue.
- Measure delivery performance and identify high-risk sellers.
- Analyze the relationship between delivery performance and customer satisfaction.
- Understand the distribution of payment methods and transaction value.
- Provide data-driven business recommendations based on the analysis.

## 3. Dataset

The dataset used in this project is the Brazilian E-Commerce Public Dataset by Olist.

The dataset contains information about orders, customers, order items, products, sellers, payments, reviews, and delivery dates.

The data was analyzed using multiple related tables in Google BigQuery.

Key tables used in the analysis include:

- orders
- customers
- order_items
- products
- product_category_name_translation
- sellers
- order_reviews
- order_payments

## 4. Tools & Technologies

- Google BigQuery
- SQL

## 5. Analysis

The analysis was performed using SQL queries in Google BigQuery across multiple business dimensions.

### 5.1 Overall Business Performance

Analyzed:

- Total orders
- Total unique customers
- Total revenue
- Average order value (AOV)

### 5.2 Sales Trend Analysis

Analyzed monthly:

- Revenue
- Order volume

The analysis was used to identify changes and trends in sales performance over time.

### 5.3 Product Category Analysis

Analyzed product categories based on:

- Total orders
- Total items sold
- Total revenue

The analysis was used to identify the highest-performing product categories.

### 5.4 Customer Analysis

Analyzed:

- One-time vs repeat customers
- Customer share
- Total customer revenue
- Average customer spending
- Top customers by total spending

### 5.5 Seller Performance Analysis

Analyzed sellers based on:

- Total orders
- Total items
- Total revenue
- Average item price

Top-performing sellers were identified based on revenue.

### 5.6 Delivery Performance Analysis

Analyzed:

- Total delivered orders
- Late orders
- Late delivery rate
- Average delivery time
- Seller-level delivery performance

Sellers with relatively high late-delivery rates were identified as potential operational risks.

### 5.7 Delivery and Customer Satisfaction

Compared:

- On-time vs late deliveries
- Average review score
- Negative review rate

This analysis was used to evaluate the relationship between delivery performance and customer satisfaction.

### 5.8 Payment Analysis

Analyzed payment methods based on:

- Total orders
- Total payment value
- Average payment value- GitHub
- Kaggle / Olist Brazilian E-Commerce Dataset

## 6. Key Findings

### 6.1 Overall Business Performance

- 96,478 total orders were analyzed.
- The business served 93,358 unique customers.
- Total revenue reached approximately $13.22 million.
- Average order value (AOV) was $137.04.

### 6.2 Customer Retention Opportunity

- 97% of customers were one-time customers.
- Only 3% of customers made repeat purchases.
- One-time customers had an average spend of $137.96.
- Repeat customers had an average spend of $260.05.
- Repeat customers had approximately 1.88× higher average spending than one-time customers.

### 6.3 Top Product Categories

The highest-revenue product categories were:

1. Health & Beauty — $1.23M
2. Watches & Gifts — $1.17M
3. Bed Bath Table — $1.02M
4. Sports & Leisure — $954.85K
5. Computers & Accessories — $888.72K

### 6.4 Seller Performance

Seller performance varied significantly across order volume and revenue.

For example:

- One seller generated $226.99K from 1,124 orders.
- Another seller generated $217.94K from only 348 orders.
- This indicates that order volume alone does not fully represent seller revenue performance.

### 6.5 Delivery Performance

- 96,470 delivered orders were analyzed.
- 7,826 orders were delivered late.
- Overall late delivery rate was 8.11%.
- Average delivery time was 12.5 days.
- Several sellers had late delivery rates above 30%, indicating potential operational risks.

### 6.6 Delivery and Customer Satisfaction

Late deliveries were associated with substantially lower customer satisfaction:

- Late delivery: average review score of 2.57/5.
- On-time delivery: average review score of 4.29/5.
- Negative review rate for late deliveries: 54.03%.
- Negative review rate for on-time deliveries: 9.23%.

The negative review rate for late deliveries was approximately 5.9× higher than for on-time deliveries.

### 6.7 Payment Behavior

- Credit card was the dominant payment method with 74,304 orders.
- Credit card transactions represented approximately $12.10M in payment value.
- Credit card had the highest average payment value at $162.24.

## 7. Business Recommendations

### 7.1 Improve Customer Retention

With 97% of customers making only one purchase, the business should prioritize strategies that encourage second purchases.

Potential actions include:

- Post-purchase campaigns
- Personalized promotions
- Second-purchase incentives
- Customer loyalty programs
- Targeted remarketing campaigns

The goal is to increase the conversion of one-time customers into repeat customers.

### 7.2 Focus on High-Value Customers

Repeat customers had an average spend of $260.05 compared with $137.96 for one-time customers.

The business could develop customer segmentation and loyalty strategies to retain high-value customers and increase customer lifetime value.

### 7.3 Monitor High-Risk Sellers

Sellers with consistently high late-delivery rates should receive additional operational monitoring.

Seller performance should be evaluated using both:

- Order volume
- Late delivery rate

This helps avoid prioritizing sellers based only on percentage rates from very small order volumes.

### 7.4 Improve Delivery Reliability

Late deliveries were strongly associated with lower customer satisfaction.

The business should investigate:

- Seller fulfillment performance
- Logistics performance
- Delivery lead times
- Accuracy of estimated delivery dates

Reducing delivery delays may help improve the overall customer experience.

### 7.5 Prioritize High-Revenue Product Categories

High-performing categories such as Health & Beauty, Watches & Gifts, Bed Bath Table, Sports & Leisure, and Computers & Accessories can be prioritized for:

- Inventory planning
- Promotional campaigns
- Cross-selling opportunities
- Merchandising strategies

### 7.6 Monitor Customer Satisfaction as an Operational KPI

Because late deliveries were associated with significantly higher negative review rates, customer review metrics should be monitored alongside operational KPIs.

Combining delivery performance with customer satisfaction metrics can help identify operational issues that have a greater impact on customers.
