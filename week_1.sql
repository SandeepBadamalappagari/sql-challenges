-- 1. Write type of attributes.
-- Ans: (i) - Key Atribute - Attribute to Uniquely identify Entity,
-- (ii) - Simple Attribute - No Further Division is Possible,
-- (iii) - Composite Attribute - More Than One simple Attribute make Composite attribute,
-- (iv) - Derived Attribute - Values for derived attribute is achieved by other Attribute,
-- (v) - Single value Attribute - Single value,
-- (vi) - Multi-Value Attribute - multiple value for some Attribute,


-- 2. ACID stands for?
-- Ans: ACID( Acronym for Atomicity , Consistency , Isolation , Durability )
--   Atomicity - Either All instruction in the transactions will take place or none of them will,
--   Consistency - Initial state of database is consistent, Database should be in the consistent state before and after each transactions,
--   Isolation - Simultaneous transaction should be executed as independent transactions. Existence of any transaction remains unaffected by other transaction,
--   Durability - Changes occured with commit in database should remain  unaffected with hardware and software falure.


-- 3. Write three examples of data definition language commands.
-- Ans: Create (Table Creation )
--  Alter (Modifying the structure of Table )
--  Drop (Dropping Table )
--  Truncate (Deleting All Rows from Table )


-- 4. Write examples of transaction control language commands.
-- Ans: Commit ( Saving all transactions aftert last commit )
--      Rollback ( Undoing transaction that are not committed )
--      Savepoint ( Used to rollback the transaction to a particular point )


-- 5. Write name of default tables of sakila schema of MySQL.
-- Ans: sakila Tables Are :- actor , address , category , city , country , customer , film , film_actor , film_category , 
--                           film_text , inventory , language , payment , rental , staff , store .


-- 6. Explore EER diagram of schema sakila.
-- Ans:  File Attached ( EER Diagram )


-- 7. Look for foreign keys used in the table category (Navigator).
-- Ans:  No Foreign Key


-- 8. Look for indexes used in table film_actor (Navigator).
-- Ans: PRIMARY and idx_fk_film_id  are indexes used in table film_actor .
--      Files Attached 


-- 9. Look for stored procedures used in the sakila database (Navigator).
-- Ans: film_in_stock , film_not_in_stock , rewards_report  are stored procedures used in the sakil database.
-- Files Attached


-- 10. Look for views used in the sakila database (Navigator).
-- Ans: actor_info , customer_list , film_list , nicer_but_slower_film_list , sales_by_film_category , sales_by_stores ,
--  staff_list are Views used in sakila database.  Files Attached ( Views ) 


-- 11. Write keyboard shortcut for executing all statements in MySQL.
-- Ans: Ctrl + Shift + Enter


-- 12. Write keyboard shortcut for opening new tab in MySQL.
-- Ans: Ctrl + T


-- 13. Explore all the schemas through navigator in MySQL.
-- Ans: All Schemas are - sakila , sys , world
--      Files Attached

-- 14. Create new schema in connected server in MySQL.
  CREATE SCHEMA employees;


-- 15. Create new SQL tab in MySQL for running queries and save the file.
-- Ans: Created new SQL tab as - Week1 save