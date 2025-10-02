{% macro learn_logging() %}
    {{ log("Test your data!") }}
    {{ log("Test your data!", info=True) }} --> Logs to the screen, too
--  {{ log("Test your data!", info=True) }} --> This will be put to the screen
    {# log("Test your data!", info=True) #} --> This won't be executed
{% endmacro %}