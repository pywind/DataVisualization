SELECT DISTINCT emp_var_rate, cons_price_idx, cons_conf_idx, euribor3m, nr_employed
FROM economic_
{% if filter_values('emp_var_rate')|length%} 
WHERE emp_var_rate BETWEEN {{filter_values('emp_var_rate')[0]}} and {{filter_values('emp_var_rate')[1]}}
{% endif %}
{% if filter_values('cons_price_idx')|length%} 
WHERE cons_price_idx BETWEEN {{filter_values('cons_price_idx')[0]}} and {{filter_values('cons_price_idx')[1]}}
{% endif %}
{% if filter_values('euribor3m')|length%} 
WHERE euribor3m BETWEEN {{filter_values('euribor3m')[0]}} and {{filter_values('euribor3m')[1]}}
{% endif %}