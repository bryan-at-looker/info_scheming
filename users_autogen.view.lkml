view: users_autogen {
sql_table_name: LOOKER_SCRATCH.USERS_TEMP ;;

dimension: age {
  sql: ${TABLE}.AGE ;;
  type: number
}

  
dimension: anna_test_1 {
  sql: ${TABLE}.ANNA_TEST_1 ;;
  type: string
}

  
dimension: bryan_new_column {
  sql: ${TABLE}.BRYAN_NEW_COLUMN ;;
  type: number
  description: "this is bryans new column"
}

  
dimension: city {
  sql: ${TABLE}.CITY ;;
  type: string
}

  
dimension: country {
  sql: ${TABLE}.COUNTRY ;;
  type: string
}

  
dimension_group: created_at {
  timeframes: [raw
  ,year
  ,quarter
  ,month
  ,week
  ,date
  ,day_of_week
  ,month_name]
  type: time
  sql: ${TABLE}.CREATED_AT ;;
}

  
dimension: custom_field_1 {
  sql: ${TABLE}.CUSTOM_FIELD_1 ;;
  type: number
  description: "this is Jess's new column"
}

  
dimension: des_test {
  sql: ${TABLE}.DES_TEST ;;
  type: string
}

  
dimension: email {
  sql: ${TABLE}.EMAIL ;;
  type: string
}

  
dimension: first_name {
  sql: ${TABLE}.FIRST_NAME ;;
  type: string
}

  
dimension_group: first_purchase_at {
  timeframes: [raw
  ,year
  ,quarter
  ,month
  ,week
  ,date
  ,day_of_week
  ,month_name]
  type: time
  sql: ${TABLE}.FIRST_PURCHASE_AT ;;
  description: "the customers first purchase"
}

  
dimension: gender {
  sql: ${TABLE}.GENDER ;;
  type: string
}

  
dimension: id {
  sql: ${TABLE}.ID ;;
  type: number
}

  
dimension: jess_new_test {
  sql: ${TABLE}.JESS_NEW_TEST ;;
  type: string
  description: "This is a description"
}

  
dimension: jess_test {
  sql: ${TABLE}.JESS_TEST ;;
  type: string
  description: "This is a description"
}

  
dimension: last_name {
  sql: ${TABLE}.LAST_NAME ;;
  type: string
}

  
dimension: latitude {
  sql: ${TABLE}.LATITUDE ;;
  type: number
}

  
dimension: longitude {
  sql: ${TABLE}.LONGITUDE ;;
  type: number
}

  
dimension: olivia_test_1 {
  sql: ${TABLE}.OLIVIA_TEST_1 ;;
  type: string
}

  
dimension: rob_test {
  sql: ${TABLE}.ROB_TEST ;;
  type: string
}

  
dimension: state {
  sql: ${TABLE}.STATE ;;
  type: string
}

  
dimension: traffic_source {
  sql: ${TABLE}.TRAFFIC_SOURCE ;;
  type: string
}

  
dimension: zip {
  sql: ${TABLE}.ZIP ;;
  type: string
}

}
