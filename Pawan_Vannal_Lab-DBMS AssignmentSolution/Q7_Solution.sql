# Q7) Display the Id and Name of the Product ordered 
# after “2021-10-05”.

select prod.pro_id, pro_name from product as prod
inner join
(
select pro_id, sp.pricing_id from supplier_pricing as sp
inner join
(
select pricing_id from `order` where ord_date > "2021-10-05"
) as ord
on sp.pricing_id = ord.pricing_id
) as sp_ord
on prod.pro_id = sp_ord.pro_id