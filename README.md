# Grind-Sales
## The Daily Grind | Sales Performance &amp; Pricing Strategy Analysis


The Daily Grind is a business intelligence and pricing analytics project focused on evaluating sales performance, monitoring gross margin trends, and identifying products that may require pricing adjustments or portfolio review.

The project analyzes the data from 2023 to 2025 to investigate a business concern: a decline in portfolio profitability, potentially driven by increasing Cost of Goods Sold (COGS), tariffs, and other cost pressures.

Using SQL for data preparation and Power BI for analytical reporting, I developed a reporting solution that translates transactional data into actionable business insights.

## Business Problem

analysis addressing three key questions:

1. Which products generated a Gross Margin Percentage (GMP) below 30% in Q3 2025?
2. How did gross margin evolve year over year, and how was revenue distributed across product categories, products, and regions?
3. Which products should be considered for price increases, closer monitoring, or potential discontinuation?

The objective was not only to report historical performance, but also to support evidence-based pricing and portfolio decisions.

## Tools & Technologies

- **SQL (SQL Server / T-SQL):** Data extraction, data consolidation, joins, data cleaning, and calculated business metrics.
- **Power BI:** Data modelling, DAX measures, interactive dashboards, KPI reporting, and trend analysis.
- **DAX:** Gross Profit, Gross Margin %, previous-year comparisons, and year-over-year performance metrics.
- **Data Analysis:** Revenue analysis, profitability assessment, product performance evaluation, and regional comparisons.

## Data Preparation & SQL Workflow

The analysis started by consolidating three annual order tables (`Orders_2023`, `Orders_2024`, and `Orders_2025`) using `UNION ALL`.

The consolidated order data was then enriched through LEFT JOIN operations with:

- `Customers`: Customer information, region, and customer join date.
- `Products`: Product names, categories, selling prices, and base costs.

The preparation process included:

1. Combining transactional records across the three years.
2. Enriching orders with customer and product attributes.
3. Excluding records without a valid CustomerID.
4. Handling missing revenue values by estimating revenue from quantity and product price.
5. Creating calculated profitability metrics.




## Key Business Metrics

The following metrics were used to evaluate financial performance:

**Revenue**: Total sales generated from orders.

**Cost of Goods Sold (COGS)**: Direct costs associated with the products sold.

**Gross Profit**: Gross Profit = Revenue − COGS

**Gross Margin Percentage (GMP)**: GMP = (Gross Profit / Revenue) × 100

Gross Margin Percentage measures the proportion of revenue remaining after accounting for COGS.

**Year-over-Year GMP Change**: The difference between the current period's gross margin percentage and the corresponding previous-year period.


## Power BI Dashboard

The report is organized into two pages.

### Page 1 — Sales Performance & Profitability Overview

This page includes:

- Revenue, profit, quantity, customer, and margin KPIs.
- Gross Margin Percentage trends across 2023–2025.
- Year-over-year gross margin changes.
- Revenue distribution by product category.
- Revenue performance across regions and time.
- Product-level regional performance using a matrix.
- Interactive year and metric selection.

### Page 2 — Product-Level Profitability Analysis

This page focuses on product performance and the identification of low-margin products.

It includes:

- A dedicated Q3 2025 table identifying products with GMP below 30%.
- Revenue and gross margin comparisons by product and year.
- Product-level profitability information to support pricing decisions.

## Key Findings

### 1. Portfolio Gross Margin Trend

The dashboard indicates a decline in overall gross margin:

| Year | Gross Margin |
|---|---:|
| 2023 | 56.64% |
| 2024 | 55.06% |
| 2025 | 52.43% |

The decrease from 56.64% in 2023 to 52.43% in 2025 represents a decline of 4.21 percentage points.

This trend highlights the need for further investigation into product costs, pricing, and changes in sales mix.

### 2. Products Below the 30% Gross Margin Threshold — Q3 2025

Four products were identified below the management-defined 30% gross margin threshold:

| Product | Category | Gross Margin |
|---|---|---:|
| Chemex Filters (100 pack) | Accessories | 16% |
| Minimalist Keychain | Merchandise | 16% |
| Logo Hoodie (Black) | Merchandise | 16% |
| Gooseneck Electric Kettle | Accessories | 29% |

The first three products have particularly low gross margins, while the Gooseneck Electric Kettle is only slightly below the target threshold.

### 3. Revenue and Product Performance

The report provides product-, category-, and region-level views of revenue and profitability, helping identify where sales are concentrated and which products contribute less effectively to gross profit.

## Business Recommendations

The following recommendations are based on the observed margin performance. They should be treated as candidates for further commercial evaluation rather than automatic pricing or discontinuation decisions.

**1. Prioritize pricing reviews**

Chemex Filters, Minimalist Keychain, and Logo Hoodie should be prioritized for pricing and cost reviews because their Q3 2025 gross margins are approximately 16%.

Potential actions include reviewing supplier costs, tariffs, procurement terms, and current selling prices.

**2. Review the Gooseneck Electric Kettle**

With a gross margin of approximately 29%, this product is close to the 30% threshold. A modest pricing adjustment or cost reduction may be sufficient to bring it above the target.

**3. Avoid premature product discontinuation**

A low gross margin alone does not establish that a product should be discontinued. Before making that decision, management should also evaluate:

- Sales volume and revenue contribution.
- Gross profit contribution.
- Margin trends across multiple periods.
- Customer demand and price sensitivity.
- Strategic importance and cross-selling potential.

Products with persistently low or negative margins and limited strategic value may be stronger candidates for discontinuation.

## Conclusion

This project demonstrates an end-to-end analytical workflow, from consolidating and preparing transactional data in SQL to developing an interactive Power BI reporting solution.

More importantly, it illustrates how data analysis can support practical business decisions by connecting financial KPIs, product-level profitability, and historical trends to pricing strategy.

The final objective is to help management move from descriptive reporting toward more informed, evidence-based commercial decisions.

---

## Repository Structure

```text
The-Daily-Grind-Pricing-Analysis/
│
├── SQL/
│   └── data_preparation.sql
│
├── PowerBI/
│   └── The_Daily_Grind_Dashboard.pbix
│
├── images/
│   ├── dashboard_overview.png
│   └── product_profitability.png
│
└── README.md
```

## Skills Demonstrated

SQL | Data Cleaning | Data Transformation | Data Modelling | Power BI | DAX | KPI Development | Profitability Analysis | Revenue Analysis | Business Intelligence | Pricing Strategy | Data-Driven Decision Making
