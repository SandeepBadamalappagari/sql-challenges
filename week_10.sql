#Q1Write query to create procedure getaddress using cursor to fetch address from address table (schema – sakila).  
#Query to use - SELECT address FROM  address;
#Cursor Name – addressdetail

use sakila;
drop procedure if exists getaddress;

delimiter $$
create procedure getaddress
(inout My_address varchar(16300))
begin 
	declare finished int default 0;
    declare addresslist varchar(400) default "";
    declare addressdetail 
    cursor for 
    select address from address ;
declare Continue handler 
for not found set finished=1;
open addressdetail;

MY_GET_address_A : 
LOOP
fetch addressdetail into addresslist;
if finished = 1 then leave MY_GET_address_A;
end if;
set My_address = concat(addresslist," ; ",My_address );
end LOOP MY_GET_address_A;
close addressdetail;
end$$ 
delimiter ;

set @address="";
CALL getaddress(@address);
select @address;



#Q2. Write query to create procedure getactorname using cursor to fetch first_name,last_name from actor table (schema – sakila).  
#Query to use - SELECT first_name, last_name FROM  actor;
#Cursor Name – actornamedetail
#Fetched data from Cursor is given below:

use sakila;
select * from actor;
drop procedure if exists getactorname;

delimiter $$
create  procedure getactorname(inout firstname varchar(16000),inout lastname varchar(16000))
begin
	declare finished int default 0;
    declare firstnamelist varchar(400) default '';
    declare lastnamelist varchar(400) default '';
    
    declare actornamedetail cursor for
		select first_name,last_name from actor;
        
	declare continue handler for not found set finished =1;
    
    open actornamedetail;
    loopstart:
    loop
		fetch actornamedetail into firstnamelist,lastnamelist;
        if finished = 1 then 
			leave loopstart;
		end if;
        set firstname = concat(firstnamelist,';',firstname);
        set lastname = concat(lastnamelist,';',lastname);
	end loop loopstart;
    close actornamedetail;
end$$
delimiter $$

set @f='';
set @l='';
call getactorname(@f,@l);
select @f Firstname,@l Lastname;

