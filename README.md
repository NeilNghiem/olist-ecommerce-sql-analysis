# 🛒 Brazilian E-Commerce Sales & Business Performance Analysis

## 📌 Executive Summary
This project analyzes the public **Olist E-Commerce dataset** containing over 100,000 anonymised orders placed between 2016 and 2018. The objective of this analysis is to evaluate sales performance, order completion rates, geographical customer distribution, and revenue growth trends to deliver actionable commercial insights.

---

## 🛠️ Tech Stack & Methodology
* **Database Engine:** SQLite
* **SQL Client:** DBeaver 26.1
* **Core SQL Techniques:** Multi-table `INNER JOIN`s, Data Aggregations (`SUM`, `COUNT`), Date-time Manipulation (`strftime`), Filtering (`WHERE`), Grouping (`GROUP BY`), and Ordering (`ORDER BY`).

---

## 📊 Key Insights & SQL Solutions

### 1. Order Status Breakdown
Analyzed order fulfilment pipelines to assess operational efficiency and delivery success rates.

### 2. Top Regional Markets by Order Volume
Identified key geographic hubs to help optimize logistics routing and local warehouse distribution.
* **Key Finding:** São Paulo (`SP`) represents the largest market share by a substantial margin, generating **41,746 completed orders**.

### 3. Financial Performance: Delivered Revenue vs Freight Costs
Evaluated total gross revenue against shipping costs for successfully delivered orders (`order_status = 'delivered'`).
* **Delivered Product Revenue (GMV):** R$ 13,221,498.11
* **Total Freight Charges:** R$ 2,198,275.64

### 4. Monthly Revenue Growth Trends (Time-Series Analysis)
Extracted monthly purchasing trends (`YYYY-MM`) using `strftime` to evaluate business expansion over time.
* **Key Finding:** Revenue showed rapid scale, expanding from R$ 134.97 in September 2016 to over R$ 607,399.67 by September 2017.

### 5. Top 5 Product Categories by Revenue
Determined top-performing inventory categories to assist marketing and stock allocation strategy.
1. **Health & Beauty (`beleza_saude`):** R$ 1,233,131.72
2. **Watches & Gifts (`relogios_presentes`):** R$ 1,166,176.98
3. **Bed, Bath & Table (`cama_mesa_banho`):** R$ 1,023,434.76
4. **Sports & Leisure (`esporte_lazer`):** R$ 988,048.97
5. **Computers & Accessories (`informatica_acessorios`):** R$ 911,954.32

---

## 📁 Repository Structure
```text
├── queries/
│   └── olist_analysis.sql   # Complete SQL script containing all 5 queries
├── screenshots/             # DBeaver query execution results
└── README.md                # Project documentation
