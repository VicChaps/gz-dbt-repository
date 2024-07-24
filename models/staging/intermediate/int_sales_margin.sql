select 
raw_gz_sales.date_date,
raw_gz_sales.orders_id,
raw_gz_sales.pdt_id,
raw_gz_sales.revenue,
raw_gz_sales.quantity,
raw_gz_product.purchase_price,
(raw_gz_sales.quantity*purchase_price) as purchase_cost
raw_gz_sales.revenue-(raw_gz_sales.quantity*purchase_price) as margin
from {{ ref('stg_gz_raw_data__raw_gz_sales') }} 
join {{ ref('stg_gz_raw_data__raw_gz_product') }} on raw_gz_product.products_id = raw_gz_sales.pdt_id