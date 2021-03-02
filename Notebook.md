[Course Link](https://www.bilibili.com/video/BV12b411K7Zu?p=3&spm_id_from=pageDriver)

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