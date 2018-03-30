-- Here are some questions to answer
-- Keep the questions in the file, and just put the answers below the questions.

/*
  About the DATA
  There are 4 tables
  here is a list with descriptions

  IMPORTANT: YOU MAY CHANGE THE TABLE STRUCTURES IF YOU WOULD LIKE.
      THE LAST QUESTION WILL ASK ABOUT ALL YOUR CHANGES.

  - users
     - just a list of user data
  - emails
     - holds users emails.
     - There is a one to many relationship with the users table. Each user can have many emails
     - One email is marked as the primary email for the user
  - usage_log
     - holds the users session dates and times.
     - contains the login and logout times of every user session.
     - So every time a user logs in, it creates a new entry in this table
  - users_admin
     - only holds a user id
     - if a user's id is in this table, then they are an admin
*/

-- EXAMPLE
-- Write a statement that will return all the users
--  with the last name 'Johnson'

SELECT *
FROM users
WHERE lastname = 'Johnson';

-- QUESTION 1
-- write a statement that returns all the users data
--   including their primary email, if they have one
--   and if they are an admin or not

SELECT users.id, users.firstname, users.lastname, users.age, users.created, user_emails.email, IF(user_admins.id, 1, 0) AS admin
FROM users
LEFT JOIN user_emails ON user_emails.user_id=users.id AND user_emails.primary_email=1
LEFT JOIN user_admins ON user_admins.user_id=users.id;

-- QUESTION 2
-- write a statement that returns all user data
--   including their primary email
--   and if they are an admin or not
--   but only users with emails

SELECT users.id, users.firstname, users.lastname, users.age, users.created, user_emails.email, IF(user_admins.id, 1, 0) AS admin
FROM users
JOIN user_emails ON user_emails.user_id=users.id AND user_emails.primary_email=1
LEFT JOIN user_admins ON user_admins.user_id=users.id;

-- QUESTION 3
-- write a statement that returns all user data
--   that do not have an email
--   and are not admins

SELECT users.id, users.firstname, users.lastname, users.age, users.created
FROM users
LEFT JOIN user_emails ON user_emails.user_id=users.id
LEFT JOIN user_admins ON user_admins.user_id=users.id
WHERE user_emails.email IS NULL AND user_admins.id IS NULL;

-- QUESTION 4
-- write a statement that returns all the users data
--    only users with last name that contains a letter 'B'
--    and also return the number of emails those users have

SELECT users.id, users.firstname, users.lastname, users.age, users.created, COUNT(user_emails.email) AS email_count
FROM users
LEFT JOIN user_emails ON user_emails.user_id=users.id
WHERE users.lastname LIKE '%B%'
GROUP BY users.id;

-- QUESTION 5
-- write a statement that returns all the users data
--    only users that have more than one email
--    and are admins

SELECT users.id, users.firstname, users.lastname, users.age, users.created, COUNT(user_emails.email) AS email_count
FROM users
LEFT JOIN user_emails ON user_emails.user_id=users.id
JOIN user_admins ON user_admins.user_id=users.id
GROUP BY users.id
HAVING email_count > 1;

-- QUESTION 6
-- write a statement that returns all user data
--   with the total amount of time the users have spent on the site
--   in the past 21 days, in minutes

SELECT users.id, users.firstname, users.lastname, users.age, users.created, IFNULL(SUM(TIMESTAMPDIFF(MINUTE, user_usage_logs.login, user_usage_logs.logout)), 0) AS spent_minutes
FROM users
LEFT JOIN user_usage_logs ON user_usage_logs.user_id=users.id AND user_usage_logs.login > DATE_SUB(NOW(), INTERVAL 21 DAY)
GROUP BY users.id;

-- QUESTION 7
-- Write a statement that returns all user data
--   with the total amount of time spent on the site
--   and with the total number of logins
--   beginning of time

SELECT users.id, users.firstname, users.lastname, users.age, users.created, IFNULL(SUM(TIMESTAMPDIFF(MINUTE, user_usage_logs.login, user_usage_logs.logout)), 0) AS spent_minutes, COUNT(user_usage_logs.id) AS login_count
FROM users
LEFT JOIN user_usage_logs ON user_usage_logs.user_id=users.id
GROUP BY users.id;

-- QUESTION 8
-- given the table structure provided.
-- How would you did/would you change/improve our schema? Any Why?
-- Please list all changes that were made and a justification for the change.

--- I made several, mostly small, changes to the table structures. Too many to list out. They were made to conform to MySQL standards and best practices. Mostly they were name changes to create naming uniformity. Also to create better compactness of data types.