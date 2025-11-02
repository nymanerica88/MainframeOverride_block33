--Clues provided in the homework prompt: 
--1. Forum Post Made April 2048
--2. Post mentioned EmptyStack and Dad; poster shares the same last name as the father; father also participates in the forum

--This query finds the author (username) for all posts mentioning EmptyStack (non-case sensitive) between April 1,2048 and April 30,2048
--returned two usernames: steep-mechanic-65 and smart-money-44
SELECT author 
FROM forum_posts 
WHERE content ILIKE '%EmptyStack%' 
AND date >= '2048-04-01' 
AND date <= '2048-04-30';

--This query finds the last name of the usernames steep-mechanic-65 and smart-money-44 in the forum accounts table
-- smart-money-44 returned the last name Steele, steep-mechanic-65 returned nothing, so we can assume that this user is no longer active in the forum
SELECT username, last_name 
FROM forum_accounts 
WHERE username IN ('steep-mechanic-65','smart-money-44');

-- This query returns all active user accounts with the last name Steele; there were three (3) returned: 
--sharp-engine-57 - Andrew Steele
--stinky-tofu-98 -Kevin Steele
--smart-money-44 - Brad Steele
SELECT username, first_name, last_name 
FROM forum_accounts  
WHERE last_name = 'Steele';

-- This query returns all users in the emptystack_accounts table with the last name Steele
-- triple-cart-38 - password456 - Andrew Steele
-- lance-main-11 - password789 - Lance Steele
SELECT username, password, first_name, last_name 
FROM emptystack_accounts  
WHERE last_name = 'Steele';

-- The assignment prompt indicates that only one user will appear in both tables.
-- That user is Andrew Steele and his credentials are as follows: 
-- username: triple-cart-38
-- password: password456

-- I exited psql and entered 'node mainframe' into the terminal and entered the username and password above
-- a new file was generated, named emptystack.sql
-- I ensured that emptystack.sql was added to the database 

--This query pulled all messages from emptystack message where a taxi was mentioned; there was only one
--username: your-boss-99
--id: LidWj
--code: TAXI
SELECT *                                             
FROM emptystack_messages
WHERE body ILIKE '%taxi%';

--This query pulls the account username, password, first name, and last name for the bosses account
--password: notagaincarter
SELECT * 
FROM emptystack_accounts 
WHERE username='your-boss-99';

--This query pulls everything from the emptystack_projects table where the code is equal to taxi
--This returned the id number: DczE0v2b
SELECT * 
FROM emptystack_projects 
WHERE code='TAXI';

-- I exited psql and ran 'node mainframe-stop' in the terminal and entered the following: 
-- Username: your-boss-99
-- Password: notagaincarter
-- Project ID: DczE0v2b

--*I received comfirmation of the shutdown sequence, completing the assignment.* 