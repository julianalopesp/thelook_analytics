with 
source as (
    
    select * from {{ source('raw_thelook', 'order_items') }}

),

renamed as (
    select
        id as item_id,
        order_id,
        product_id,
        round(cast(sale_price as numeric), 2) as sale_price
    from source
)

select * from renamed