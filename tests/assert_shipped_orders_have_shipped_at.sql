select order_id
from {{ ref('stg_thelook__orders') }}
where
    order_status = 'Shipped'
    and shipped_at is null