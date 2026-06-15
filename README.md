# Meridian Industrial Systems — Supplier Performance Analysis

## Project Overview
This project simulates a real-world supply chain analyst role at Meridian Industrial Systems, 
a fictional industrial manufacturer. The objective was to evaluate supplier performance across 
Q1–Q2 2025 using industry-standard tools and deliver actionable insights to management.

This portfolio demonstrates end-to-end supply chain analytics — from raw data entry in an ERP 
system to visual dashboards, structured databases, and written supplier reviews.

---

## Business Scenario
Meridian sources components from three suppliers:
- **Lianfeng Manufacturing Co.** (China)
- **Hangzhou Precision Parts** (China)
- **Kelso Industrial Supply** (USA)

Management requested a full performance review covering delivery reliability, fill rates, 
and quality rejection rates to identify risks and drive corrective action.

---

## Tools & Skills Used
| Tool | Purpose |
|------|---------|
| Microsoft Excel | Supplier scorecard with weighted KPI scoring |
| Microsoft Power BI | Interactive performance dashboard |
| Microsoft Word | Formal supplier review one-pagers |
| Odoo 17 ERP | Purchase orders, delivery receipts, data export |
| SQL (SQLite) | Relational database queries and performance analysis |

---

## Key Findings
| Supplier | Overall Score | Fill Rate | Status |
|----------|--------------|-----------|--------|
| Hangzhou Precision Parts | 88.20 | 96.7% | Meets Threshold |
| Lianfeng Manufacturing Co. | 87.44 | 98.3% | Meets Threshold |
| Kelso Industrial Supply | 86.70 | 95.6% | Below Threshold |

- Kelso Industrial Supply ranked lowest across all three performance categories
- Kelso had two problem shipments in Q1 2025: one short delivery (Feb) and one late delivery (Mar)
- Lianfeng had the highest fill rate but scored lower on quality metrics
- SQL analysis confirmed fill rate rankings: Lianfeng 98.3% > Hangzhou 96.7% > Kelso 95.6%

---

## Deliverables
- `Meridian_SupplierScorecard_Q2_2026.xlsx` — Weighted KPI scorecard
- `POWER BI - SUPPLY CHAIN ANALYST - CLAUDE.pbix` — Power BI dashboard
- `Meridian_SupplierReview_Lianfeng_Q1Q2_2025.docx` — Supplier one-pager
- `Meridian_SupplierReview_Hangzhou_Q1Q2_2025.docx` — Supplier one-pager
