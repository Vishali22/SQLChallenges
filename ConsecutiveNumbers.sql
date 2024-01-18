select distinct firstnum as ConsecutiveNums from (
select num as firstnum, lead(num, 1) over (order by id) as secondnum, 
lead(num, 2) over (order by id) as thirdnum
from logs) a
where firstnum = secondnum and secondnum = thirdnum
