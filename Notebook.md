[b站视频链接(转载自尚硅谷官网)](https://www.bilibili.com/video/BV12b411K7Zu?p=3&spm_id_from=pageDriver)

## Day 1 (P1-P10)
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

## Day 2 (P11-26)
### 1. 常用命令:
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
### 2. 语法规范:
- 不区分大小写，关键字大写，表名列名小写;
- 用分号结尾;
- 可以缩进或换行，关键字单独一行;
- 注释
  - 单行注释: #注释文字;
  - 单行注释: -- 注释文字;
  - 多行注释: /*注释文字 */

### 3. 图形用户界面介绍

### 4. SQL语言分类:
- DQL(Data Query Language) ---> select;
- DML(Data Manipulation Language) ---> 增删改;
- DDL(Data Define Language) ---> 库和表的管理;
- TCL(Transaction Control Language) ---> 事务处理

### 5. DQL(myemploy.sql为例)
笔记和命令见 基本查询.sql

## Day 3 (P27-37)
笔记和命令见 基本查询.sql和条件查询.sql

## Day 4 (P38-49)
- 时间格式符:
<p align="center">
<img src=1615045178187.jpg width="300" height="300" alt="knn" align=center>


