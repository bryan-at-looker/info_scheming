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

  measure: count {
    type: count
    drill_fields: [detail*]
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

  dimension: comment {
    type: string
    sql: ${TABLE}."COMMENT" ;;
  }

  set: detail {
    fields: [table_schema, table_name, column_name, data_type, comment]
  }
}
