[b站视频链接(转载自尚硅谷官网)](https://www.bilibili.com/video/BV12b411K7Zu?p=3&spm_id_from=pageDriver)
## 学习目标
	一、为什么要学习数据库
	二、数据库的相关概念      
		DBMS、DB、SQL
	三、数据库存储数据的特点
	四、初始MySQL
		MySQL产品的介绍        
		MySQL产品的安装          ★        
		MySQL服务的启动和停止     ★
		MySQL服务的登录和退出     ★      
		MySQL的常见命令和语法规范      
	五、DQL语言的学习   ★              
		基础查询        ★             
		条件查询  	   ★			
		排序查询  	   ★				
		常见函数        ★               
		分组函数        ★              
		分组查询		   ★			
		连接查询	 	★			
		子查询       √                  
		分页查询       ★              
		union联合查询	√			
		
	六、DML语言的学习    ★             
		插入语句						
		修改语句						
		删除语句						
	七、DDL语言的学习  
		库和表的管理	 √				
		常见数据类型介绍  √          
		常见约束  	  √			
	八、TCL语言的学习
		事务和事务处理                 
	九、视图的讲解           √
	十、变量                      
	十一、存储过程和函数   
	十二、流程控制结构       

## 一～四重点知识：
### 1. Basic concepts:
- DB (database);
- DBMS (Database Management System): mysql, oracle, db2, sqlserver...
- SQL (Structure Query Language).

### 2. Features:
- 数据 --> 表 --> 库；
- 库中可有多个表，表名具有唯一性；
- 表的特性定义数据在表中如何存储；
- 列：字段；
- 行：记录

### 3. DBMS类型:
- 基于共享文件系统, e.g., Access;
- 基于客户机(C/S), e.g., MySQL, Oracle, SqlServer

### 4. 登录/退出MySQL:
(Reference: [stackoverflow](https://stackoverflow.com/questions/14235362/mac-install-and-open-mysql-using-terminal))
- 确保服务器启动;
- 登录
for mac, in terminal:
```
$ /usr/local/mysql/bin/mysql -uroot -p
>>> Enter password:
mysql>
```
- 退出
in terminal:
```
mysql> exit
```

### 5. 常用命令:
- 查看数据库:
```
mysql> show databases;
```
- 查看数据库重的表格:
```
mysql> use 数据库名;
mysql> show tables;
```
or
```
mysql> show tables from 数据库名;
```
- 查看所在库:
```
mysql> select database();
```
- 库/表基本操作:
```
mysql> create database 数据库名;

mysql> create table 表名(
    -> id int,
    -> name varchar(20));

mysql> show tables; ##确认是否创建

mysql> desc 表名; ##查看数据结构

mysql> select * from 表名; ##查看数据

mysql> insert into 表名 (id, name) values(1, 'john'); ##插入数据

mysql> update 表名 set name='lilei' where id=1; ##更新数据

mysql> delete from 表名 where id=1; ##删除数据
```
- 查看mysql版本
```
sql> select version();
```
### 6. 语法规范:
- 不区分大小写，关键字大写，表名列名小写;
- 用分号结尾;
- 可以缩进或换行，关键字单独一行;
- 注释
  - 单行注释: #注释文字;
  - 单行注释: -- 注释文字;
  - 多行注释: /*注释文字 */

### 7. SQL语言分类:
- DQL(Data Query Language) ---> select;
- DML(Data Manipulation Language) ---> 增删改;
- DDL(Data Define Language) ---> 库和表的管理;
- TCL(Transaction Control Language) ---> 事务处理

## 五、DQL语言的学习
### 1. 基础查询 (基础查询.sql)
	语法：
	select 要查询的东西
	from 表名;

	特点：
	①通过select查询完的结果 ，是一个虚拟的表格，不是真实存在
	② 要查询的东西 可以是常量值、可以是表达式、可以是字段、可以是函数

### 2.条件查询 (条件查询.sql)
	条件查询：根据条件过滤原始表的数据，查询到想要的数据
	语法：
	select 
		要查询的字段|表达式|常量值|函数
	from 
		表
	where 
		条件 ;

	分类：
	一、条件表达式
		示例：salary>10000
		条件运算符：
		> < >= <= = != <>
	
	二、逻辑表达式
	示例：salary>10000 && salary<20000
	
	逻辑运算符：

		and（&&）:两个条件如果同时成立，结果为true，否则为false
		or(||)：两个条件只要有一个成立，结果为true，否则为false
		not(!)：如果条件成立，则not后为false，否则为true

	三、模糊查询
	示例：last_name like 'a%'

### 3. 排序查询	(排序查询.sql)
	语法：
	select
		要查询的东西
	from
		表
	where 
		条件

	order by 排序的字段|表达式|函数|别名 【asc|desc】

### 4. 常见函数 
#### 4.1 单行函数 (常用函数-单行函数.sql)
	1、字符函数
		concat拼接
		substr截取子串
		upper转换成大写
		lower转换成小写
		trim去前后指定的空格和字符
		ltrim去左边空格
		rtrim去右边空格
		replace替换
		lpad左填充
		rpad右填充
		instr返回子串第一次出现的索引
		length 获取字节个数
		
	2、数学函数
		round 四舍五入
		rand 随机数
		floor向下取整
		ceil向上取整
		mod取余
		truncate截断

	3、日期函数
		now当前系统日期+时间
		curdate当前系统日期
		curtime当前系统时间
		str_to_date 将字符转换成日期
		date_format将日期转换成字符
        datediff返回两个日期相差的天数
        monthname以英文形式返回月份
        year返回年
        month返回月
        day返回日
<p align="center">
<img src=1615045178187.jpg width="300" height="300" alt="knn" align=center>
		
	4、流程控制函数
		if(条件表达式，表达式1，表达式2) 处理双分支
		case语句 处理多分支
		情况1：处理等值判断
        case 变量或表达式或字段
        when 常量1 then 值1
        when 常量2 then 值2
        else 值n
        end
		情况2：处理条件判断
        case 
        when 条件1 then 值1
        when 条件2 then 值2
        else 值n
        end
		
	5、其他函数
		version版本
		database当前库
		user当前连接用户

#### 4.2 分组函数 (常用函数-分组函数.sql)
		sum 求和
		max 最大值
		min 最小值
		avg 平均值
		count 计数
	
		特点：
		1、以上五个分组函数都忽略null值，除了count(*)
		2、sum和avg一般用于处理数值型
			max、min、count可以处理任何数据类型
	    3、都可以搭配distinct使用，用于统计去重后的结果
		4、count的参数可以支持：
			字段、*、常量值，一般放1
	
		   建议使用 count(*)

### 5. 分组查询 (分组查询.sql)
	语法：
	select 查询的字段，分组函数
	from 表
	[where 筛选条件]
	group by 分组的字段
	[having 分组后的筛选]
	[order by 排序列表]

	
	特点：
	1、可以按单个字段分组
	2、和分组函数一同查询的字段最好是分组后的字段
	3、分组筛选
			针对的表	位置			关键字
	分组前筛选：	原始表		group by的前面		where
	分组后筛选：	分组后的结果集	group by的后面		having
	
	4、可以按多个字段分组，字段之间用逗号隔开
	5、可以支持排序
	6、having后可以支持别名

### 6. 多表连接查询（连接查询.sql)

	笛卡尔乘积：如果连接条件省略或无效则会出现
	解决办法：添加上连接条件
	
一、sql92语法：

等值连接

    语法：
	select 查询列表
	from 表1 别名, 表2 别名
	where 表1.key=表2.key
	[and 筛选条件]
	[group by 分组字段]
	[having 分组后的筛选]
	[order by 排序字段]

	1.等值连接的结果是多个表的交集
	2.n表连接，至少需要n-1个连接条件
	3.多个表不分主次，没有顺序要求
	4.一般为表起别名，提高阅读性和性能

非等值连接

    语法：
	select 查询列表
	from 表1 别名, 表2 别名
	where 非等值的连接条件
	[and 筛选条件]
	[group by 分组字段]
	[having 分组后的筛选]
	[order by 排序字段]

自连接

    语法：
	select 查询列表
	from 表 别名1, 表 别名2
	where 等值的连接条件
	[and 筛选条件]
	[group by 分组字段]
	[having 分组后的筛选]
	[order by 排序字段]

	学完P77
