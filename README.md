# Instagram-User-Analytics
## Table of Contents
- [Project Overview](#project-overview)
- [Tools](#tools)
- [Insights](#insights)
- [Recommendations](#recommendations)

### Project Overview

This project aims to analyse user engagement and interactions on the Instagram platform by utilising MySQL Workbench and SQL. The results of the study are intended to offer useful data for decision-making in a variety of departments, such as investor relations,product,development, and marketing. The objective is to shape the Instagram app's future and help in its growth by gaining insight into customer behaviour.

### Approach to the project

#### Acknowledge the Layout of the Database

- Understanding the schema of database to know the structure and relations between the tables. 

- Found important tables such as users, photos, likes, tags, photo tags.


A) Marketing: The marketing team wants to launch some campaigns, and they need your help with the following

1.Rewarding Most Loyal Users: People who have been using the platform for the longest time. 

Task: Find the 5 oldest users of the Instagram from the database provided

2.Remind Inactive Users to Start Posting: By sending them promotional emails to post their 1st photo.

Task: Find the users who have never posted a single photo on Instagram

3.Declaring Contest Winner: The team started a contest and the user who gets the most likes on a single photo will win the contest now they wish to declare the winner. 

Task: Identify the winner of the contest and provide their details to the team

4.Hashtag Researching: A partner brand wants to know, which hashtags to use in the post to reach the most people on the platform. 

Task: Identify and suggest the top 5 most commonly used hashtags on the platform

5.Launch AD Campaign: The team wants to know, which day would be the best day to launch ADs. 

Task: What day of the week do most users register on? Provide insights on when to schedule an ad campaign

B) Investor Metrics: Our investors want to know if Instagram is performing well and is not becoming redundant like Facebook, they want to assess the app on the following grounds:

1.User Engagement: Are users still as active and post on Instagram or they are making fewer posts.

Task: Provide how many times does average user posts on Instagram. Also, provide the total number of photos on Instagram/total number of users

### Tools 
- Excel - Data cleaning
- MySql Workbench(MySQL Workbench 8.0) - Data Analysis [Download here](https://www.mysql.com/products/workbench/)

### Data Cleaning/Preparation

In the initial data preparation phase the following tasks were performed:
1. Data Loading and inspection.
2. Handling missing values.
3. Data cleaning and formating.

### Insights
The analysis results are summarized as follows:
1.  ‘Smile’ is the most popular hashtag on the Instagram with total of 59 tags, beach is the second most popular hashtag  with total of 42 tags.
2.  Thursday is the day of the week where most users registered on Instagram. Thursday is the best day of the week to conduct ad campaign.
3.  The average number of posts per user on Instagram is 2.57. That means on an average every user is posting at least 2 posts on Instagram.
4.  That means total number of photos on Instagram is approximately 3.5 times the total number of users on Instagram.
5.  The users who are using Instagram for long time have registered on the platform in the same month that is MAY of 2016.
6.   the user with username zack_kemmer93 and user id 52 with post having id 145 has most number of likes (48).He is the winner of the contest.

### Recommendations
1. Marketers may maximise the reach and efficacy of their campaigns by having a thorough understanding of user registration trends, the best days to launch ads, and interaction data.
2. Understanding popular hashtags, user engagement metrics, and content creation patterns guides strategic content planning, ensuring alignment with user preferences. 
