view: EVENTS {
      sql_table_name: PUBLIC.EVENTS ;;

      dimension: id {
          sql: ${TABLE}.ID ;;
          type: number
          description: ""
          }
        
      dimension: longitude {
          sql: ${TABLE}.LONGITUDE ;;
          type: number
          description: ""
          }
        
      dimension: sequence_number {
          sql: ${TABLE}.SEQUENCE_NUMBER ;;
          type: number
          description: ""
          }
        
      dimension: created_at {
          sql: ${TABLE}.CREATED_AT ;;
          type: string ## TIMESTAMP_LTZ
          description: ""
          }
        
      dimension: event_type {
          sql: ${TABLE}.EVENT_TYPE ;;
          type: string
          description: ""
          }
        
      dimension: user_id {
          sql: ${TABLE}.USER_ID ;;
          type: number
          description: ""
          }
        
      dimension: city {
          sql: ${TABLE}.CITY ;;
          type: string
          description: ""
          }
        
      dimension: country {
          sql: ${TABLE}.COUNTRY ;;
          type: string
          description: ""
          }
        
      dimension: session_id {
          sql: ${TABLE}.SESSION_ID ;;
          type: string
          description: ""
          }
        
      dimension: browser {
          sql: ${TABLE}.BROWSER ;;
          type: string
          description: ""
          }
        
      dimension: zip {
          sql: ${TABLE}.ZIP ;;
          type: string
          description: ""
          }
        
      dimension: ip_address {
          sql: ${TABLE}.IP_ADDRESS ;;
          type: string
          description: ""
          }
        
      dimension: state {
          sql: ${TABLE}.STATE ;;
          type: string
          description: ""
          }
        
      dimension: traffic_source {
          sql: ${TABLE}.TRAFFIC_SOURCE ;;
          type: string
          description: ""
          }
        
      dimension: uri {
          sql: ${TABLE}.URI ;;
          type: string
          description: ""
          }
        
      dimension: latitude {
          sql: ${TABLE}.LATITUDE ;;
          type: number
          description: ""
          }
        
      dimension: os {
          sql: ${TABLE}.OS ;;
          type: string
          description: ""
          }
        
      }