# 📊 Marketing Funnel Analysis (SQL Data Analyst Project)

## 📌 Project Overview

This project analyzes a **marketing funnel for an e-commerce platform** using SQL and real-world analytical techniques.

The objective is to understand how users move through the funnel:

Visit → Product View → Add to Cart → Checkout → Purchase

By analyzing this funnel, businesses can identify **conversion bottlenecks and optimization opportunities**.

---

## 🎯 Business Questions

This project answers key marketing and product analytics questions:

* How many users visit the website?
* What percentage of visitors view products?
* How many users add items to their cart?
* Where do users drop off in the funnel?
* What is the final purchase conversion rate?
* How does conversion differ by country or user segment?

---

## 🗂️ Project Structure

```
marketing-funnel-analysis
│
├── data
│   ├── customers.csv
│   ├── products.csv
│   ├── orders.csv
│   ├── order_items.csv
│   └── returns.csv
│
├── sql
│   ├── schema.sql
│   ├── data_import.sql
│   ├── funnel_analysis.sql
│   └── business_queries.sql
│
├── dashboard
│   └── funnel_dashboard.pbix
│
└── README.md
```

---

## 🧱 Data Model

The database contains the following main tables:

* **users** → customer information
* **sessions** → user sessions on the website
* **events** → user actions (visit, product view, add to cart, checkout)
* **orders** → completed purchases
* **marketing_touches** → marketing campaign interactions

---

## 📊 Funnel Analysis Query

Example SQL query used to calculate the funnel metrics:

```sql
WITH funnel AS (
SELECT
COUNT(DISTINCT CASE WHEN event_type='visit' THEN session_id END) AS visits,
COUNT(DISTINCT CASE WHEN event_type='product_view' THEN session_id END) AS product_views,
COUNT(DISTINCT CASE WHEN event_type='add_to_cart' THEN session_id END) AS add_to_cart,
COUNT(DISTINCT CASE WHEN event_type='checkout' THEN session_id END) AS checkouts
FROM events
)

SELECT
visits,
product_views,
add_to_cart,
checkouts,
ROUND(product_views::numeric / visits * 100,2) AS visit_to_view_rate
FROM funnel;
```

---

## 📈 Key Insights

Example insights derived from the analysis:

* A large percentage of users drop off **between product view and add to cart**
* Checkout completion rate is significantly lower than expected
* Certain countries show **higher conversion rates**

These insights help companies **optimize their marketing and product strategy**.

---

## 🛠️ Tools Used

* **PostgreSQL**
* **SQL**
* **Power BI / Tableau**
* **Git & GitHub**

---

## 🚀 Author

**Mamadou Kamara**

Data Analyst | SQL | Business Analytics

GitHub: https://github.com/K-pro26
