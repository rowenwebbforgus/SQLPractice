--Group By, Order By

SELECT *
FROM EmployeeDemographics
ORDER BY 4 Desc, 5 Desc



SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE AGE>31
GROUP BY Gender
Order By Gender ASC
