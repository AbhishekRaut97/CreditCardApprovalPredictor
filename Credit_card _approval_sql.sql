#Credit card approval project

-- Q1.Group the customers based on their income type and find the average of their annual income.
SELECT Type_income, AVG(Annual_income) AS average_income
FROM applicant_details
GROUP BY Type_income;


-- Q2.Find the female owners of cars and property.
SELECT DISTINCT Ind_ID, gender,car_owner,property_owner
FROM applicant_details 
WHERE gender = 'F' AND car_owner = 'Y' AND property_owner = 'Y';

-- Q3.Find the male customers who are staying with their families.
SELECT Ind_ID, gender, housing_type
FROM applicant_details
WHERE gender = 'M' AND housing_type = 'With parents';

-- Q.4.Please list the top five people having the highest income.
SELECT Ind_ID, annual_income
FROM applicant_details
ORDER BY annual_income DESC
LIMIT 5;

-- Q5.How many married people are having bad credit?
SELECT COUNT(*) AS married_people_with_bad_credit
FROM applicant_details
WHERE marital_status = 'Married' AND label = 1;

-- Q6.What is the highest education level and what is the total count?
SELECT education, COUNT(*) AS total_count
FROM applicant_details
GROUP BY education
having education='higher education'
ORDER BY total_count DESC
LIMIT 1;

-- Q7.Between married males and females, who is having more bad credit?
SELECT gender, COUNT(*) AS bad_credit_count
FROM applicant_details
WHERE marital_status = 'Married' AND label = 1
GROUP BY gender;






select* from applicant_details;