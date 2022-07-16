# Pewlett-Hackard-Analysis

## Purpose of the Project
The purpose of the project is to identify the number of employees who are going to retire soon by their title and determine which employees are eligible to participate in the mentorship program. The information in the title table shows that all of the employees are born between Jan 1, 1952 and Dec 31, 1055. Throughout the project, current steps followed and necessary tables created;
- A query created to gather the employee number, first name, last name of the employees by using employees table. Additionally, the title and the employees' start and to dates gathered by using titles table in PH query. Both of these tables had the same primary key so that both of the tables joined by Left Join method, and new table created and exported as retiring_titles.csv
- Using Disctinct On method, a new table created by using retiring_titles table, but duplicated names are removed from the table. Order By and Count methods are also implemented to the query to get the total number of each title from the new table created called uniqe_titles.
- A query is generated to gatercolumns from three different tables:employees, dept_emp, and titles. Lastly, filter implemented on the data to get the current employees born in 1965 and the table ordered in ascending employee number.

## Results
There are three tables created in the challenge which each of them were one before's further step.
- The retirement_titles table serves to get every eligible individuals for retirement and how long they have served at each position in their career.
https://github.com/huzeyfecanbaz/Pewlett-Hackard-Analysis/blob/fcf9b6928e1fdcdfb47a51d69eaebfcc3fbb5113/Pictures/retirement_titles.png
- The unique_titles table serves to get the most recent titles for the employees who has close to their retirement.
https://github.com/huzeyfecanbaz/Pewlett-Hackard-Analysis/blob/fcf9b6928e1fdcdfb47a51d69eaebfcc3fbb5113/Pictures/unique_titles.png
- The retiring_titles serves to get the total number of employees who are close to their retirment for each title.
https://github.com/huzeyfecanbaz/Pewlett-Hackard-Analysis/blob/fcf9b6928e1fdcdfb47a51d69eaebfcc3fbb5113/Pictures/retiring_titles.png
- Lastly, the deliverable-2 serves to represent the individuals who are eligible to participate in the mentorship program. As it can be seen in the screenshot below, most of these employeeshave senior title.
https://github.com/huzeyfecanbaz/Pewlett-Hackard-Analysis/blob/fcf9b6928e1fdcdfb47a51d69eaebfcc3fbb5113/Pictures/mentorship_eligibility.png

## Summary
As it can be reviewed in the result part of this written statement, results show that about 63 percent of the employees are going to retire in the next 5-10 years. It seems like the company will have a lack of human resource in the future to take care od the tasks or fulfill the experience of the employees, but what company can do is to analyze these experienced employees success, digging into the reasons to have such long lasting careers in the company to continue the same things for future employees. Since the technology is improving every single day, it can be easily understand that the future employees are going to have more computer skills and can catch on quickly helping the company to pursue its job.

