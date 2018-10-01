view: users_kewl {
sql_table_name: PUBLIC.USERS ;;

dimension: age {
    type: number
    sql: ${TABLE}.AGE ;;
}

    
dimension: city {
    type: string
    sql: ${TABLE}.CITY ;;
}

    
dimension: country {
    type: string
    sql: ${TABLE}.COUNTRY ;;
}

    
dimension_group: created_at {
    timeframes: [raw, year, quarter, month, week, date, day_of_week, hour, hour_of_day, minute, time, time_of_day]
    type: time
    sql: ${TABLE}.CREATED_AT ;;
}

    
dimension: email {
    type: string
    sql: ${TABLE}.EMAIL ;;
}

    
dimension: first_name {
    type: string
    sql: ${TABLE}.FIRST_NAME ;;
}

    
dimension: gender {
    type: string
    sql: ${TABLE}.GENDER ;;
}

    
dimension: id {
    type: number
    sql: ${TABLE}.ID ;;
}

    
dimension: last_name {
    type: string
    sql: ${TABLE}.LAST_NAME ;;
}

    
dimension: latitude {
    type: number
    sql: ${TABLE}.LATITUDE ;;
}

    
dimension: longitude {
    type: number
    sql: ${TABLE}.LONGITUDE ;;
}

    
dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
}

    
dimension: traffic_source {
    type: string
    sql: ${TABLE}.TRAFFIC_SOURCE ;;
}

    
dimension: zip {
    type: string
    sql: ${TABLE}.ZIP ;;
}

}
