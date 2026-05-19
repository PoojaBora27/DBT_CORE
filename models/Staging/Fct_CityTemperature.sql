SELECT
    city_name,
    AVG(temperature_celsius) AS avg_temp_celsius,
    AVG(temperature_fahrenheit) AS avg_temp_fahrenheit
FROM {{ ref('CityTemperature_celsius_to_fahrenheit') }}
GROUP BY city_name