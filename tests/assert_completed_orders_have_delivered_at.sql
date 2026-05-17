select
    order_id
from {{ ref('stg_thelook__orders') }}
where 
    order_status = 'Complete'
    and delivered_at is null