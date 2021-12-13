{% macro grant_usage(role) %}
{% set sql %}
	grant usage on schema {{ target.schema }} to {{ role }};    
{% endset %}

{% do run_query(sql) %}
{% do log("Privileges granted", info=True) %}
{% endmacro %}
