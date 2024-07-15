use sampledb;
select agent_name ,phone_number
from agents;

select cust_name,working_area
from customer
where working_area='leeds';

select order_num,order_amount
from orders
where order_description = 'shoe';

select agent_code,order_amount,order_description
from orders
where order_amount= 3000 AND
order_description ='clothes';


select * from orders
where order_amount>2000;

select cust_name, phone_number
from customer
where cust_name LIKE'%e%'
order by cust_name desc;

select * from orders
where order_amount=(select MIN(order_amount)
from orders);

select sum(order_amount)
from orders;

select count(distinct agent_code)
from orders;

select cust_code, max(order_amount)
from orders
group by cust_code;

select agent_code,max(order_amount)
from orders
where order_date='2022-07-13'
group by agent_code;

select customer.cust_name,agents.agent_name,agents.working_area
from agents,customer
where agents.working_area = customer.working_area;

select customer.cust_name, agents.agent_name
from agents, customer
where agents.agent_code = customer.agent_code;

select order_num, cust_name, orders.agent_code
from agents, customer, orders
where customer.working_area<>agents.working_area
AND orders.cust_code = customer.cust_code
AND orders.agent_code =agents.agent_code;

select * from orders
where agent_code=(select agent_code from agents
where  agent_name='rickey');



