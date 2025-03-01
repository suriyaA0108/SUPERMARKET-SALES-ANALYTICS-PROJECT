create database online_supermarket_sales;

use online_supermarket_sales;

select count(*) 
from supermarket_sales;

select * 
from supermarket_sales;

Alter Table supermarket_sales 
Rename Column ï»¿Customer_ID to Customer_ID;

------------------------------------------------------------------------------------------------------------------------------------
                                         ###WHERE Clause###

#1.Retrieve all transactions where the MRP is greater than ₹1000.
select * 
from supermarket_sales
where MRP >1000;

#2.Find all orders where the Final Price is less than ₹500.
select * 
from supermarket_sales
where Final_Price <500;

#3.Display all sales made in the city of Mumbai.
select * 
from supermarket_sales
where City='Mumbai';

#4.Retrieve records where the Payment Status is 'Pending'.
select * 
from supermarket_sales
where Payment_Status='Pending';

#5.Find all sales where the Discount Amount is more than ₹200.
select * 
from supermarket_sales
where Discount_Amount >200;

                     ##Functions (Aggregate & String)##
                     
#6.Calculate the total revenue generated from all sales.
select sum(Final_Price) As Revenue
from supermarket_sales;

#7.Find the average discount amount applied on all products.
select avg(Discount_Amount) as Average
from supermarket_sales;

#8.Count the total number of orders placed.
select count(Order_id) As total_orders
from supermarket_sales;

#9.Retrieve the highest shipping charge applied in any transaction.
select max(shipping_charges) as highest_charge
from supermarket_sales;

#10.Extract the first 5 characters of each Product Name.
SELECT Product_Name, LEFT(Product_Name, 5) AS ShortName  
FROM supermarket_sales;

select * from supermarket_sales;
                             #AND & OR
#11.Find all customers from Mumbai who are Male and have an age above 35 OR have an active subscription.
select * from supermarket_sales
where city='mumbai' 
and gender='male' 
and (customer_age >30 or subscription ='premium');

                             #ORDER BY
#12.Retrieve all products sorted by MRP in descending order.
select  * 
from supermarket_sales
order by MRP desc;

							#LIMIT & OFFSET
#13.Retrieve the third to fifth highest priced products.
select product_name, final_price
from supermarket_sales
order by final_price desc
limit 3 offset 2;

							#LIKE & Wildcards
#14.Find all product names that start with ‘Ariel’ and contain the word ‘Liquid’ anywhere.
select *
from supermarket_sales
where product_name like 'Ariel%' and product_name like '%liquid%';

							#IN & NOT IN
#15.List all customers from Chennai, Bangalore, and Hyderabad, but exclude customers from Delhi and Mumbai.
select * 
from supermarket_sales
where city in('chennai', 'bangalore','hyderabad') and city not in ('delhi', 'mumbai');
 
                           #BETWEEN & NOT BETWEEN
#16.Get all orders placed between January 1, 2022, and December 31, 2022.
select * 
from supermarket_sales
where order_date between "2022-01-01" and "2022-12-31";
						
                        #Aliases
#17.Display Customer_ID, City but rename them as ID, Location.
select customer_id as ID, city as location
from supermarket_sales;

							  #Joins
#18.Get a list of all orders with customer names and product details by joining Customers, Orders, and Products tables.#////





