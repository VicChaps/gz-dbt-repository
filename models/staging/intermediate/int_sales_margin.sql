select 
sales.date_date,
sales.orders_id,
sales.products_id,
sales.revenue,
sales.quantity,
product.purchase_price,
(sales.quantity*product.purchase_price) as purchase_cost,
sales.revenue-(sales.quantity*purchase_price) as margin
from {{ ref('stg_gz_raw_data__raw_gz_sales') }} as sales
join {{ ref('stg_gz_raw_data__raw_gz_product') }} as product on product.products_id=sales.products_id