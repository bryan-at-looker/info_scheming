view: info_scheming {
  derived_table: {
    sql:  SELECT * FROM INFORMATION_SCHEMA.COLUMNS
            WHERE   table_schema = '{% parameter table_schema_input %}'
              AND   table_name = '{% parameter table_name_input %}'
          ORDER BY column_name ASC
             ;;
  }

  parameter: table_schema_input {
    type: unquoted
  }

  parameter: table_name_input {
    type: unquoted
  }

  suggestions: no

  measure: lookml {
    type: string
    sql: 'view: {% parameter table_name_input %} {' || '
      ' || 'sql_table_name: {% parameter table_schema_input %}.{% parameter table_name_input %} ' || ';' ||';

      ' || ARRAY_TO_STRING(array_agg(${combined}),'
      ') || '
      }';;
    html: {{value | newline_to_br }}  ;;
  }

  dimension: table_catalog {
    hidden: yes
    type: string
    sql: ${TABLE}.table_catalog ;;
  }

  dimension: table_schema {
    hidden: yes
    type: string
    sql: ${TABLE}.table_schema ;;
  }

  dimension: table_name {
    hidden: yes
    type: string
    sql: ${TABLE}.table_name ;;
  }

  dimension: column_name {
    hidden: yes
    type: string
    sql: ${TABLE}.column_name ;;
  }

  dimension: column_helper {
    hidden: yes
    type: string
    sql: lower(regexp_replace(${column_name}, '[^[:alnum:]]', '_')) ;;
  }

  dimension: data_type {
    hidden: yes
    type: string
    sql: ${TABLE}.data_type ;;
  }

  dimension: name {
    hidden: yes
    type: string
    sql: 'dimension: ' || ${column_helper} || ' {' ;;
  }

  dimension: sql {
    hidden: yes
    type: string
    sql: 'sql: $' || '{' || 'TABLE}.' || ${column_name} || ' ;' || ';' ;;
  }

  dimension: type_convert {
    hidden: yes
    type: string
    sql:
    CASE WHEN LOWER(${data_type}) IN ('integer','bigint','double','float','float', 'number') THEN 'number'
         WHEN SUBSTR(${data_type},1,7) = 'decimal' THEN 'number'
         WHEN ${data_type} IN( 'varchar','TEXT') THEN 'string'
         WHEN ${data_type} = 'boolean' THEN 'yesno'
         ELSE CONCAT('string ## ',${data_type})
        END
  ;;
  }

  dimension: type {
    hidden: yes
    type: string
    sql: CONCAT('type: ',${type_convert})  ;;
  }

  dimension: combined {
    hidden: yes
    type: string
    sql: ${name} || '
          ' || ${sql} || '
          ' || ${type} || '
          ' || ${description} || '
          ' || '}' || '
        ' ;;
    html: {{value | newline_to_br }} ;;
  }

  dimension: ordinal_position {
    hidden: yes
    type: number
    sql: ${TABLE}.ordinal_position ;;
  }

  dimension: column_default {
    hidden: yes
    type: string
    sql: ${TABLE}.column_default ;;
  }

  dimension: is_nullable {
    hidden: yes
    type: string
    sql: ${TABLE}.is_nullable ;;
  }

  dimension: comment {
    hidden: yes
    type: string
    sql: COALESCE(${TABLE}.comment,'') ;;
  }

  dimension: description {
    hidden: yes
    type: string
    sql: 'description: "' || ${comment} || '"' ;;
  }

  dimension: extra_info {
    hidden: yes
    type: string
    sql: ${TABLE}.extra_info ;;
  }
}
