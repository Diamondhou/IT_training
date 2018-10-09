
/*建表语句*/
create table book(
	book_id int auto_increment primary key,
    book_name varchar(100) not null,
    book_price int not null
);
    insert into book(book_name,book_price)values('python',100);

/*删除表格*/ 
drop table 表名称   --删除表

/*数据库bookstore 表book 插入数据*/
    mysql -uroot -proot
    use bookstore
    select * from book;
    insert into book(book_name,book_price) values('java',110);
    insert into book(book_name,book_price) values('php',120);
    select * from book;
    update book set book_price = 150 where book_name = 'python'
    select * from book;
    delete from book where book_name = 'php';
	select * from book;

/*如果你有问题*/ 
cmd1:mysqld
cmd2:mysql -uroot -proot
/*如果你有问题*/ 

/*task1*/ 
创建emp表：包含empno ename salary
empno(整数 自动增长 主键)
ename(变长字符 最大长度30 非空)
salary(整数 非空)
录入数据：
Simth 100
Scott 200
Jim 300


/*answer1*/
create table emp(
	empno int auto_increment primary key,
    ename varchar(30) not null,
    salary int not null
);
insert into emp(ename,salary) values('Simth',100);
select * from emp;
insert into emp(ename,salary) values('Scott',200);
insert into emp(ename,salary) values('Jim',300);

/*insert into emp(ename,salary) values('Simth',100),('Scott',200),('Jim',300);*/

Show tables;
Desc emp;

查询salary大于150的员工
select * from emp where salary >150;
查询salary在150和300之间的员工
select * from emp where salary between 150 and 300;
只查询前两条记录
select * from emp limit 2;

/*task2*/
--student (stu_id stu_name stu_password)
create table student(
    stu_id int auto_increment primary key,
    stu_name varchar(30) not null,
    stu_password int not null
);
insert into student(stu_name,stu_password) values('Timothy',1503),('Jiazhe',3869),('Liu',5166);
select * from student;
update student set stu_name = 'Simth' where stu_name = 'Timothy';
update student set stu_name = 'Scott' where stu_name = 'Jiazhe';
update student set stu_name = 'Jim' where stu_name = 'Liu';

select * from student where stu_id = 3;
select min(salary) from emp;
select max(salary) from emp;
select avg(salary) from emp;
select stu_id from student;
select stu_name from student;
select stu_id,stu_name from student;
select stu_password,stu_name from student;