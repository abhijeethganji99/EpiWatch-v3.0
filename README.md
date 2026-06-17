# EpiWatch v3.0 — Epidemiology Surveillance & Experimental Intelligence Platform

**[Click here to view the full interactive HTML report](https://abhijeethganji99.github.io/EpiWatch-v3.0/)**

**Author:** Abhijeeth Ganji
**Version:** 3.0 — Complete Research-Grade Surveillance Platform
**Platform:** SAS OnDemand for Academics (zero setup required)
**Language:** SAS (Base SAS, SAS/STAT, SAS/ETS, High-Performance procedures)

## Overview

EpiWatch v3.0 is a 15-step, end-to-end epidemiology surveillance pipeline integrating a broad range of statistical and machine learning methods into a single research platform. It simulates and analyzes outbreak data across three disease domains — antimicrobial resistance (AMR), respiratory illness, and foodborne illness — by combining 7 simulated public-health data sources into a unified surveillance and outbreak-detection platform.

The program builds its own synthetic data (no external files required), runs the full pipeline from data generation through advanced modeling and visualization, and produces a tri-format deliverable: a PDF report, an HTML5 report, and an Excel workbook, all written automatically to an `EpiWatch_Output` folder in the user's session.

## Data Sources (Simulated)

The program generates seven realistic, internally consistent data sources spanning 2018–2023 across 10 U.S. states:

| Source | Domain | Granularity |
|---|---|---|
| CDC NNDSS | AMR, Respiratory, Foodborne | Weekly |
| CDC NHSN | AMR (facility-level) | Yearly, RCBD block structure |
| CDC FluView | Respiratory (ILI) | Weekly |
| CDC FoodNet | Foodborne | Monthly |
| HHS COVID Community Profile | Respiratory (COVID) | Weekly |
| Census ACS | SDOH covariates | Yearly |
| CMS Part D | Antibiotic claims (AMR) | Quarterly |

## The 15-Step Pipeline

| Step | Name | Description |
|---|---|---|
| 0 | Framework | Global setup, 8 reusable macros, custom formats, ODS destinations |
| 1 | Gathering | 7-source multi-disease data simulation |
| 2 | Cleaning | QC, Winsorizing, HIPAA small-cell suppression, recoding |
| 3 | Sampling | PROC SURVEYSELECT + Central Limit Theorem demonstration |
| 4 | Normality | Full normality battery (Shapiro-Wilk, K-S, CvM, AD) + PROC POWER |
| 5 | T-Tests | One-sample, paired, and two-sample t-tests |
| 6 | Engineering | Rt estimation, CUSUM outbreak detection, SDOH linkage, NLP alert generation |
| 7 | ANOVA/GLM | One-way, two-way, RCBD, CRD, and repeated-measures ANOVA |
| 8 | Mixed/RCBD | PROC MIXED (REML), sub-sampling, variance component estimation |
| 9 | Factorial | Latin Square (4×4×4) and two-way RCBD factorial designs |
| 10 | Hypothesis | Formal hypothesis testing framework and design comparison tables |
| 11 | Advanced | Logistic regression, Random Forest (HPFOREST), survival analysis, ITS, negative binomial |
| 12 | Crop/Yield Analogs | Categorized-GLM workflows applied to agricultural-style yield modeling |
| 13 | Visualizing | 25 professional charts (trend lines, heatmaps, panels, survival curves, etc.) |
| 14 | Reporting | Final PDF + HTML5 + Excel tri-format export |

## Statistical Techniques (65+)

Implemented and extended across the pipeline: PROC SURVEYSELECT, UNIVARIATE, POWER, TTEST, GLM, ANOVA, MIXED, GENMOD, PHREG, LIFETEST, HPFOREST, LOGISTIC, SURVEYREG, CORR, FREQ (CMH), FORMAT, SGPLOT/SGPANEL (15+ chart types), hash objects, arrays, an 8-macro framework, LAG()/RETAIN/FIRST.-LAST. processing, and tri-format ODS output.

## Requirements

- A SAS OnDemand for Academics account (or any SAS environment with Base SAS, SAS/STAT, and SAS/ETS licensed; PROC HPFOREST requires SAS Enterprise Miner or equivalent high-performance licensing).
- No external data files — the program generates all data internally via `CALL STREAMINIT` and `RAND()`.

## How to Run

1. Open `EpiWatch_v3_Final_FIXED.sas` in SAS Studio (SAS OnDemand for Academics).
2. **Important:** start from a clean session, or close any open table-viewer tabs for `WORK.NNDSS_RAW`, `WORK.NHSN_AMR_RAW`, `WORK.FLUVIEW_RAW`, `WORK.FOODNET_RAW`, `WORK.COVID_RAW`, `WORK.ACS_SDOH_RAW`, and `WORK.CMS_ABX_RAW` before running (see Troubleshooting below).
3. Run the full program (F3 or Submit). Total runtime is roughly 1–2 minutes, including a ~20-second PROC LIFETEST step.
4. Once complete, the log will print the output paths, e.g.:
   ```
   PDF  → /home/<your_user_id>/EpiWatch_Output/EpiWatch_v3_Report.pdf
   HTML → /home/<your_user_id>/EpiWatch_Output/EpiWatch_v3_Report.html
   XLSX → /home/<your_user_id>/EpiWatch_Output/EpiWatch_v3_Summary.xlsx
   ```
5. Open the `EpiWatch_Output` folder in the SAS Studio file navigator to access all three deliverables.

## Outputs

- **PDF report** — full statistical output with table of contents (style: `journal`)
- **HTML5 report** — browser-viewable version (style: `HTMLBlue`)
- **Excel workbook** — one sheet per pipeline section (Data Quality, Sampling and CLT, Normality and Power, T-Tests, GLM ANOVA, Mixed Models, Factorial Design, Hypothesis Testing, Advanced Models, Crop Yield Analogs, Charts, Executive Summary, Inherited Concepts, Audit Log)
- **Audit log** — every major step is timestamped and logged to `WORK.EPI_AUDIT_LOG`, printed as the final report section

## Troubleshooting

**"WORK.\<dataset\>.DATA is in use" errors on the 7 raw data-build steps**
This is a SAS Studio session issue, not a code bug. It happens when a stale cached copy of one of the seven raw datasets is still open in a table-viewer tab from a previous run. SAS won't let a DATA step recreate a table that's currently open elsewhere in the session. Fix: close those table-viewer tabs (or start a completely fresh SAS Studio session) before re-running.

**Output files not appearing where expected**
The program resolves the output directory dynamically via `%sysget(HOME)` and creates an `EpiWatch_Output` folder under your actual home directory — it does not depend on a fixed path like `sasuser.v94`, which may not exist in every SAS OnDemand session.

**Cosmetic warnings that don't affect output correctness**
- `WARNING: Style EXCELMEDIUM not found` — SAS substitutes a default Excel style automatically.
- `WARNING: Length of character variable ... has already been set` — harmless ordering notes from `LENGTH` statements placed after first use.
- `NOTE: An infinite likelihood is assumed ...` in a couple of PROC MIXED steps — an artifact of near-zero variance in the simulated data for those specific groupings.
- `NOTE: The CLASS variable ... has only one level` in the crop/yield analog step — the categorization thresholds don't span the full range of the simulated SDOH data; doesn't affect the rest of the pipeline.

## Research Methodology Reference

The platform's analytical framework is organized into four methodological phases:
- **Foundational Statistics:** sampling design and power analysis, Central Limit Theorem validation, t-tests and repeated measures, one-way GLM/ANOVA, randomized complete block design with PROC MIXED, factorial Latin Square design, multi-factor RCBD
- **Inferential Framework:** Type I/II error and power analysis, formal hypothesis testing structure, fixed vs. random effects modeling
- **Categorical & Contrast Modeling:** categorized-predictor GLM, Bartlett's test for homogeneity of variance, custom linear contrasts
- **Multi-Factor Experimental Design:** two-way GLM with interaction effects, LSMeans comparisons, Tukey grouping, residual diagnostics

## License / Use

Independent research project, developed for academic, research, and portfolio purposes.
