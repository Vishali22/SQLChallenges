
select s.name from friends f
left join students s on f.id = s.id
left join Packages P on f.id = P.id
left join Packages Pf on f.friend_id = pf.id
where pf.salary > p.salary
order by pf.salary;
