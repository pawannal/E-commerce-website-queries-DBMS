# Q6) Find the least expensive product from each category 
# and print the table with category id, name, and 
# price of the product

select CATEGORY_ID, CAT_NAME, min(MIN_PRICE) from category as cat
inner join
(
select prod.PRO_ID, PRO_NAME, CAT_ID as CATEGORY_ID, MIN_PRICE from product as prod
inner join
(select pro_id as PRO_ID, min(supp_price) as MIN_PRICE from supplier_pricing 
group by pro_id) as sp
on prod.pro_id = sp.pro_id)
as pro_sp
on cat.cat_id = pro_sp.CATEGORY_ID
group by 
CATEGORY_ID, CAT_NAME;






