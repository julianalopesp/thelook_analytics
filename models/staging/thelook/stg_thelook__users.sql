with 

source as (

    select * from {{ source('raw_thelook', 'users') }}
    
),

renamed as (

    select
        id as user_id,
        first_name,
        last_name,
        age,
        gender,
        state as state_name,
        country,
        traffic_source,
        cast(created_at as timestamp) as created_at

    from source
)

select * from renamed