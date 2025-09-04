create database finalproject;
use finalproject;
show tables;
select * from walmartsales;


-- TASK 1: Identifying the Top Branch by Sales Growth Rate
select `Branch`, month(str_to_date(`Date`, '%d-%m-%Y')) as month, sum(`Total`) as monthly_sales
from walmartsales
group by `Branch`, month(str_to_date(`Date`, '%d-%m-%Y'))
order by `Branch`, month;

    
    
    -- TASK 2: Finding the Most Profitable Product Line for Each Branch
select 
    branch,
    `product line`,
    sum(`gross income`) as total_profit
from 
    walmartsales
group by 
    branch, `product line`
order by 
    branch, total_profit desc;


-- TASK 3: Analyzing Customer Segmentation Based on Spending
select 
    `customer id`,
    sum(`total`) as total_spent,
    case
        when sum(`total`) < 20000 then 'low'
        when sum(`total`) between 20000 and 25000 then 'medium'
        else 'high'
    end as spending_category
from 
    walmartsales
group by 
    `customer id`;
    
    
-- TASK 4: Detecting Anomalies in Sales Transactions
select `Invoice ID`, `Product line`, `Total`
from walmartsales
where `Total` > (
    select avg(`Total`) * 2 from walmartsales 
)
or `Total` < (
    select avg(`Total`) * 0.5 from walmartsales 
);


-- TASK 5: Most Popular Payment Method by City
select `City`, `Payment`, count(*) as count
from walmartsales
group by `City`, `Payment`
order by `City`, count desc;


-- TASK 6: Monthly Sales Distribution by Gender
select month(str_to_date(`Date`, '%d-%m-%Y')) as month, `Gender`, sum(`Total`) as total_sales
from walmartsales
group by month, `Gender`
order by month, total_sales desc;


-- TASK 7: Best Product Line by Customer Type
select `Customer type`, `Product line`, sum(`Total`) as total_sales
from walmartsales
group by `Customer type`, `Product line`
order by `Customer type`, total_sales desc;


-- TASK 8: Identifying Repeat Customers
select distinct a.`Customer ID`
from walmartsales a
join walmartsales b
  on a.`Customer ID` = b.`Customer ID`
 and a.`Invoice ID` <> b.`Invoice ID`
where datediff(str_to_date(b.`Date`, '%d-%m-%Y'), str_to_date(a.`Date`, '%d-%m-%Y')) between 1 and 30;



-- TASK 9: Finding Top 5 Customers by Sales Volume
select `Customer ID`, sum(`Total`) as total_sales
from walmartsales
group by `Customer ID`
order by total_sales desc
limit 5;


-- TASK 10: Analyzing Sales Trends by Day of the Week
select dayname(str_to_date(`Date`, '%d-%m-%Y')) as day, sum(`Total`) as total_sales
from walmartsales
group by day
order by total_sales desc;





    


