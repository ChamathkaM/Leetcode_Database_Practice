# Write your MySQL query statement below
select D.name as Department ,E.name as Employee, E.salary as Salary
from Employee E,Department D
where E.departmentId = D.id
and E.salary = (
    select max(salary)
    from Employee
    where departmentId = E.departmentId)
