with
source as (

    select * from {{ source('raw_thelook', 'products') }}

),

renamed as (

    select
        id as product_id,
        name as product_name,
        category,
        brand,
        department,
        round(cast(cost as numeric), 2) as cost_price,
        round(cast(retail_price as numeric), 2) as retail_price
    from source

)

select * from renamed