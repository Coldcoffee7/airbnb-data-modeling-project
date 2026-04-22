{% test minimum_row_count(model, min_row_count) %}
SELECT COUNT(*) AS COUNT
FROM {{ model }}
HAVING COUNT(*) < {{ min_row_count }}
{% endtest %}