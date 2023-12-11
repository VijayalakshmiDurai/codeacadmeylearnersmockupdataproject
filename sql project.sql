 
 use c_l_m_dproject; 
select * from users;
alter table users 
rename column 5bb446afaa33d1b9fe000050 to user_id;
alter table users 
rename column US to COUNTRY;
alter table users 
rename column Fortworth to postal;
alter table users 
rename column mobile-user to mobile_app;
select * from progress;
alter table progress
rename column 5bb446afaa33d1b9fe000050 to user_id;
alter table progress
rename column completed to learn_cpp;
alter table progress
rename column MyUnknownColumn to learn_sql;
 
select *
from users
where email_domain like '%.edu'
limit 25;

-- 2. Number of .edu learners located in New York
SELECT COUNT(*) AS edu_learners_in_ny
FROM users
WHERE country = 'New York' AND email_domain LIKE '%.edu';

-- 3. Number of Codecademy learners using the mobile app
SELECT COUNT(*) AS codecademy_learners_using_mobile_app
FROM users
WHERE mobile_app = 'mobile-user';

SELECT strftime('%H', sign_up_at) AS signup_hour,
       COUNT(*) AS signups_per_hour
FROM users
GROUP BY signup_hour
ORDER BY signup_hour;

SELECT u.email_domain, p.learn_cpp, p.learn_sql, p.learn_html, p.learn_javascript, p.learn_java
FROM users u
JOIN progress p ON u.user_id = p.user_id
WHERE u.email_domain LIKE '%.edu'
GROUP BY u.email_domain;


SELECT u.user_id, u.country, p.learn_cpp, p.learn_sql, p.learn_html, p.learn_javascript, p.learn_java
FROM users u
JOIN progress p ON u.user_id = p.user_id
WHERE u.country = 'New York';

SELECT u.user_id, u.country, p.learn_cpp, p.learn_sql, p.learn_html, p.learn_javascript, p.learn_java
FROM users u
JOIN progress p ON u.user_id = p.user_id
WHERE u.country = 'Chicago';