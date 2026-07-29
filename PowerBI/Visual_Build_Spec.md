# Power BI report build specification

## Page
- 16:9 canvas, 1280 x 720
- Page name: Territorial Targeting Overview

## KPI cards
1. Total Sales
2. Priority Markets
3. Weighted Growth
4. Recommended Focus

## Map
- Recommended visual: Azure Maps or Filled Map
- Location: state_name
- Legend: priority_tier
- Size or color: priority_score
- Tooltips: ecomm_sales, online_orders, growth_pct, market_potential, coverage_pct, whitespace_pct

## Ranking chart
- Clustered bar chart
- Y-axis: state_name
- X-axis: priority_score
- Filter: Top N = 10 by priority_score
- Sort descending

## Detail table
- state_name, territory, ecomm_sales, online_orders, growth_pct, priority_score, priority_tier, recommended_action

## Slicers
- territory
- priority_tier

## Formatting
- Import Territorial_Targeting_Theme.json
- Currency: $#,0,,.0M
- Percent fields: 0.0% only if values are divided by 100; otherwise use 0.0
