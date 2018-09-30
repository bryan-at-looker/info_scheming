view: USERS {
      sql_table_name: PUBLIC.USERS ;;

      dimension: latitude {
          sql: ${TABLE}.LATITUDE ;;
          type: number
          description: ""
          }
        
      dimension: longitude {
          sql: ${TABLE}.LONGITUDE ;;
          type: number
          description: ""
          }
        
      dimension: zip {
          sql: ${TABLE}.ZIP ;;
          type: string
          description: ""
          }
        
      dimension: age {
          sql: ${TABLE}.AGE ;;
          type: number
          description: ""
          }
        
      dimension: id {
          sql: ${TABLE}.ID ;;
          type: number
          description: ""
          }
        
      dimension: last_name {
          sql: ${TABLE}.LAST_NAME ;;
          type: string
          description: ""
          }
        
      dimension: country {
          sql: ${TABLE}.COUNTRY ;;
          type: string
          description: ""
          }
        
      dimension: traffic_source {
          sql: ${TABLE}.TRAFFIC_SOURCE ;;
          type: string
          description: ""
          }
        
      dimension: email {
          sql: ${TABLE}.EMAIL ;;
          type: string
          description: ""
          }
        
      dimension: first_name {
          sql: ${TABLE}.FIRST_NAME ;;
          type: string
          description: ""
          }
        
      dimension: state {
          sql: ${TABLE}.STATE ;;
          type: string
          description: ""
          }
        
      dimension: created_at {
          sql: ${TABLE}.CREATED_AT ;;
          type: string ## TIMESTAMP_LTZ
          description: ""
          }
        
      dimension: gender {
          sql: ${TABLE}.GENDER ;;
          type: string
          description: ""
          }
        
      dimension: city {
          sql: ${TABLE}.CITY ;;
          type: string
          description: ""
          }
        
      }