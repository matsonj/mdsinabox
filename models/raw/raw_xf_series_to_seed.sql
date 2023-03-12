WITH source AS (
    SELECT * FROM 'data/data_catalog/psa/xf_series_to_seed/*.parquet'
)
SELECT * FROM source