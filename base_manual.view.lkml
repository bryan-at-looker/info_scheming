explore: base {
  join: customer_array {
    sql: , LATERAL FLATTEN(${base.src}:customer) ${customer_array.SQL_TABLE_NAME} ;;
  }
  join: customer_array_object {}
  join: salesperson_object {}
  join: vehicle_array {
    sql: , LATERAL FLATTEN(${base.src}:vehicle) ${vehicle_array.SQL_TABLE_NAME} ;;
  }
  join: vehicle_array_object {}
  join: vehicle_array_object_extras_array {
    sql: , LATERAL FLATTEN(${vehicle_array.vehicle}:extras) ${vehicle_array_object_extras_array.SQL_TABLE_NAME} ;;
  }
}

view: base {
  sql_table_name: LOOKER_SCRATCH.CAR_SALES ;;

  dimension: src {
    hidden: yes
    type: string
    sql: ${TABLE}."SRC" ;;
  }
  dimension: date {
    sql: ${src}:date::VARCHAR ;;
  }
  dimension: dealership {
    sql: ${src}:dealership::VARCHAR ;;
  }
  measure: count { type: count }
}

view: salesperson_object {
  # object
  dimension: id {
    sql: ${base.src}:salesperson:id::VARCHAR ;;
  }
  dimension: name {
    sql: ${base.src}:salesperson:name::VARCHAR ;;
  }
}

view: customer_array {
  # array with object
  dimension: customer {
    hidden: yes
    sql: ${TABLE}.value ;;
  }
}

view: customer_array_object {
  dimension: address {
    sql: ${customer_array.customer}:address::VARCHAR ;;
  }
  dimension: name {
    sql: ${customer_array.customer}:name::VARCHAR ;;
  }
  dimension: phone {
    sql: ${customer_array.customer}:phone::VARCHAR ;;
  }
}

view: vehicle_array {
  # array with with object
  dimension: vehicle {
    hidden: yes
    sql: ${TABLE}.value ;;
  }
}

view: vehicle_array_object {
  dimension: make {
    sql: ${vehicle_array.vehicle}:make::VARCHAR  ;;
  }
  dimension: model {
    sql: ${vehicle_array.vehicle}:model::VARCHAR  ;;
  }
  dimension: price {
    sql: ${vehicle_array.vehicle}:price::VARCHAR  ;;
  }
  dimension: year {
    sql: ${vehicle_array.vehicle}:year::VARCHAR  ;;
  }
}

view: vehicle_array_object_extras_array {
  # array with no object
  dimension: extras {
    sql: ${TABLE}.value::VARCHAR ;;
  }
}


# create or replace table LOOKER_SCRATCH.car_sales
# (
#   src variant
# )
# as
# select parse_json(column1) as src
# from values
# ('{
#     "date" : "2017-04-28",
#     "dealership" : "Valley View Auto Sales",
#     "salesperson" : {
#       "id": "55",
#       "name": "Frank Beasley"
#     },
#     "customer" : [
#       {"name": "Joyce Ridgely", "phone": "16504378889", "address": "San Francisco, CA"}
#     ],
#     "vehicle" : [
#       {"make": "Honda", "model": "Civic", "year": "2017", "price": "20275", "extras":["ext warranty", "paint protection"]}
#     ]
# }'),
# ('{
#     "date" : "2017-04-28",
#     "dealership" : "Tindel Toyota",
#     "salesperson" : {
#       "id": "274",
#       "name": "Greg Northrup"
#     },
#     "customer" : [
#       {"name": "Bradley Greenbloom", "phone": "12127593751", "address": "New York, NY"}
#     ],
#     "vehicle" : [
#       {"make": "Toyota", "model": "Camry", "year": "2017", "price": "23500", "extras":["ext warranty", "rust proofing", "fabric protection"]}
#     ]
# }') v;
