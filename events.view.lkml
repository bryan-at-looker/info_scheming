view: events {
sql_table_name: PUBLIC.ORDER_ITEMS ;;

dimension: created_at {
    type: string
    sql: ${TABLE}.CREATED_AT ;;
}

    
dimension: delivered_at {
    type: string
    sql: ${TABLE}.DELIVERED_AT ;;
}

    
dimension: id {
    type: string
    sql: ${TABLE}.ID ;;
}

    
dimension: inventory_item_id {
    type: string
    sql: ${TABLE}.INVENTORY_ITEM_ID ;;
}

    
dimension: order_id {
    type: string
    sql: ${TABLE}.ORDER_ID ;;
}

    
dimension: returned_at {
    type: string
    sql: ${TABLE}.RETURNED_AT ;;
}

    
dimension: sale_price {
    type: string
    sql: ${TABLE}.SALE_PRICE ;;
}

    
dimension: shipped_at {
    type: string
    sql: ${TABLE}.SHIPPED_AT ;;
}

    
dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
}

    
dimension: user_id {
    type: string
    sql: ${TABLE}.USER_ID ;;
}

}
