view: temp_order_items {
sql_table_name: LOOKER_SCRATCH.TEMP_ORDER_ITEMS ;;

dimension: clayton {
  sql: ${TABLE}.CLAYTON ;;
  type: number
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
  sql: ${TABLE}.HUGO ;;
  type: string
}

  
dimension: id {
  sql: ${TABLE}.ID ;;
  type: number
}

  
dimension: inventory_item_id {
  sql: ${TABLE}.INVENTORY_ITEM_ID ;;
  type: number
}

  
dimension: maxie {
  sql: ${TABLE}.MAXIE ;;
  type: string
}

  
dimension: new_sale_price {
  sql: ${TABLE}.NEW_SALE_PRICE ;;
  type: number
  description: "new comment22 for you to check out"
}

  
dimension: order_id {
  sql: ${TABLE}.ORDER_ID ;;
  type: number
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
  sql: ${TABLE}.SALE_PRICE ;;
  type: number
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
  sql: ${TABLE}.SIERRA ;;
  type: string
}

  
dimension: spencer {
  sql: ${TABLE}.SPENCER ;;
  type: string
  description: "Spencer is the coolest"
}

  
dimension: status {
  sql: ${TABLE}.STATUS ;;
  type: string
}

  
dimension: user_id {
  sql: ${TABLE}.USER_ID ;;
  type: number
}

}
