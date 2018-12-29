view: info_in_rows {
  derived_table: {
    sql: SELECT table_schema, table_name, column_name, data_type, comment FROM INFORMATION_SCHEMA.COLUMNS
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

  dimension: table_schema {
    type: string
    sql: ${TABLE}."TABLE_SCHEMA" ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}."TABLE_NAME" ;;
  }

  dimension: column_name {
    type: string
    sql: ${TABLE}."COLUMN_NAME" ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}."DATA_TYPE" ;;
  }

  dimension: type_convert {
    type: string
    sql:
    CASE WHEN LOWER(${data_type}) IN ('integer','bigint','double','float','float', 'number') THEN 'number'
         WHEN SUBSTR(${data_type},1,7) = 'decimal' THEN 'number'
         WHEN LOWER(${data_type}) IN( 'varchar','text') THEN 'string'
         WHEN LOWER(${data_type}) = 'boolean' THEN 'yesno'
         WHEN LOWER(${data_type}) IN ('timestamp_ltz','timestamp_ntz','timestamp_tz','timestamp','time', 'datetime', 'date') THEN 'time'
         ELSE CONCAT('string ## ',${data_type})
        END
  ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}."COMMENT" ;;
  }

  set: detail {
    fields: [table_schema, table_name, column_name, data_type, comment]
  }
}
