SELECT
    city_name,
    temperature_celsius,
    {{ celsius_to_fahrenheit("temperature_celsius") }} AS temperature_fahrenheit,
    recorded_date
FROM {{ source('STAGING','CityTemperature_Celsius') }}