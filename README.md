# Superstore Business Performance Analysis

A full end-to-end business analytics project analysing sales,
profit, and discount performance across regions, categories,
and customer segments.

## Tools Used

- Python (pandas, matplotlib, seaborn)
- SQL (SQLite)
- Tableau
- Jupyter Notebook

## Project Structure

```
superstore-analysis/
├── data/ # Raw data (see data/README.md for download)
├── notebooks/ # EDA and SQL analysis notebooks
├── sql/ # SQL query bank
├── reports/ # Executive summary and dashboard screenshots
└── README.md
```

## Key Findings

- Furniture operates at just 2% profit margin vs 17% for Technology
- 933 orders with discounts above 40% generated a $99K combined loss
- Profit margin improved from 10% to 13% between 2014–2017
- Home Office has the highest profit margin (14%) despite lowest volume

## Recommendations

1. Cap discounts at 20% to recover up to $99K in losses
2. Review bottom 10 products for discontinuation or repricing
3. Increase focus on high-margin areas: Home Office,
   Technology East, and Office Supplies West

## Dashboard

[Link to Tableau Public dashboard] ← add this once published

## Project Walkthrough

- [01_eda.ipynb] — Exploratory data analysis across 5 business questions
- [02_sql.ipynb] — SQL query bank with business interpretations
- [reports/superstore_executive_summary.md] — Final executive summary
