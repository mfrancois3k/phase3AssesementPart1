


CREATE TABLE order 
(
    ord_no 	        varchar(300),
    purch_amt 	    varchar(300),
    ord_date 	    varchar(300),
    customer_id 	varchar(300),
    salesman_id 	varchar(300)
);

INSERT INTO order (ord_no ,purch_amt ,ord_date ,customer_id ,salesman_id ) VALUES ('70001 ', '150.5 ', '2012-10-05 ', '3005 ', '5002 ');
INSERT INTO order (ord_no ,purch_amt ,ord_date ,customer_id ,salesman_id ) VALUES ('70009 ', '270.65 ', '2012-09-10 ', '3001 ', '5005 ');
INSERT INTO order (ord_no ,purch_amt ,ord_date ,customer_id ,salesman_id ) VALUES ('70002 ', '65.26 ', '2012-10-05 ', '3002 ', '5001 ');
INSERT INTO order (ord_no ,purch_amt ,ord_date ,customer_id ,salesman_id ) VALUES ('70004 ', '110.5 ', '2012-08-17 ', '3009 ', '5003 ');
INSERT INTO order (ord_no ,purch_amt ,ord_date ,customer_id ,salesman_id ) VALUES ('70007 ', '948 . 5 ', '2012-09-10 ', '3005 ', '5002 ');
INSERT INTO order (ord_no ,purch_amt ,ord_date ,customer_id ,salesman_id ) VALUES ('70005 ', '2400.6 ', '2012-07—27 ', '3007 ', '5001 ');
INSERT INTO order (ord_no ,purch_amt ,ord_date ,customer_id ,salesman_id ) VALUES ('70008', '5760', '2012-09-10', '3002', '5001');


-- 2 Write a SQL query to display the order number followed by order date and the purchase amount for each order which will be delivered by the salesman who is holding the ID 5001.
SELECT ord_no, ord_date, purch_amt
FROM order
WHERE salesman_id = '5001';

------------------------------------------------------

-- create a slaesman table
CREATE TABLE salesman (
  salesman_id   INTEGER,
  name          VARCHAR(300),
  city          VARCHAR(300),
  commission    REAL
);


-- insert the data from the above query to salesman table
INSERT INTO  salesman (salesman_id  ,name,   city,   commission,,,,,,) VALUES ('5001 ', 'James', 'Hoog ', ' 0.15', '', '', '', '', '', '');
INSERT INTO  salesman (salesman_id  ,name,   city,   commission,,,,,,) VALUES ('5002', 'Nail ', 'Knite', ' 0.13', '', '', '', '', '', '');
INSERT INTO  salesman (salesman_id  ,name,   city,   commission,,,,,,) VALUES ('5005', ' Pit', 'Alex', ' 0.11', '', '', '', '', '', '');
INSERT INTO  salesman (salesman_id  ,name,   city,   commission,,,,,,) VALUES ('5006', 'Me', 'Lyon', ' 0.14', '', '', '', '', '', '');
INSERT INTO  salesman (salesman_id  ,name,   city,   commission,,,,,,) VALUES ('5007', 'Paul', 'Adam', ' 0.13', '', '', '', '', '', '');
INSERT INTO  salesman (salesman_id  ,name,   city,   commission,,,,,,) VALUES ('5003', 'Lauson', 'Hen', ' 0.12', '', '', '', '', '', '');


-- create a customer table
CREATE TABLE customer 
(
    customer_id 	varchar(300),
    cust_name 	varchar(300),
    City 	varchar(300),
    grade 	varchar(300),
    salesman_id 	varchar(300)
);

INSERT INTO customer (customer_id ,cust_name ,City ,grade ,salesman_id ) VALUES ('3002 ', 'Nick Rimando ', 'New York ', '100 ', '5001 ');
INSERT INTO customer (customer_id ,cust_name ,City ,grade ,salesman_id ) VALUES ('3007 ', 'Brad Davis ', 'New York ', '200 ', '5001 ');
INSERT INTO customer (customer_id ,cust_name ,City ,grade ,salesman_id ) VALUES ('3005 ', 'Graham Zusi ', 'California ', '200 ', '5002 ');
INSERT INTO customer (customer_id ,cust_name ,City ,grade ,salesman_id ) VALUES ('3008 ', 'Julian Green ', 'London ', '300 ', '5002 ');
INSERT INTO customer (customer_id ,cust_name ,City ,grade ,salesman_id ) VALUES ('3004 ', 'Fabian Johnson ', 'Paris ', '300 ', '5006 ');
INSERT INTO customer (customer_id ,cust_name ,City ,grade ,salesman_id ) VALUES ('3009 ', 'Geoff Cameron ', 'Berlin ', '100 ', '5003 ');
INSERT INTO customer (customer_id ,cust_name ,City ,grade ,salesman_id ) VALUES ('3003', 'Jozy Altidor', 'Moscow', '200', '5007');


-- 3 Write a SQL statement to prepare a list with salesman name, customer name and their cities for the salesmen and customer who belongs to the same city.

SELECT salesman_name, customer_name, city
FROM salesman, customer
WHERE salesman.city = customer.city;