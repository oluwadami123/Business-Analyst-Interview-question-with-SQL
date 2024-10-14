# Business-analyst-Interview-question

## Overview:

Today, I encountered a challenging business interview question that tested my technical skills and analytical abilities in SQL. I created the "Election" schema using MySQL Workbench, which consists of two tables: 
a. candidates table and the 
b. results table. 
You can find the first sample question in the following images below:

Solutions:

First, I joined the two tables using a Full Inner Join based on their IDs since there were no nulls in the tables. Then, I selected only the important columns relevant to my analysis.
 Next, I used a window function ( RANK() ) to rank each candidate's votes according to their constituencies. 
Finally, I inserted the entire query into a Common Table Expression (CTE) and extracted only the candidates whose party had the highest votes in their constituencies.


![SQL_initerview question 1](https://github.com/user-attachments/assets/7cbde44a-e771-4bba-bd67-1a90adedea9f)

![SQL question 1](https://github.com/user-attachments/assets/828caea1-0f44-4279-a27b-e3cf38783491)

![SQL question 3PNG](https://github.com/user-attachments/assets/a71fd195-4a94-40fd-a277-c591dcdb09ae)

![Election 1](https://github.com/user-attachments/assets/9911508e-6b1b-4628-8aab-afd89c8d3222)

![Election 2](https://github.com/user-attachments/assets/7adfeb75-78ee-4e8a-9bff-0de02f243c0e)

![Election 3](https://github.com/user-attachments/assets/ba7d5471-3845-4101-82d2-a423656edb31)
