# Pewlett Hackard Retirement & Mentorship Analysis (SQL)
### Riding the "Silver Wave" into the next generation
----

### Overview of the Analysis
#### Preparing for the storm

Pewlett Hackard (PH) is a large technology company boasting a roster of over 300,000 employees. PH is expecting an upcoming "Silver Wave", the retirement of a large number of employees within a short period of time. Looking to the future, PH asked for help in converting their data from Excel/VBA to the more powerful SQL. Identifying employees who are eligible for the retirement package is the goal of the project. Most importantly, they want assistance identifying employees for a mentorship program. The mentorship program will help PH develop their bench, preparing current employees to fill the roles that will soon be vacant.

<BR>

#### Resources
I utilized the following tools in my analysis:
<BR>
• <a href="https://www.microsoft.com/en-us/sql-server">SQL</a>
<BR>
• <a href="https://www.pgadmin.org/">pgAdmin</a> / <a href="https://www.postgresql.org/">Postgres</a>
<BR>
 • <a href="https://code.visualstudio.com/">Visual Studio Code</a>
<BR>
 • <a href="https://www.quickdatabasediagrams.com/">Quick Database Diagrams</a>
<BR>
  <br>
  
### Results
#### Analysis results, summary, and suggestions
<br>

To begin the analysis Bobby created an ERD (Entity Relationship Diagram) using Quick Database Diagrams to sort employees into specific tables, allowing us to visually manipulate the data. He used the ERD to lead the conversaion and organization of employee records. Here are his findings.

  
<center><img width="=400" height="400" src="https://github.com/meggrooms/Pewlett-Hackard-Analysis/blob/main/Images/EmployeeDB.png"></center>
<BR>
<BR>
  
• The total of retirement-eligible employees is 72,458. There are six departments and all will be impacted, with 50,000 being senior staff expected to leave. The impact of the mass departure has the potential to be catastrophic. It's vital that PH prepares their bench by developing current employees to fill these rolls.
<BR>
  
<img align="center" width="300" height="300" src="https://github.com/meggrooms/Pewlett-Hackard-Analysis/blob/main/Images/number_retiring_department.png">
  
<BR>
• Knowing the exact roles that need to be filled is essential so we put together a list of the future retirees alongside their titles. Quite a few employees were duplicates, so we had to clean the date to reflect current titles.
<BR>
  <BR>
<img width="600" height="400" src="https://github.com/meggrooms/Pewlett-Hackard-Analysis/blob/main/Images/rolls_to_be_filled.png">
 <BR><BR>
  
• A mentorship program could be the answer to this problem. Developing a strong bench is essential to the future success of the company. The following image provides a small glimpse of the people we found who make good candidates for the mentoring program.
 <BR> <BR>
   • There are 1,549 current employees who are eligible to be mentors, all born in 1966.
   <BR>
   
<img width="600" height="400" src="https://github.com/meggrooms/Pewlett-Hackard-Analysis/blob/main/Images/mentorship_eligibilty.png"> 
<BR>
<BR>
  


### Summary
#### Key takeaways 
<BR>
• 72,000 people are eligible to receive retirement packaged from PH this year.
<BR>
• There will be over 50,000 senior staff retiring.
<BR>
• PH currently has no program in place to replace those jobs, internally or externally.
<BR>
• The development of a mentorship program will expedite the filling of the jobs left open, and will prepare the company for future "waves".
  
<BR><BR>
  
 #### Additional query suggestions
  
• Determine future needs. Develop criteria to determine the employees who may be suitable to be mentored. Which departments will see the largest turnover in the next 5 years? Is tenure, job title, or upcoming need considered the most important factor while getting the program running?

• Early retirement. In order to prevent such a large departure in the future, Bobby can identify employees who will be retiring over the next 5-10 years and suggest PH prepare early retirement options in the future. Offering early retirement packages can help stagger the departing retirees in the future.














