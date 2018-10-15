view: temp_order_items {
sql_table_name: LOOKER_SCRATCH.TEMP_ORDER_ITEMS ;;

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

    
dimension: id {
    type: number
    sql: ${TABLE}.ID ;;
}

    
dimension: inventory_item_id {
    type: number
    sql: ${TABLE}.INVENTORY_ITEM_ID ;;
}

    
dimension: new_sale_price {
    type: number
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

    
dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
}

    
dimension: user_id {
    type: number
    sql: ${TABLE}.USER_ID ;;
}

}
