-- pick list
select p.name, p.sku, s.quantity, l.label
from products p
inner join stock s on p.id = s.product_id
inner join locations l on s.location_id = l.id
where l.zone = 'A';

-- empty bin search
select l.label as empty_location, l.zone
from locations l
left join stock s on l.id = s.location_id
where s.id is null or s.quantity = 0;

-- tenant isolation guard
select t.name as tenant, p.name as product, sum(s.quantity) as total_stock
from tenants t
join products p on t.id = p.tenant_id
join stock s on p.id = s.product_id
where t.id = 1
group by t.name, p.name;

-- warehouse aggregation
select l.zone, sum(s.quantity) as total_quantity
from locations l
join stock s on l.id = s.location_id
group by l.zone;

-- fuzzy search
select sku, name, retail_price
from products 
where name ilike '%white%' or sku ilike '%WHI%';