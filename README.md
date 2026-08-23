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
