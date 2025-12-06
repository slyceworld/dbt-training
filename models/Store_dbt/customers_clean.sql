{{ config(materialized='table') }}

select
  CustomerID as customer_id,
  CustomerName as customer_name,
  Country as country,
  Segment as segment
from {{ source('store', 'Customers') }}
