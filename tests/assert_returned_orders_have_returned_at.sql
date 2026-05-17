select order_id
from {{ ref('stg_thelook__orders') }}
where
    order_status = 'Returned'
    and returned_at is null