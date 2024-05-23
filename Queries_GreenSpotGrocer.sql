-- fetch details of total sales from each customer

select c.customer_id, c.name, ROUND(SUM(s.total_amount),2) as total_purchase
from Customers c 
join Sales s on c.customer_id = s.customer_id
group by c.customer_id, c.name;

-- Fetch details of items sold at which date
select p.item_id,p.item_descreption,p.item_type,s.sold_date,s.quantity
from Products p
join Sales s on p.item_id = s.item_id
order by sold_date;

-- Fetch details about the latest purchased order from each vendor(supplier) on each item
select p.item_id,p.item_descreption,MAX(i.purchase_date) as latest_purchase_date, v.vendor_name
from Inventory i 
join Products p on i.item_id=p.item_id
join Vendors v on p.vendor_id=v.vendor_id
group by
p.item_id,p.item_descreption,v.vendor_name;

