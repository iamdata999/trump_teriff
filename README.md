## Introduction

This project presents a comprehensive analysis of the **U.S. 2024 trade deficit** in relation to global trading partners, focusing on export-import balances, deficit values, and tariff policies. The aim is to uncover patterns, highlight economic dependencies, and evaluate the effectiveness of tariff responses under the Trump-era policy lens.

We cleaned and prepared a detailed dataset comprising **exports**, **imports**, **deficits**, **population**, and **tariffs** (alleged and response) for over 200 countries. Duplicates were removed, missing values were handled, and trade balances were calculated. We added additional metrics such as **export-to-import ratios** and **import-export differences** to assess each country’s trade positioning.

Key insights were visualized using **horizontal bar charts** to reveal the countries with the highest deficits and their tariff alignment. This allows us to clearly interpret which countries significantly impact the U.S. trade deficit and how tariff policies align (or misalign) with those figures.

SQL check report here: [SQL_project](/new_forcast/)


## Background

The United States has long maintained complex trade relationships with countries around the world, resulting in both trade surpluses and deficits. A **trade deficit** occurs when a country imports more goods and services than it exports, leading to a negative trade balance. In recent years, the U.S. has experienced significant trade deficits with major economies such as **China**, **Mexico**, and **Canada**.

Under the Trump administration, tariff policies were used as a tool to address these imbalances. The strategy included imposing higher tariffs on imports from countries with large trade surpluses with the U.S., aiming to encourage domestic production and reduce dependency on foreign goods. However, the effectiveness of these policies remains a subject of debate.

This project explores the 2024 U.S. trade deficit landscape by analyzing trade data, including exports, imports, and tariff rates. By studying the alignment between **trade deficits** and **tariff measures**, we aim to better understand whether policy responses are consistent with economic realities.


## Tools Used

To ensure data accuracy, efficient analysis, and meaningful visualization, the following tools were utilized throughout the project:

- **PostgreSQL**  
  Used extensively for data cleaning, transformation, and analysis. Key operations included removing duplicates, handling missing values, calculating trade balances, and creating derived metrics such as export-to-import ratios and import-export gaps.

- **SQL Queries**  
  Custom SQL scripts were developed to extract insights directly from the structured dataset. This enabled performance-efficient filtering, aggregation, and sorting of country-level trade data.

- **Manual Data Formatting**  
  CSV data was manually reviewed and cleaned to remove inconsistencies such as self-trade entries and malformed values before being loaded into the database.

- **Chart Generation Tools**  
  Visualizations, especially bar charts, were generated using image-based tools to avoid reliance on Python or code execution environments. These charts helped display trade deficit patterns and tariff alignment in an easily interpretable format.

- **Visual Studio Code (VS Code)**  
  Served as the primary coding environment for writing and organizing SQL scripts, Markdown reports, and managing dataset files.

- **GitHub**  
  Used for version control, collaboration, and tracking changes to code, documentation, and visualization assets throughout the project's lifecycle.


##The Analysis

## 📊 U.S. 2024 Trade Deficit Analysis by Country

This table presents the top contributors to the **U.S. trade deficit in 2024**, showcasing countries with the most significant negative trade balances (exports minus imports):

### 🔍 Key Observations

#### 🟥 Major Deficit Contributors
- **Mexico** and **China** each show a **$-50,000 million** deficit, indicating that the U.S. imports far more from these countries than it exports.
- These are the largest bilateral trade imbalances and highlight critical areas of economic dependency.

#### 🟧 Substantial Deficit Countries
- **Canada**: $-20,000M deficit, reflecting a persistent imbalance even with a close North American partner.
- **Australia** and **New Zealand**: Each around **$-17,907.8M**, which is relatively high and suggests stronger-than-usual import activity.

#### 🟨 Asian Trade Deficit Cluster
- Countries such as **Singapore, India, Indonesia, Malaysia, Vietnam, the Philippines, Colombia, Thailand, and Turkey** all report identical **$-10,000M** trade deficits.
- This signals a pattern of significant **trade imbalance with Southeast and South Asian economies**.

#### 🟦 Other Notable Deficits
- **Bangladesh**: $-6,151.8M – likely driven by textile and garment imports.
- **Bahamas** and **Argentina**: Mid-range deficits.
- **Brazil**: $-1,957.8M – a relatively small imbalance compared to others.

---

### 📌 What It Means

- A **negative `us_2024_deficit`** value means that **U.S. imports exceeded exports** (i.e., a trade deficit).
- Persistent deficits suggest:
  - Strategic or economic dependency.
  - Competitive cost advantages from trading partners.
  - Tariff measures possibly ineffective in correcting imbalances.

---

### 🧠 Implications

- These countries could be **targets for future U.S. trade negotiations** or tariff reforms.
- Large and consistent deficits may impact:
  - U.S. manufacturing and jobs.
  - National economic policies.
  - Trade balance and foreign policy strategies.

---

```sql
SELECT country, us_2024_deficit::FLOAT
FROM trump_teriffs
ORDER BY us_2024_deficit::FLOAT ASC
LIMIT 20;
```

![20 Deficit Country](/asset/20_deficit_country.png)

---

## Trande Efficiency score

## 📊 Trade Performance Summary: Export-Import Balance & Efficiency

This dataset highlights the **export, import, trade deficit**, and **efficiency metrics** for selected countries. It focuses on how well countries convert exports into trade surpluses or manage imbalances.

### 🧾 Column Descriptions

| Column                  | Description                                                                 |
|-------------------------|-----------------------------------------------------------------------------|
| `country`               | Name of the country                                                         |
| `exports`               | Value of exports to the U.S.                                                |
| `imports`               | Value of imports from the U.S.                                              |
| `deficit`               | Exports - Imports (positive = surplus, negative = deficit)                  |
| `export_to_import_ratio` | Exports divided by imports (higher = more favorable trade balance)        |
| `trade_efficiency_score`| A custom metric approximating export strength relative to imports           |

---

### 🔍 Key Observations

#### ✅ High Export Efficiency (Small Countries)
- **Aruba**, **Anguilla**, **Antigua and Barbuda**, and similar **Caribbean nations** show extremely high **export-to-import ratios** (e.g., Aruba: 67.80), indicating that their exports to the U.S. are much higher than their imports.
- This gives them very **high trade efficiency scores** (above 60), though their overall trade volume is small.


#### 🔄 Balanced Trade with Moderate Efficiency
- **Azerbaijan**, **Andorra**, **Armenia**, and **Mauritius** have **moderate export-to-import ratios** (1.3–1.6).
  - They maintain a healthy trade surplus or slight deficit.
  - Efficiency scores reflect stable trade exchanges without sharp imbalance.

---

### 📌 What Does `trade_efficiency_score` Mean?

- This score **approximates how effective** a country is at generating exports per unit of imports.
- High score (e.g., 67.73 for Aruba) means a **very strong export performance** relative to what it imports from the U.S.
- Moderate score (~1.3) means **balanced trade**.
- Low scores would indicate **U.S. has a trade surplus** (not seen here, as most are surpluses to the country).

---

### 💡 Conclusion
- This dataset spotlights small but export-efficient nations.
- Larger economies (e.g., **Bahamas**) show a visible trade imbalance with the U.S. despite being major partners.
- The `trade_efficiency_score` provides a simplified but useful lens for comparing trade balance performance across countries.

---

```sql
SELECT
    country,
    us_2024_exports AS exports,
    us_2024_imports AS imports,
    us_2024_deficit AS deficit,
    ROUND(us_2024_exports::numeric / NULLIF(us_2024_imports::numeric, 0), 2) AS export_to_import_ratio,
    ROUND((us_2024_exports::numeric / NULLIF(us_2024_imports::numeric, 0)) - ABS(us_2024_deficit::numeric) / 10000, 2) AS trade_efficiency_score
FROM trump_teriffs
WHERE us_2024_exports != '0' AND us_2024_imports != '0'
ORDER BY trade_efficiency_score DESC
LIMIT 20;
```
![Trade Efficiency score](/asset/Trade_Efficiency_score.png)

## 📈 Line Chart: Export-to-Import Ratio vs Trade Efficiency Score

**X-axis**: Country names  
**Y-axis**: Score values  

Each country has two key trade metrics plotted:

- 🔵 **Export-to-Import Ratio** (Line with circle markers)  
- 🟢 **Trade Efficiency Score** (Line with square markers)

### Example Data Points:

| Country               | Export-to-Import Ratio | Trade Efficiency Score |
|-----------------------|------------------------|-------------------------|
| Aruba                 | 67.80                  | 67.73                   |
| Anguilla              | 60.42                  | 60.41                   |
| Antigua and Barbuda   | 24.11                  | 24.05                   |
| Bahamas               | 3.15                   | 2.76                    |
| Azerbaijan            | 1.62                   | 1.61                    |
| Kuwait*, Bahrain*, etc. | 1.37                  | 1.32                    |

> This chart helps visualize how efficiently countries convert exports relative to imports, and how closely their trade performance aligns across both metrics.


---

## 📚 What I Learned

Throughout this project, I gained valuable insights into global trade dynamics and the economic impact of U.S. trade deficits in 2024. Key learnings include:

- **Data Cleaning & Transformation**: I learned how to preprocess large, real-world datasets by removing duplicates, handling missing values, and standardizing numerical and percentage formats.

- **Trade Deficit Interpretation**: I explored the significance of trade deficits by country and how they reflect the imbalance between U.S. imports and exports.

- **Tariff Policy Analysis**: By examining alleged and response tariffs under the Trump administration, I understood how policy responses aligned (or didn’t align) with economic data.

- **Metric Engineering**: I developed meaningful indicators such as `export-to-import ratio` and `trade efficiency score` to better assess the effectiveness of each country’s trade performance.

- **Data Visualization**: I created charts to highlight critical findings, helping to reveal which countries had the highest deficits and how they performed in trade efficiency.

This project enhanced my skills in SQL, data storytelling, and analytical thinking around real economic policy data.


---

## ✅ Conclusions

This project provided a data-driven evaluation of the U.S. 2024 trade deficit across global partners, offering critical insights into economic imbalances and tariff policy effectiveness. The conclusions drawn are as follows:

- **High-Deficit Countries Identified**: Countries like **Mexico**, **China**, and **Canada** emerged as the largest contributors to the U.S. trade deficit, each with significant negative balances exceeding billions of dollars.

- **Tariff Misalignment Observed**: Despite high deficits, many countries (e.g., Vietnam, Malaysia, Philippines) had uniformly assigned tariffs (20%), suggesting a broad-stroke policy approach rather than one tailored to economic exposure.

- **Export-Import Ratios Vary Greatly**: Some countries, such as **Bangladesh** and **Angola**, showed extremely low export-to-import ratios, indicating high trade inefficiency from the U.S. perspective.

- **Trade Efficiency Metrics Added Value**: Introducing the `trade efficiency score` helped quantify the balance of trade more meaningfully and highlighted outliers like **Aruba** and **Anguilla**, which had high surplus scores despite smaller trade volumes.

- **Southeast Asia as a Focus Region**: Multiple Southeast Asian countries (e.g., Singapore, Indonesia, Vietnam, Thailand) clustered around similar tariff rates and trade metrics, hinting at a potential region-based policy framework.

In summary, this analysis emphasizes the need for **more nuanced trade policy**, based on actual trade deficits and efficiency metrics rather than flat-rate tariff strategies. It also highlights how data analytics can support smarter economic decision-making.


