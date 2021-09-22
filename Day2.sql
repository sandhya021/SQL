use student;
select * from student_details where dept_id in (select dept_id from dept where dept_name='Maths' || dept_name='Science' || dept_name='English');
select * from student_details s, dept d where s.marks>70 and d.dept_name='Maths';
select * from student_details s,(select * from dept where dept_id>1)d where s.marks>70 and d.dept_id>2;
alter table student_details add result varchar(10);

alter table student_details modify result int;

alter table student_details drop result;

update student_details set marks=100 where id=3;
select * from student_details;

create database demo;

create table sales ( 
salesId int not null primary key,
sales_name varchar(20),
address varchar(20)
);
create table order_sales (
id int primary key,
product_name varchar(20),
address varchar(20),
salesId int,
constraint FK_order FOREIGN KEY(salesId) REFERENCES sales(salesId));
select * from sales;
Insert into sales (SalesId, sales_name, address)
values(1, 'Sandhya', 'Bangalore'), (2, 'Girish', 'Bangalore'), (3, 'Sindhuja', 'Bangalore'), (4, 'Tarun','Bangalore');
select * from sales;
Insert into order_sales (Id, product_name, address,SalesId)
values(1, 'Mouse', 'Bangalore',2), (2, 'Pendrive', 'Bangalore',1), (3, 'Keyboard', 'Bangalore',4), (4, 'HeadPhones','Bangalore',3);
select * from order_sales;

select * from order_sales;

select s.sales_name, p.salesId, s.salesId from sales s right join 
order_sales p on s.salesId=p.salesId;
select * from order_sales;
select s.sales_name, p.salesId, s.salesId from sales s left join 
order_sales p on s.salesId=p.salesId;
select * from order_sales;
select s.sales_name, p.salesId, s.salesId from sales s inner join 
order_sales p on s.salesId=p.salesId;