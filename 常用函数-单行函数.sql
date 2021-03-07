# 4. 常见函数;

/*
调用: select 函数名(实参列表)[from 表]

函数名+函数功能

1）单行函数
2）分组函数(做统计,统计函数/组函数)
*/

# 1) 字符函数;

# length 获取参数值的字节个数;

# concat 拼接字符串;

# upper/lower 大小写;

# 将员工姓变大写,名变小写,然后拼接;
SELECT CONCAT(UPPER(last_name),LOWER(first_name)) 'name'
FROM employees;

# substr, substring(索引从1开始) 字符长度;
SELECT SUBSTR('lalalalahhh',7) out_put;
SELECT SUBSTR('lalalalahhh',1,3) out_put;

# 姓名中首字符大写，其他字符小写然后拼接显示;
SELECT CONCAT(UPPER(SUBSTR(last_name,1,1)),'_',LOWER(SUBSTR(last_name,2)))
FROM employees;

# instr(找到子串起始索引);
SELECT INSTR('the university of edinburgh','edinburgh') AS out_put;

# trim(删减前后指定的字符);
SELECT LENGTH(TRIM('    edinburgh    ')) AS out_put;

SELECT TRIM('a' FROM 'aaaaaaaaedinburghaaaaa') AS out_put;

# lpad(用指定的字符左填充指定长度);
SELECT LPAD('edinburgh',10,'h');

# rpad(用指定的字符右填充指定长度);
SELECT RPAD('edinburgh',10,'h');

# replace(替换);
SELECT REPLACE('edinburgh','e','a');


# 2)数学函数;

# round四舍五入;
SELECT ROUND(-1.45);
SELECT ROUND(-1.4679,2);

# ceil 向上取整(返回>=该参数的最小整数);
SELECT CEIL(1.01);
SELECT CEIL(-1.02);

# floor 向下取整(返回<=该参数的最大整数);
SELECT FLOOR(-9.99);

# truncate 截断；
SELECT TRUNCATE(-9.99,1);

# mod 取余;
SELECT MOD(-10,-3);


# 3)日期函数;

# now 返回当前系统日期+时间;
SELECT NOW();

# curdate 返回当前系统日期,不包含时间;
SELECT CURDATE();

# curtime 返回当前系统时间,不包含日期;
SELECT CURTIME();

# 可以获取指定的部分,年、月、日、小时、分钟、秒;
SELECT YEAR(NOW());
SELECT YEAR('1998-1-1');

SELECT YEAR(hiredate) FROM employees;
SELECT MONTH(hiredate) FROM employees;
SELECT MONTHNAME(hiredate) FROM employees;

# str_to_date
SELECT STR_TO_DATE('1998-3-2','%Y-%c-%d') AS out_put;

# 查询入职日期为1992-4-3的员工信息;
SELECT * FROM employees WHERE hiredate = STR_TO_DATE('4-3 1992','%c-%d %Y');

# date_format将日期转换成字符;
SELECT DATE_FORMAT(NOW(),'%y年%m月%d日') AS out_put;

# 查询有奖金的员工名和入职日期(xx月/xx日 xx年);
SELECT last_name,DATE_FORMAT(hiredate,'%m月/%d日 %y年') FROM employees
WHERE commission_pct IS NOT NULL;


# 4)其他函数;
SELECT VERSION();
SELECT DATABASE();
SELECT USER();

# 5）流程控制函数;

# if else;
SELECT IF(10>5,'greater','small');

SELECT last_name,commission_pct,IF(commission_pct IS NULL,'no commission','have commission')备注
FROM employees;

# case;
/* 
case 要判断的字段或表达式
when 常量1 then 要显示的值1或语句1;
when 常量2 then 要显示的值2或语句2;
...
else 要显示的值n或语句;
end
*/

# 查询员工的工资;
SELECT salary 原始工资, department_id,
CASE department_id
	WHEN 30 THEN 
		salary*1.1
	WHEN 40 THEN 
		salary*1.2
	WHEN 50 THEN 
		salary*1.3
	ELSE
		salary
END AS 新工资
FROM employees;

/*
case
when 条件1 then 要显示的值1或语句1
when 条件2 then 要显示的值2或语句2
...
else 要显示的值n或语句
end
*/

# 员工的工资情况;
SELECT salary,
CASE
	WHEN salary>20000 THEN
		'A'
	WHEN salary>15000 THEN
		'B'
	WHEN salary>10000 THEN
		'C'
	ELSE
		'D'
END AS 工资级别
FROM employees;

#------------------------------
练习题

# 1. 显示系统时间;
SELECT NOW();

# 2. 查询员工号,姓名,工资, 以及工资提高百分之二十后的结果;
SELECT employee_id, last_name, salary,
salary*(1+0.2) 新工资
FROM employees;

# 3. 将员工的姓名按首字母排序，并写出姓名的长度;
SELECT last_name, SUBSTR(last_name,1,1) 首字符, LENGTH(last_name)
FROM employees
ORDER BY 首字符;

# 4. 做一个查询,产生下面的结果:
# <last name> earns <salary> monthly but wants <salary*3>
SELECT 
CONCAT(last_name,' earns ',salary,' monthly but wants ',salary*3) 'Dream Salary'
FROM employees;

# 5. 使用case-when,按照下面的条件:
/*
job          grade
AD_PRES      A
ST_MAN       B
IT_PROG      C
*/
SELECT job_id,
CASE job_id
	WHEN 'AD_PRES' THEN 'A'
	WHEN 'ST_MAN' THEN 'B'
	WHEN 'IT_PROG' THEN 'C'
END AS grade
FROM employees;
