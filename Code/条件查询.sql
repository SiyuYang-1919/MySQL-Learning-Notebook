# 2. 条件查询;
/*
语法:
select 查询列表
from   表名
where  筛选条件;

分类:
1) 条件表达式筛选:
   条件运算符: > < = != <> >= <=
2）逻辑表达方式筛选:
   逻辑运算符: 
	 && (and)
	 || (or)
	 !  (not)
3) 模糊查询:
	like
	between and
	in
	is null
*/

# 2.1 运算符号:
# 查询工资>12000的员工信息;
SELECT * 
FROM employees
WHERE salary>12000;

# 查询部门编号不等于90号的员工和部门编号;
SELECT 
     last_name, department_id
FROM
     employees
WHERE
     department_id<>90;
 
# 2.2 逻辑表达式:
# 查询工资在10000到20000之间的员工名、工资以及奖金;
SELECT
     last_name, 
		 salary, 
		 commission_pct
FROM
     employees
WHERE 
     salary>=10000
AND
		 salary<=20000;
		 
# 查询部门编号不在90到110之间或者工资高于15000的员工信息;
SELECT
     *
FROM
     employees
WHERE
     NOT (department_id>=90 AND department_id<= 110) OR salary > 15000;
		 
# 2.3 模糊查询;
# like
# 查询姓名里面有a的员工信息(通配符%，任意多个字符);
SELECT
		*
FROM
    employees
WHERE
    last_name LIKE '%a%';
# 查询员工名中第三个字符为n，第五个字符为l的员工名和工资(通配符_，任意单个字符);
SELECT
     last_name, 
		 salary
FROM
     employees
WHERE 
     last_name LIKE '__n_l%';
# 查询员工名中第二个字符为_的员工名(\转译,$转译);
SELECT
     last_name
FROM
     employees
WHERE
     last_name LIKE '_\_%';
#or
SELECT
     last_name
FROM
     employees
WHERE
     last_name LIKE '_$_%' ESCAPE '$';

# between and	(包含临界值; 不可以颠倒顺序)
# 查询员工编号在100到120之间的员工信息；
SELECT
     *
FROM
     employees
WHERE
     employee_id>=100 AND employee_id<= 120;
#or
SELECT
     *
FROM
     employees
WHERE
     employee_id BETWEEN 100 AND 120;

# in
# 查询员工工种编号是IT_PROG, AD_VP, AD_PRES中的一个员工名和工种编号(in列表的值类型统一或者兼容,eg.'123')；
SELECT
     last_name,
		 job_id
FROM
     employees
WHERE
     job_id = 'IT_PROG' OR job_id = 'AD_VP' OR job_id = 'AD_PRES';
		 
SELECT
     last_name,
		 job_id
FROM
     employees
WHERE
     job_id in ('IT_PROG', 'AD_VP', 'AD_PRES');

# is (not) null
# 查询没有奖金的员工名和奖金率;
SELECT
     last_name,
		 commission_pct
FROM
     employees
WHERE 
     commission_pct IS NULL;
		 
# 查询有奖金的员工名和奖金率;
SELECT
     last_name,
		 commission_pct
FROM
     employees
WHERE 
     commission_pct IS NOT NULL;
		 
# 安全等于<=>(可判断null值);
SELECT
     last_name,
		 commission_pct
FROM
     employees
WHERE 
     commission_pct <=> NULL;
		 
SELECT
     last_name,
		 salary
FROM
     employees
WHERE 
     salary <=> 12000;
		 
#-------------------------------------------------------

# 练习题
# 1.
SELECT 
      salary,
			last_name
FROM 
      employees
WHERE
      salary < 18000 AND commission_pct IS NULL;

# 2. 
SELECT
      *
FROM 
      employees
WHERE 
      NOT (job_id LIKE '%IT%') OR salary=12000;
			
# 3. 
DESC departments;

# 4.
SELECT DISTINCT location_id FROM departments;

# 5.
SELECT * FROM employees;
SELECT * FROM employees WHERE commission_pct IS NOT NULL;
SELECT * FROM employees WHERE commission_pct LIKE '%%' and last_name LIKE '%%';