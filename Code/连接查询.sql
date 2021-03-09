# 链接查询;

/*
查询多个表的信息

笛卡尔乘积现象：表1有m行，表2有n行，结果=m*n行;
需要添加有效的链接条件
*/

SELECT * FROM beauty;

SELECT * FROM boys;

SELECT NAME, boyName FROM boys, beauty
WHERE beauty.boyfriend_id=boys.id;

# sql92标准;
# 1. 等值连接;
SELECT NAME, boyName FROM boys, beauty
WHERE beauty.boyfriend_id=boys.id;

# 查询员工名和对应的部门名；
SELECT last_name, department_name
FROM employees, departments
WHERE employees.`department_id`=departments.`department_id`;

# 查询员工名，工种号，工种名;
# 为表起别名;
# 两个表的顺序可调换;
SELECT e.last_name, e.job_id, j.job_title
FROM employees e,jobs j
WHERE e.`job_id`=j.`job_id`;

# [筛选]查询有奖金的员工名、部门名;
SELECT e.last_name, d.department_name
FROM employees e, departments d
WHERE e.`department_id` = d.`department_id` AND e.commission_pct IS NOT NULL;

# 查询城市中第二个字符为o的部门名和城市名;
SELECT d.department_name, l.city
FROM departments d, locations l
WHERE d.`location_id` = l.`location_id`
AND l.city LIKE '_o%';

# [分组]查询每个城市的部门个数;
SELECT COUNT(d.department_id), l.city
FROM departments d, locations l
WHERE d.`location_id` = l.`location_id`
GROUP BY l.city;

# 查询有奖金的每个部门的部门名和部门领导编号和该部门的最低工资;
SELECT d.department_name, d.manager_id, MIN(e.salary)
FROM departments d, employees e
WHERE d.`department_id` = e.`department_id`
AND e.commission_pct IS NOT NULL
GROUP BY d.department_name, d.manager_id;

# 查询每个工种的工种名和员工的个数，并且按员工个数降序;
SELECT j.job_title, COUNT(e.employee_id)
FROM jobs j, employees e
WHERE j.`job_id` = e.`job_id`
GROUP BY j.job_title
ORDER BY COUNT(e.employee_id) DESC;

# 查询员工名、部门名和所在城市;
SELECT e.last_name, d.department_name, l.city
FROM employees e, departments d, locations l
WHERE e.`department_id` = d.`department_id` 
AND d.`location_id` =  l.`location_id`;
