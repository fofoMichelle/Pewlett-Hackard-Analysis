# Pewlett-Hackard-Analysis
# Overview of the analysis
The purpose of this analysis was identifying the number of employees who will be retiring to be able to manage their human capital and avoid dealing with a shortage of employee which will be hurting their business.
To help conduct the analysis we first had to establish the relationship between the set of data we were given to analyze with the hep of the entity relationship diagrams (ERDs).
Here is a quick overview of the diagrams we created :

![QuickDBD-export](https://user-images.githubusercontent.com/99924850/164130243-e8c071f8-eea1-4c29-b600-d64949f4a358.png)

After that we created tables with the help of "PostgresSQL" and imported the csv files were given to visualize our data.

# Results

Over the course of our analysis we created tables to single out the number of employes who will be retiring and analyzed the impact it would have on their departments.
Some of those the tables included but was not limited to the retiring titles and mentorship programs

## Retiring titles

This table was created to get the number of employees who will be retiring as well as their titles to better assess the number of employees the company will need to hire to replace them or even promote.
The major takeways observed after the creation of the table were the following
- 90,398 employees will be retiring soon
- 57,668 senior level employees will be retiring
- 2 managers will be retiring
- the positions most affected by the incoming "silver tsunami" will be "Senior Engineer" and "Senior Staff"

![image](https://user-images.githubusercontent.com/99924850/164132590-8665d23a-6c44-47e5-bfc6-29e762181cf4.png)

## Mentorship Eligibility

To prepare for the incoming wave of retirement our boss suggested to create a mentorship program to train the next generation of employee and the possible new hires.

We can observe the following points based on our table:
- 1549 employees are eligible for the mentorship program
- none of the managers retiring is eligible for the mentorship program
- less than 2% of the staff retiring are eligible for the mentorship program
- senior level employees make up for most of the eligible mentor

![image](https://user-images.githubusercontent.com/99924850/164141681-09ec8d6d-db6f-4a05-953e-4a27ad680dec.png)


# Summary

The data generated suggest that Pewlett Hackard will have some challenges with training new talent to replace the aging employees. Although the mentorship program is a great idea it relies heavly on the retiring employee being fit enough to accept to be part of the program and them accepting the big challenge of training each at least 58 new employees .
90,398 roles will need to be filled once the aging employees start retiring and based on the analysis we performed there might not be enough employees eligible for the mentorship program to train the new hires who will be replacing them 
We can extend the mentorship eligibility by an additional year which can be done by modifying one line on the query we used to create the mentorship program like below
**And(e.birth_date Between '1964-01-01' AND '1965-12-31')***
This will make the workload of the mentors a bit manageable
We can also create a new table to higlight the employees that will be eligible to a manager position based on their seniority and performances and to do that we would need a new set of data that would higlight the performance of the current employees and filter it by how many years they are left working before retiring which in one way will give the company a way of replacing the retiring managers and with that we solve the issue of high turn over within the company.

