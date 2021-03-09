# 分组查询；

/*
select 分组函数，列（要求出现在group by后面）
from 表
【where筛选条件】
group by 分组的列表
【order by子句】

查询列表要求是分组函数和group by后面出现的字段
*/

# 查询每个工种的最高工资;
SELECT MAX(salary), job_id
FROM employees
GROUP BY job_id;

# 每个位置上的部门个数;
SELECT COUNT(*), location_id
FROM departments
GROUP BY location_id;

# 查询邮箱中包含a字符的，每个部门的平均工资;
SELECT AVG(salary), department_id
FROM employees
WHERE email LIKE '%a%'
GROUP BY department_id;

# 查询有奖金的每个领导手下员工的最高工资;
SELECT MAX(salary), manager_id
FROM employees
WHERE commission_pct IS NOT NULL
GROUP BY manager_id;