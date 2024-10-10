use insta_data;
select * from users 

select * from tags
select * from follows
select * from photo_tags
select * from photos
select * from likes
-- Find the 5 oldest users of the Instagram from the database provided
 select id as old_user_id, username, created_at 
    from ( 
                 Select * from users  
                 order by created_at asc ) a 
                 limit 5; 
--Find the users who have never posted a single photo on Instagram

Select u.id, u. username 
           from users u 
           left join photos p on u.id = p.user_id 
           where p.id is null; 

--Declaring Contest Winner: 
--The team started a contest and the user who gets the most likes on a single photo will win the contest now they wish to declare the winner.
-- Identify the winner of the contest and provide their details to the team

 select us.id as win_user,  
              p.id as photo_id, 
              us.username, count(l.user_id) as total_likefrom users us 
              join photos p on us.id = p.user_id 
              join likes l on p.id = l.photo_id 
             group by us.id, p.id,us.username 
             order by total_likes desc 
             limit 1;

--Hashtag Researching: A partner brand wants to know, which hashtags to use in the post to reach the most people on the platform.
--Identify and suggest the top 5 most commonly used hashtags on the platform

 select tg.tag_name,count(ptg.photo_id) as total_tags 
                   from tags tg 
                   join photo_tags ptg on ptg.tag_id = tg.id 
                   group by tg.tag_name 
                   order by total_tags desc 
                   limit 5;

--Launch AD Campaign: The team wants to know, which day would be the best day to launch ADs.
-- What day of the week do most users register on? Provide insights on when to schedule an ad campaign

select* from (select dayname(created_at) as popular from users) a 
                  group by popular 
                  order by count(popular) desc 
                  limit 1;

--User Engagement: Are users still as active and post on Instagram or they are making fewer posts
--Provide how many times does average user posts on Instagram. provide the total number of photos on Instagram/total number of users

select avg(total_posts_peruser) as avg_count_posts from (select   
u.id,u.username,count(p.id) as total_posts_peruser  
from users u  
left join  photos p on u.id=p.user_id group by u.id) total 
  
--provide the total number of photos on Instagram/total number of users
  
select count(*)/count(distinct u.id) as taskB_1_2 from photos p join users u on on 
p.user_id = u.id;

--Bots & Fake Accounts: The investors want to know if the platform is crowded with fake and dummy accounts
-- Provide data on users (bots) who have liked every single photo on the site (since any normal user would not be able to do this).
Select u.id AS bot_id, u.username as bot_name 
from users u 
where not exists ( 
select 1 
from photos p 
left join likes l on p.id = l.photo_id and l.user_id = u.id 
where l.user_id is null 
); 
