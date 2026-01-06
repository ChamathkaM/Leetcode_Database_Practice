CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT--high salary..
BEGIN
  RETURN (
      select salary
      from Employee e
      where (
          select count(distinct salary)
          from Employee
          where salary > e.salary
      ) = N - 1
      limit 1
  );
END
