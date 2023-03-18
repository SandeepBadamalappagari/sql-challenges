USE employees;
/* Q1. Write query to create table actor.
  Column Name            Data type                 Constraint
  actor_id            SMALLINT UNSIGNED            PRIMARY KEY 
  first_name          VARCHAR(45)                  NOT NULL
  last_name           VARCHAR(45)                  NOT NULL 
 */ 
CREATE TABLE actor (
   actor_id SMALLINT UNSIGNED,
   first_name VARCHAR(45) NOT NULL,
   last_name VARCHAR(45),
   PRIMARY KEY (actor_id));
   
/* Q2. Write query to create table country.
Column Name          Data Type             Constraint
country_id           SMALLINT UNSIGNED     PRIMARY KEY  
country              VARCHAR(50)           NOT NULL
last_update          TIMESTAMP             NOT NULL, DEFAULT CURRENT_TIMESTAMP
*/
CREATE TABLE country (
    country_id SMALLINT UNSIGNED PRIMARY KEY,
    country VARCHAR(50) NOT NULL,
    last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP);
    
/* Q3.  Write query to create table city.
Column Name       Data Type            Constraint
city_id           SMALLINT UNSIGNED    PRIMARY KEY  
city              VARCHAR(50)          NOT NULL
country_id        SMALLINT UNSIGNED    FOREIGN KEY (fk_city_country), country (country_id) 
last_update       TIMESTAMP            NOT NULL, DEFAULT CURRENT_TIMESTAMP
*/

CREATE TABLE city (
    city_id SMALLINT UNSIGNED PRIMARY KEY,
    city VARCHAR(50) NOT NULL,
    country_id SMALLINT UNSIGNED,
    last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (country_id)  REFERENCES country (country_id));

/* Q4. Write query to create table address.
Column Name       Data Type            Constraint
address_id        SMALLINT UNSIGNED    PRIMARY KEY  
address           VARCHAR(50)          NOT NULL
address2          VARCHAR(50)          DEFAULT NULL
district          VARCHAR(20)          NOT NULL
city_id           SMALLINT UNSIGNED    FOREIGN KEY (fk_address_city), city (city_id) 
postal_code       VARCHAR(10)          DEFAULT NUL
phone             VARCHAR(20)          NOT NULL
last_update       TIMESTAMP            NOT NULL, DEFAULT CURRENT_TIMESTAMP
*/

CREATE TABLE address (
    address_id SMALLINT UNSIGNED PRIMARY KEY,
    address VARCHAR(50) NOT NULL,
    address2 VARCHAR(50) DEFAULT NULL,
    district VARCHAR(20) NOT NULL,
    city_id SMALLINT UNSIGNED,
    postal_code VARCHAR(10) DEFAULT NULL,
    phone VARCHAR(20) NOT NULL,
    last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (city_id) REFERENCES city (city_id));

/*  Q5. Write a query to insert values in table customer. (schema - sakila). */

USE sakila;
INSERT INTO customer VALUE('1002','1','Manish','Kumar','Manishkvkumar01@gmail.com',10,'1','2001-03-28','2007-03-02');
SELECT * FROM customer;

/* Q6.  Write a query to insert values in table rental. (schema - sakila). */

USE sakila;
INSERT INTO rental VALUE( '200002','2002-02-03','100','580','2002-02-03','1','2020-02-03' );
SELECT * FROM rental;
 