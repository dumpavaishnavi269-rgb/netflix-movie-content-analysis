SELECT * FROM newschema.`netflix_cleaned data from python`;
 RENAME  TABLE `netflix_cleaned data from python` TO netflix_cleaned_db;
select * from netflix_cleaned_db;

 # project Workflow;
-- Step 1: Python (Completed)
#Loaded Netflix dataset in Pandas
-- Removed null values and duplicates
-- Fixed data types (Date, Ratings, Vote Count, etc.)
-- Performed EDA and visualizations
-- Exported cleaned dataset as CSV

-- Step 2: MySQL (Current Stage)
-- Created database
-- Imported cleaned CSV
-- Renamed table to netflix_cleaned_db
-- Verified data loaded correctly using:

-- step 1.Data validation Queries.
-- step 2. # Date cleaning queries---
#checking null values 
select count(*) AS total_Records,#--->18records data .
sum(Title is null) AS null_titles,
sum(release_Date is null ) AS null_release_date,
sum(popularity is null) AS total_popularity,
sum(vote_count is null ) AS null_vote_count,
sum(Rating  is null) AS null_Rating,
sum(original_language is null ) AS null_originsl_lan,
sum(poster_Url  is null) AS null_poster,
sum(Genre is null ) AS null_total_Genre
 FROM netflix_cleaned_db;
 -- no null values --
 -- count function -- counting total --> there are 18 records;
 select count(*) from netflix_cleaned_db;
 
 -- business Analysis Queries-- 
 -- 1. What is the total content available on the platform?
  select 
 count(*) AS Total_movies
 from netflix_cleaned_db;
 
 -- 2.Which are the Top 10 most popular movies?
 SELECT title, popularity
 FROM netflix_cleaned_db
 ORDER BY popularity DESC
  LIMIT 10;
 -- 3.Which languages contribute the most content?
 SELECT original_language,
 COUNT(*) AS Movie_Count
FROM netflix_cleaned_db
GROUP BY original_language
ORDER BY Movie_Count desc;
 -- 4.What percentage of content is English?
SELECT
ROUND(
SUM(CASE WHEN Original_language = 'English' THEN 1 ELSE 0 END) * 100.0
/ COUNT(*),
2
) AS English_Percentage
FROM netflix_cleaned_db;

 -- 5. Which genres receive the highest audience engagement?
 select Genre,
 sum(Vote_count) as Total_engagement
 from netflix_cleaned_db
 group by Genre 
 order by Total_engagement desc;
 
 -- 6.Which genres have the highest ratings?
 select Genre,
 sum(Rating)AS Highest_Rating
 from netflix_cleaned_db
 group by Genre
 order by Highest_Rating;
 
 -- 7.Which year had the highest content production?
 SELECT (year) AS Release_Year,
COUNT(*) AS Total_Content
FROM netflix_cleaned_db
GROUP BY Release_year
ORDER BY Total_Content DESC;
 
 -- 8.Which movies generate the highest audience interaction?
 select Title,
 vote_count
 from netflix_cleaned_db
 order by vote_count desc
 limit 3;
 
 -- 9.What are the overall platform KPIs?
 SELECT
COUNT(*) AS Total_Movies,
ROUND(AVG(Rating),2) AS Total_Rating,
SUM(vote_count) AS Total_Votes,
MAX(popularity) AS Highest_Popularity
FROM netflix_cleaned_db;
 
 -- 10.Which movies perform above average?
   select Title,Rating
              from netflix_cleaned_db
      where Rating >
          (
			select avg(Rating) AS Avg_Rating
            from netflix_cleaned_db);

-- 11.Genre Count by Language
select Genre,count(original_Language) AS Total_Count
 from netflix_cleaned_db
 group by Genre
 order by Total_count desc
 limit 5;
 
 -- 12.Which are the Top 10 most popular movies on Netflix based on popularity  and rating score?
 SELECT
Title,
Poster_URL,
Popularity,
Rating
FROM netflix_cleaned_db
ORDER BY Popularity DESC
LIMIT 10;








