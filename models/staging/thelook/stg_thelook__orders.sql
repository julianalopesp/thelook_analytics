with 

source as (

    select * from {{ source('raw_thelook', 'orders') }}

),

renamed as (
    select
        order_id,
        user_id,
        status as order_status,
        cast(created_at as timestamp) as created_at,
        cast(returned_at as timestamp) as returned_at,
        cast(shipped_at as timestamp) as shipped_at,
        cast(delivered_at as timestamp) as delivered_at,
        num_of_item as item_count
    from source

)

select * from renamed