# Multiple Linear Regression: Predicting Healthcare Costs

## Overview
This project applies **Multiple Linear Regression using R** to identify key factors that influence **total healthcare costs**. By analyzing patient demographic, lifestyle, and healthcare utilization variables, the study aims to determine which predictors significantly contribute to increased healthcare spending.

The project follows a complete statistical workflow including data exploration, model building, diagnostics, refinement, and interpretation.

---

## Dataset
**File:** `healthcare_costs_rounded-1.csv`

The dataset contains patient-level healthcare cost data with the following variables:

- **Patient_ID** – Unique identifier for each patient  
- **Age** – Age of the patient  
- **BMI** – Body Mass Index  
- **Smoking_Status** – Binary variable (0 = Non-smoker, 1 = Smoker)  
- **Number_of_Visits** – Number of hospital visits in the past year  
- **Chronic_Conditions** – Number of chronic conditions  
- **Healthcare_Cost** – Total healthcare cost (dependent variable)  

---

## Objectives
The objectives of this analysis are to:
1. Identify which patient characteristics significantly impact healthcare costs  
2. Evaluate the overall performance of a multiple linear regression model  
3. Assess whether model assumptions are satisfied  
4. Improve interpretability through model refinement  

---

## Data Exploration
- Inspected dataset structure using `str()` and `summary()`
- Checked for missing values using `sum(is.na(data))` (no missing values found)
- Visualized variable distributions:
  - **Histograms:** Age, BMI, Number_of_Visits, Healthcare_Cost
  - **Bar plots:** Smoking_Status, Chronic_Conditions

---

## Model Definition
The initial regression model was specified as:


### Hypotheses
- Older age is associated with higher healthcare costs  
- Increased hospital visits increase healthcare costs  
- More chronic conditions increase healthcare costs  
- BMI and smoking status may contribute to cost variation  

---

## Model Results (Full Model)
- **Age:** Positive and statistically significant  
- **Number_of_Visits:** Strong positive and statistically significant  
- **Chronic_Conditions:** Strong positive and statistically significant  
- **BMI:** Not statistically significant  
- **Smoking_Status:** Not statistically significant  

The model showed a **moderate R-squared**, indicating that a substantial portion of cost variability is explained by the predictors.

---

## Model Diagnostics
Diagnostic plots were generated to assess regression assumptions:

- **Linearity:** Reasonably satisfied  
- **Homoscedasticity:** Minor heteroscedasticity but acceptable  
- **Normality of residuals:** Approximately normal  
- **Outliers:** No influential observations requiring removal  

---

## Model Refinement
A refined model was fit by removing statistically insignificant predictors (BMI and Smoking_Status):


### Refined Model Evaluation
- Similar **R-squared** and **Adjusted R-squared** compared to the full model  
- Improved interpretability  
- Retained all statistically significant predictors  

---

## Key Findings
- **Age:** Healthcare costs increase with patient age  
- **Number_of_Visits:** The strongest predictor of healthcare cost  
- **Chronic_Conditions:** Each additional condition significantly raises healthcare costs  

BMI and smoking status did not independently predict healthcare costs after accounting for utilization and chronic disease burden.

---

## Conclusion & Recommendations
This analysis highlights that **healthcare utilization and chronic disease burden** are the primary drivers of healthcare costs.

### Practical Implications
- Focus preventive care on patients with multiple chronic conditions  
- Reduce avoidable hospital visits through care coordination  
- Prioritize cost-management strategies for high-utilization patients  

---

## Files Included
- `  healthcare_cost_prediction_regression.R` – R script with full analysis and comments  
- `REPORT healthcare_cost_prediction_regression.pdf` – Written report with interpretations  
- `healthcare_costs_rounded-1.csv` – Dataset used for analysis  

---

## Academic Context
This project was completed as a **graduate-level  assignment** for **Applied Statistics using R**, focusing on multiple linear regression modeling, diagnostics, and interpretation.

The initial regression model was specified as:

