CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    DECLARE @Result INT;

    SELECT @Result = salary
    FROM (
        SELECT salary, RANK() OVER (ORDER BY salary DESC) AS rnk
        FROM employee
    ) a
    WHERE rnk = @N;

    RETURN @Result;
END;
