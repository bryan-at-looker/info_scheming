view: abc {
sql_table_name: LOOKER_SCRATCH.TEMP_ORDER_ITEMS ;;

dimension: clayton {
    type: number
    sql: ${TABLE}.CLAYTON ;;
}

    
dimension_group: created_at {
    timeframes: [raw
    ,year
    ,quarter
    ,month
    ,week
    ,date
    ,day_of_week
    ,hour
    ,hour_of_day
    ,minute
    ,time
    ,time_of_day]
    type: time
    sql: ${TABLE}.CREATED_AT ;;
}

    
dimension_group: delivered_at {
    timeframes: [raw
    ,year
    ,quarter
    ,month
    ,week
    ,date
    ,day_of_week
    ,hour
    ,hour_of_day
    ,minute
    ,time
    ,time_of_day]
    type: time
    sql: ${TABLE}.DELIVERED_AT ;;
}

    
dimension: hugo {
    type: string
    sql: ${TABLE}.HUGO ;;
}

    
dimension: id {
    type: number
    sql: ${TABLE}.ID ;;
}

    
dimension: inventory_item_id {
    type: number
    sql: ${TABLE}.INVENTORY_ITEM_ID ;;
}

    
dimension: maxie {
    type: string
    sql: ${TABLE}.MAXIE ;;
}

    
dimension: new_sale_price {
    type: number
    description: "new comment22 for you to check out"
    sql: ${TABLE}.NEW_SALE_PRICE ;;
}

    
dimension: order_id {
    type: number
    sql: ${TABLE}.ORDER_ID ;;
}

    
dimension_group: returned_at {
    timeframes: [raw
    ,year
    ,quarter
    ,month
    ,week
    ,date
    ,day_of_week
    ,hour
    ,hour_of_day
    ,minute
    ,time
    ,time_of_day]
    type: time
    sql: ${TABLE}.RETURNED_AT ;;
}

    
dimension: sale_price {
    type: number
    sql: ${TABLE}.SALE_PRICE ;;
}

    
dimension_group: shipped_at {
    timeframes: [raw
    ,year
    ,quarter
    ,month
    ,week
    ,date
    ,day_of_week
    ,hour
    ,hour_of_day
    ,minute
    ,time
    ,time_of_day]
    type: time
    sql: ${TABLE}.SHIPPED_AT ;;
}

    
dimension: sierra {
    type: string
    sql: ${TABLE}.SIERRA ;;
}

    
dimension: spencer {
    type: string
    description: "Spencer is the coolest"
    sql: ${TABLE}.SPENCER ;;
}

    
dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
}

    
dimension: user_id {
    type: number
    sql: ${TABLE}.USER_ID ;;
}

}