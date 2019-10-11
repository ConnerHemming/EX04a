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
SELECT FirstName, LastName, Department, OfficePhone 
FROM EMPLOYEE
WHERE Department = 'Accounting'
AND NOT OfficePhone = '360-285-8430';
SELECT FirstName, LastName, Department, OfficePhone 
FROM EMPLOYEE
WHERE Department IN ('Administration', 'Finance', 'Accounting');
SELECT FirstName, LastName, Department, OfficePhone 
FROM EMPLOYEE
WHERE Department NOT IN ('Administration', 'Finance', 'Accounting');
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE EmployeeNumber >= 2
AND EmployeeNumber <= 5;
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE EmployeeNumber BETWEEN 2 AND 5;
SELECT *
FROM PROJECT
WHERE ProjectName LIKE '2017 Q_ Portfolio Analysis';
SELECT *
FROM EMPLOYEE
WHERE OfficePhone LIKE '360-287-88__';
SELECT *
FROM EMPLOYEE
WHERE OfficePhone LIKE '360-287-88%';
SELECT *
FROM EMPLOYEE
WHERE Department LIKE '%ing';
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE OfficePhone IS NULL;
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE OfficePhone IS NOT NULL;
SELECT COUNT(*)
FROM PROJECT;
SELECT COUNT(*) AS NumberOfProjects
FROM PROJECT;
SELECT COUNT (Department) AS NumberOfDepartments
FROM PROJECT;
SELECT COUNT (DISTINCT Department) AS NumberOfDepartments
FROM PROJECT;
SELECT SUM(MaxHours) AS TotalMaxHours, 
AVG(MaxHours) AS AverageMaxHours, 
MIN(MaxHours) AS MinimumMaxHours, 
MAX(MaxHours) AS MaximumMaxHours
FROM PROJECT
WHERE ProjectID <= 1200;
SELECT ProjectID, ProjectName, MaxHours, 
       (24.50 * MaxHours) AS MaxProjectCost 
FROM PROJECT;
SELECT DISTINCT EmployeeNumber
FROM ASSIGNMENT
WHERE HoursWorked > 50;
SELECT FirstName, LastName
FROM EMPLOYEE
WHERE EmployeeNumber IN
        (SELECT DISTINCT EmployeeNumber
        FROM ASSIGNMENT
        WHERE HoursWorked > 50);
SELECT DISTINCT ProjectID
FROM PROJECT
WHERE Department = 'Accounting';
SELECT  DISTINCT    EmployeeNumber
FROM    ASSIGNMENT
WHERE   HoursWorked > 40
    AND ProjectID IN
        (SELECT ProjectID
        FROM    PROJECT
        WHERE   Department = 'Accounting');
SELECT  FirstName, LastName
FROM    EMPLOYEE
WHERE   EmployeeNumber IN
      (SELECT DISTINCT EmployeeNumber
        FROM    ASSIGNMENT
        WHERE   HoursWorked > 40
        AND     ProjectID IN
                (SELECT ProjectID
                FROM PROJECT
                WHERE   Department = 'Accounting'));
SELECT  FirstName, LastName, ProjectID, HoursWorked
FROM    EMPLOYEE, ASSIGNMENT;
SELECT FirstName, LastName, ProjectID, HoursWorked
FROM EMPLOYEE, ASSIGNMENT
WHERE EMPLOYEE.EmployeeNumber = ASSIGNMENT.EmployeeNumber;
SELECT FirstName, LastName, ProjectID, HoursWorked
FROM EMPLOYEE, ASSIGNMENT
WHERE EMPLOYEE.EmployeeNumber = ASSIGNMENT.EmployeeNumber
ORDER BY EMPLOYEE.EmployeeNumber, ProjectID;
SELECT FirstName, LastName, ProjectID, HoursWorked
FROM EMPLOYEE JOIN ASSIGNMENT
    ON EMPLOYEE.EmployeeNumber = ASSIGNMENT.EmployeeNumber
ORDER BY EMPLOYEE.EmployeeNumber, ProjectID;
