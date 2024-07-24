select
  orders_id,
  date_date,
  round(SUM(revenue),2) as revenue,
  round(SUM(quantity),2) as quantity,
  round(SUM(purchse_cost),2) as purchase_cost,
  round(SUM(margin),2) as margin
from {{ ref('stg_gz_raw_data__raw_gz_sales') }}
group by orders_id,date_date
order by orders_id desc
