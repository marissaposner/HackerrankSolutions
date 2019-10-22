/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
Select 
    MAX(Months*Salary), Count(*)
From 
    Employee
Where 
    Months*Salary=(Select Max(Months*Salary) from Employee)
