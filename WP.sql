SELECT ProjectID, ProjectName, Department, MaxHours, StartDate, EndDate
        FROM PROJECT
SELECT * 
        FROM PROJECT;
SELECT ProjectName, Department, MaxHours
        FROM PROJECT
SELECT ProjectName, MaxHours, Department
        FROM PROJECT;
SELECT Department
        FROM PROJECT;
SELECT DISTINCT Department 
FROM PROJECT;
SELECT *
FROM PROJECT
WHERE Department = 'Finance';
SELECT *
FROM PROJECT
WHERE MaxHours > 135;
SELECT FirstName, LastName, Department, OfficePhone 
FROM EMPLOYEE
WHERE Department = 'Accounting';
SELECT FirstName, LastName, Department, OfficePhone 
FROM EMPLOYEE
ORDER BY Department;
SELECT FirstName, LastName, Department, OfficePhone 
FROM EMPLOYEE
ORDER BY Department DESC;
SELECT FirstName, LastName, Department, OfficePhone 
FROM EMPLOYEE
ORDER BY Department DESC, LastName ASC;
SELECT FirstName, LastName, Department, OfficePhone 
FROM EMPLOYEE
WHERE Department = 'Accounting'
AND OfficePhone = '360-285-8430';
SELECT FirstName, LastName, Department, OfficePhone 
FROM EMPLOYEE
WHERE Department = 'Accounting'
OR OfficePhone = '360-285-8430';
