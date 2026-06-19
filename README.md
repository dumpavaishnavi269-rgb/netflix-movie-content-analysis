# Project Title
Netflix Movie Content Analysis

## Introduction
Netflix is one of the world's largest streaming platforms, offering thousands of movies and TV shows across different genres, countries, and languages. As the volume of content grows, analyzing Netflix's content library can help identify trends in content production, audience preferences, content ratings, and regional distribution.

## Project Overview
This project analyzes Netflix movie data to explore content popularity, ratings, genres, languages, and release trends. The goal is to uncover meaningful insights using data analysis and visualization techniques.

## Objectives
- Analyze Netflix movie content.
- Identify the most popular movies.
- Find the top genres and languages.
- Study movie release trends over time.
- Analyze movie ratings and popularity.
- Visualize key insights using charts.
- Generate data-driven conclusions.

## Tech Stack
- **Python**: Pandas, NumPy (data cleaning, preprocessing, EDA)
- **MySQL / MySQL Workbench**: aggregations, subqueries, CASE-based logic, KPI queries
- **Dataset**: 9,836 movie records — Title, Release Date, Popularity, Vote Count, Rating, Original Language, Genre, Poster URL, Year

## Project Steps

**Step 1 — Data Collection**
Sourced a Netflix/TMDB-style movie dataset containing 9,836 records across 10 attributes.

**Step 2 — Data Cleaning (Python)**
Loaded the dataset in Pandas, removed null values and duplicate records, corrected data types (dates, ratings, vote counts), and exported the cleaned dataset as a CSV file.

**Step 3 — Exploratory Data Analysis (Python)**
Performed EDA using Pandas and NumPy to examine distributions, outliers, and relationships across popularity, rating, genre, language, and release year.

**Step 4 — Database Setup & Validation (MySQL)**
Created a database, imported the cleaned CSV, renamed the table, and ran data validation queries to confirm data integrity across all key columns.

**Step 5 — Business Analysis (MySQL)**
Wrote and executed 12+ SQL queries covering content volume, top popular movies, language distribution, genre engagement, yearly trends, platform KPIs, and above-average performers.

**Step 6 — Insight Generation & Reporting**
Consolidated findings into key metrics to support content strategy and audience preference analysis.

## Responsibilities
- Engineered and optimized a dataset of 9,836 Netflix movie records using Python (Pandas, NumPy), ensuring high data integrity through systematic cleansing, validation, and preprocessing.
- Utilized MySQL to develop and execute 12+ analytical queries, leveraging aggregations, subqueries, KPI-driven metrics, and CASE-based logic to uncover insights on content trends, ratings, and audience engagement patterns.

## Impact
- Achieved 99.9% data accuracy through comprehensive data cleansing and validation, establishing a reliable foundation for analytics and business reporting.
- Generated actionable insights revealing that 76.95% of the catalog comprised English-language content and 53.82% of titles exceeded the platform's average rating, supporting content trend analysis and audience preference evaluation.

## Key Findings
| Metric | Value |
|---|---|
| Total records analyzed | 9,836 |
| Data accuracy | 99.9% |
| English-language content | 76.95% |
| Titles above average rating | 53.82% |
| Platform average rating | 6.44 / 10 |
| Total votes analyzed | 13,687,065 |
| Distinct languages | 43 |
| Distinct genres | 19 |
| Top genre by volume | Drama (3,744 titles) |
| Top genre by engagement | Drama (5.1M+ votes) |
| Peak content year | 2021 (714 releases) |

## Full Genre Distribution (19 genres)
| Genre | Count |
|---|---|
| Drama | 3,744 |
| Comedy | 3,031 |
| Action | 2,686 |
| Thriller | 2,488 |
| Adventure | 1,853 |
| Romance | 1,476 |
| Horror | 1,470 |
| Animation | 1,438 |
| Family | 1,414 |
| Fantasy | 1,308 |
| Science Fiction | 1,273 |
| Crime | 1,242 |
| Mystery | 773 |
| History | 427 |
| War | 308 |
| Music | 295 |
| Documentary | 215 |
| TV Movie | 214 |
| Western | 137 |

## Full Language Distribution (Top 10 of 43)
| Language | Count |
|---|---|
| English | 7,569 |
| Japanese | 645 |
| Spanish | 339 |
| French | 292 |
| Chinese | 238 |
| Korean | 170 |
| Italian | 123 |
| Russian | 83 |
| German | 82 |
| Portuguese | 37 |

## SQL Queries Covered
1. Data validation (null checks across all columns)
2. Total content volume
3. Top 10 most popular movies
4. Language-wise content distribution
5. Percentage of English-language content (CASE-based)
6. Genre-wise audience engagement (vote count aggregation)
7. Genre-wise rating analysis
8. Year-wise content production trends
9. Top movies by audience interaction (vote count)
10. Platform-wide KPI summary (avg rating, total votes, max popularity)
11. Above-average performing titles (subquery)
12. Genre count by language
13. Top 10 movies by popularity and rating combined

## Files
- `netflix_cleaned_data_from_python.csv` — cleaned dataset (output of Python preprocessing stage)
- `netflix_queries_dataset.sql` — full set of MySQL business analysis queries

## Conclusion
This analysis of the Netflix movie dataset highlights clear patterns in content production, language distribution, and audience engagement. English-language content dominates the catalog at 76.95%, Drama leads both in volume (3,744 titles) and engagement (5.1M+ votes), and content production peaked in 2021 with 714 releases. Overall, the project demonstrates how a combination of Python-based cleaning/EDA and SQL-based business querying can transform a raw dataset of 9,836 records into clear, data-driven insights that support content strategy and platform decision-making.
