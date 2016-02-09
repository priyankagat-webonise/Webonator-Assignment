#Print the names and ages of each employee who works in both the Hardware
department and the Software department.

	select e.name,e.age from emp e INNER JOIN works w,works w1 ON e.id=w.emp_id AND e.id=w1.emp_id INNER JOIN dept d,dept d1 ON w.dept_id=d.id and w1.dept_id=d1.id where d.name='hardware' and d1.name='software';

#Print the names of employees comma separated in one column and manager
name in another column who have same manager (let emp name repeat if 1 emp
belongs to 2 depts with different managers)

	select m_name as 'Manager', group_concat(e_name) as 'Employee' from(((select e.name as 'm_name' from emp e
 where e.id IN (select d.manager_id from dept d)) INNER JOIN (select e1.name as 'e_name' from emp e1 where e1.id IN 
(select w.emp_id from works w)) ON e1.id<>e.id);

#For each department with more than 20 full-time-equivalent employees (i.e.,
where the part-time and full-time employees add up to at least that many full time
employees), print the did together with the number of employees that work in that
department.

	select dept_id ,count(emp_id) from works w group by dept_id having 2000<(select sum(pct_time) from works w1 where w1.dept_id=w.dept_id);

#Print the name of each employee whose salary exceeds the budget of all of the
departments that he or she works in.
	select e.name from emp e where salary>ALL(select d.budget from dept d,works w,emp e where e.id=w.emp_id AND d.id=w.dept_id);  

#Find the manager_ids of managers who manage only departments with budgets
greater than $1 million.
	select d.manager_id from dept d where 1000000<ALL(select d1.budget from dept d1 where d1.manager_id=d.manager_id);
#Find the names of managers who manage the departments with the largest
budgets.
	select e.name from emp e where e.id IN(select d.manager_id from dept d where budget IN(select MAX(d1.budget) from dept d1));

#If a manager manages more than one department, he or she controls the sum of
all the budgets for those departments. Find the manager_ids and names of
managers who control more than $5 million.
	select d.manager_id from dept d where 5000000<(select sum(d1.budget) from dept d1 where d1.manager_id=d.manager_id);

#Find the manager_ids and names of managers who control the largest amounts.
	select d.manager_id from(select sum(d.budget) as d_budget from dept d where d.d_budget IN (select MAX(d1.budget) from dept d1));

#Find the names of managers who manage only departments with budgets larger
than $1 million, but at least one department with budget less than $5 million.

	select e.name from emp e ,dept d where e.id=d.manager_id 
group by e.name having (d.budget>1000000) AND (d.budget<5000000);
