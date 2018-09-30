view: ORDER_ITEMS {
      sql_table_name: PUBLIC.ORDER_ITEMS ;;

      dimension: user_id {
          sql: ${TABLE}.USER_ID ;;
          type: number
          description: ""
          }
        
      dimension: inventory_item_id {
          sql: ${TABLE}.INVENTORY_ITEM_ID ;;
          type: number
          description: ""
          }
        
      dimension: sale_price {
          sql: ${TABLE}.SALE_PRICE ;;
          type: number
          description: ""
          }
        
      dimension: shipped_at {
          sql: ${TABLE}.SHIPPED_AT ;;
          type: string ## TIMESTAMP_LTZ
          description: ""
          }
        
      dimension: order_id {
          sql: ${TABLE}.ORDER_ID ;;
          type: number
          description: ""
          }
        
      dimension: returned_at {
          sql: ${TABLE}.RETURNED_AT ;;
          type: string ## TIMESTAMP_LTZ
          description: ""
          }
        
      dimension: status {
          sql: ${TABLE}.STATUS ;;
          type: string
          description: ""
          }
        
      dimension: delivered_at {
          sql: ${TABLE}.DELIVERED_AT ;;
          type: string ## TIMESTAMP_LTZ
          description: ""
          }
        
      dimension: created_at {
          sql: ${TABLE}.CREATED_AT ;;
          type: string ## TIMESTAMP_LTZ
          description: ""
          }
        
      dimension: id {
          sql: ${TABLE}.ID ;;
          type: number
          description: ""
          }
        
      }