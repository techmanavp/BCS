# 🛍️ Sales Uplift: Strategy Insights from Multi-Region Retail Data

> A Business Analyst case study — extracting, analyzing, and visualizing retail transaction data using **SQL** + **Power BI** to drive Q3 sales strategy.

![SQL](https://img.shields.io/badge/SQL-MySQL-4479A1?logo=mysql&logoColor=white)
![Power BI](https://img.shields.io/badge/Dashboard-Power%20BI-F2C811?logo=powerbi&logoColor=black)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

---

## 📌 Project Overview

This project simulates the role of a **Business Analyst** at a multi-region retail company. The goal is to turn a raw transactions dataset into **actionable business insights** — using SQL for structured analysis and Power BI for an interactive visual dashboard that supports the company's Q3 sales strategy.

**Key business questions answered:**
- 🏆 Who are the most valuable customers?
- 📦 Which products should we focus on next quarter?
- 💻 Is Online outperforming Offline?
- 🌍 Do any regions need more marketing support?

---

## 🗂️ Dataset

**File:** `RetailTransactions.csv`

| Column | Description |
|---|---|
| `TransactionID` | Unique ID of the transaction |
| `Date` | Date of transaction |
| `ProductName` | Name of product sold |
| `Category` | Product category |
| `Region` | Sale region (East, West, North, South) |
| `SalesChannel` | Online / Offline |
| `Quantity` | Units sold |
| `UnitPrice` | Price per unit |
| `TotalAmount` | Quantity × UnitPrice |
| `PaymentMode` | Credit Card, Cash, UPI, Net Banking |
| `CustomerID` | Unique ID of customer |

---

## 🧰 Tools Used

| Tool | Purpose |
|---|---|
| **MySQL** | Data loading, cleaning, and analytical querying |
| **Power BI** | Interactive dashboard & visualization |

---

## 🧮 Part 1 — SQL Analysis (`RetailAnalysis.sql`)

Seven analytical queries were written and executed against the `RetailTransactions` table:

| # | Query | Purpose |
|---|---|---|
| 1 | Total sales per region (last quarter) | Identify regional performance |
| 2 | Top 5 best-selling products by revenue | Spot star products |
| 3 | Monthly sales trend (all regions) | Track seasonality |
| 4 | Region-wise % contribution to total sales | Compare relative regional weight |
| 5 | Online vs Offline sales by month | Channel performance comparison |
| 6 | Category-wise monthly trend | Spot rising/falling categories |
| 7 | Customers with >10 purchases | Identify loyal customers |

---

## 📊 Part 2 — Power BI Dashboard (`Dashboard.pbix`)

An interactive single-page dashboard built on top of the SQL/CSV data.

### Visuals included
-  **Region-wise Sales Breakdown** — Pie Chart
-  **Monthly Sales Trend** — Line Chart
-  **Top 5 Products** — Clustered Bar Chart
-  **Sales Channel Distribution (Online vs Offline)** — Donut Chart
-  **Category Performance Trend** — Line Chart (by Category)

### KPI Cards
| KPI | Metric |
|---|---|
| 💰 Total Sales | Sum of all transaction revenue |
| 🧾 Total Transactions | Count of transactions |
| 👥 Unique Customers | Distinct customer count |
| 💳 Average Order Value | Revenue ÷ Transactions |

### Interactivity
- 🌍 Slicer — **Region**
- 📅 Slicer — **Month**
- 🛒 Slicer — **Sales Channel**

---

## 💡 Key Insights (`Insights.txt`)

1. **East** region generated the highest revenue (₹5.00M, 27.11%), while **West** contributed the least (₹4.36M, 23.66%) — West may need extra marketing focus.
2. **Electronics** is the top category, led by **LED TV 32in** (₹5.47M) — nearly 3x the next best-seller (Smartwatch, ₹1.67M).
3. **Online** sales (58.68%, ₹10.82M) clearly outperform **Offline** (41.32%, ₹7.62M) — a strong digital shift.
4. Revenue peaks in **April & July 2025**, with a dip in **February 2025** — good window for promotions.
5. **776 unique customers**, average order value of **₹3.07K** — healthy per-transaction spend.
6. Loyal customers like **CUST0532 (52 orders)** and **CUST0533 (45 orders)** drive disproportionate revenue — a loyalty program could help.
7. **Grocery** consistently has the lowest category revenue — needs pricing/promo strategy review.

---

## 🎯 Learning Outcomes

- Applied **SQL** for structured, real-world data analysis
- Built a **Business Intelligence dashboard** using Power BI
- Derived **actionable insights** from raw retail transaction data
- Practiced translating data into **business strategy recommendations**

---

## 👨‍💻 Author

**Manav Patel**
📧 manavpatel.tech@gmail.com
🔗 [GitHub](https://github.com/techmanavp)
