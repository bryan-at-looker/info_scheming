view: crazy_variant_unnest {
  derived_table: {
    sql:
WITH unnest_lat as (
    SELECT
        'src' as source
      , regexp_replace(src.path, '\\\\[[0-9]+\\\\]', '[]') as path
      , typeof(src.value) as type
FROM {% parameter table_schema_input %}.{% parameter table_name_input %},
  lateral flatten(src, recursive=>true) src

GROUP BY 1,2,3
ORDER BY 1,2,3
)
SELECT *
, REGEXP_COUNT(path, '\\[') as count_brackets
, REGEXP_COUNT(path, '\\.') as count_periods
-- , REGEXP_INSTR(path, '\\[', REGEXP_INSTR(path, '\\.'))
FROM unnest_lat

    ;;
  }

  dimension: path {}
  dimension: source {}
  dimension: count_brackets {}
  dimension: count_periods {}
  dimension: type_convert {
    type: string
    sql:
    CASE WHEN LOWER(${type}) IN ('integer','bigint','double','float','float', 'number') THEN 'number'
         WHEN SUBSTR(${type},1,7) = 'decimal' THEN 'number'
         WHEN LOWER(${type}) IN( 'varchar','text') THEN 'string'
         WHEN LOWER(${type}) = 'boolean' THEN 'yesno'
         WHEN LOWER(${type}) IN ('timestamp_ltz','timestamp_ntz','timestamp_tz','timestamp','time', 'datetime', 'date') THEN 'time'
         WHEN LOWER(${type}) = 'object'  THEN 'object'
         WHEN LOWER(${type}) = 'array' THEN 'array'
       ELSE CONCAT('string ## ',${type})
    END
  ;;
  }

  dimension: type {}

  dimension: view_name_lookml {
    type: string
    sql: '{% parameter view_name_output %}' ;;
  }

  dimension: table_schema {
    type: string
    sql: '{% parameter table_schema_input %}' ;;
  }

  dimension: table_name {
    type: string
    sql: '{% parameter table_name_input %}' ;;
  }

  parameter: table_schema_input {
    type: unquoted
  }

  parameter: table_name_input {
    type: unquoted
  }

  parameter: view_name_output {
    type: unquoted
  }

}
