#1.基础查询
/* 
1)语法:
select 查询列表
from 表名;
2)查询列表可以是: 表中的字段, 常量值, 表达式, 函数;
3)查询结果是一个虚拟表格
*/
USE employees;
#1) 查询表中的单个字段;
SELECT last_name FROM employees;

#2）查询表中的多个字段;
SELECT last_name, salary, email FROM employees;

#3) 查询表中的所有字段;
SELECT * FROM employees;
#` `帮助区分字段和关键字;

#4) 查询常量值;
SELECT 100;
SELECT 'john';

#5) 查询表达式;
SELECT 100*98;
SELECT 100%98;

#6) 查询函数;
SELECT VERSION();

#7) 起别名;
/*
- 便于理解;
- 区分重名
*/
SELECT 100%98 AS result;
SELECT last_name AS 姓, first_name AS 名 FROM employees;
SELECT last_name 姓, first_name 名 FROM employees;
SELECT salary AS "out put" FROM employees;

#8) 去重;
SELECT DISTINCT department_id FROM employees;

#9) +号的作用(只有运算符号功能,都为数值型);
/*
都为数值型: select 100+90;
一方为数值: select '123'+90; (123+90)
          select 'john'+90; (90)
一方为null: select null+90; (null)
*/
SELECT null+90;

#10) concat函数;
SELECT CONCAT(last_name,first_name) AS 姓名 FROM employees;

#--------------------------------------------------------------

# 练习题
# 1.
SELECT last_name, job_id, salary AS sal
FROM employees;

# 2.
SELECT * 
FROM employees;

# 3. 
DESC departments;
SELECT * FROM departments;

# 4.
SELECT DISTINCT job_id FROM employees;

# 5. 
SELECT 
     IFNULL(commission_pct,0) AS 奖金率, commission_pct
 FROM
     employees;
 
SELECT  
     CONCAT(employee_id,',',first_name,',',last_name,',',email,',',phone_number,',',job_id,',',salary,',',IFNULL(commission_pct,0))
AS `OUT_PUT` 
FROM employees;