Select e.emp_no,
	e.first_name,
	e.last_name,
	t.from_date,
	t.to_date,
	t.title
	
Into retirement_titles
From employees As e
Inner Join titles As t
ON (e.emp_no = t.emp_no)
Where(e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
Order by e.emp_no;
select * From retirement_titles

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO retirement_unique_values
FROM retirement_titles as rt
WHERE (rt.to_date = '9999-01-01')
ORDER BY rt.emp_no ASC,  rt.to_date DESC;
Select * from retirement_unique_values

-- Creating a table for retiring_titles
SELECT Count (ruv.emp_no), ruv.title
INTO retiring_titles
FROM retirement_unique_values as ruv
Group by ruv.title
Order by ruv.count Desc;

Select Distinct on (e.emp_no)e.emp_no,e.first_name,e.last_name,e.birth_date,
de.from_date,de.to_date,
t.title
Into mentorship_eligibility
from employees as e
Inner join dept_emp as de
on (e.emp_no = de.emp_no)
Inner join titles as t
on (e.emp_no=t.emp_no)
where(de.to_date ='9999-01-01')
And(e.birth_date Between '1965-01-01' AND '1965-12-31')
Order by e.emp_no ASC;
