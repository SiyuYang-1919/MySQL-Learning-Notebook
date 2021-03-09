# 分组函数:用作统计使用，又称为聚合函数或统计函数或组函数;

/* 
分类：
sum, avg, max, min, count

*/

# 1. 简单的使用;
SELECT SUM(salary) FROM employees;
SELECT AVG(salary) FROM employees;
SELECT MIN(salary) FROM employees;
SELECT MAX(salary) FROM employees;
SELECT COUNT(salary) FROM employees;

SELECT 
SUM(salary), AVG(salary), MIN(salary), MAX(salary), COUNT(salary)
FROM employees;

SELECT 
SUM(salary), ROUND(AVG(salary)), MIN(salary), MAX(salary), COUNT(salary)
FROM employees;


# 2. 参数支持哪些类型;
SELECT SUM(last_name), AVG(last_name) FROM employees;
SELECT MAX(last_name), MIN(last_name) FROM employees;
SELECT COUNT(commission_pct) FROM employees;

# 3. 和distinct搭配;
SELECT COUNT(DISTINCT salary) FROM employees;

# 4. count的详细介绍;
# 统计行数;
# MYISAM存储引擎下，*效率高；INNODB下，*与1都可
SELECT COUNT(*) FROM employees;
SELECT COUNT(1) FROM employees;
SELECT COUNT('lala') FROM employees;

# 5. 和分组函数一同查询的字段有限制;
# 报错
SELECT AVG(salary), employee_id FROM employees;

#-------------------------------------------------
# 练习题
# 1. 查询公司员工工资的最大值，最小值，平均值，总和;
SELECT MAX(salary), MIN(salary), AVG(salary), SUM(salary)
FROM employees;

# 2. 查询员工表中的最大入职时间和最小入职时间的相差天数;
SELECT DATEDIFF(MAX(hiredate), MIN(hiredate)) FROM employees;

# 3. 查询部门编号为90的员工个数;
SELECT COUNT(*)
FROM employees
WHERE department_id = 90;
