connection: "snowlooker"

include: "order_items.view.lkml"
include: "users.view.lkml"

explore: order_items {
  join: users {
    type: left_outer
    relationship: many_to_one
    sql_on: ${order_items.user_id} = ${users.id} ;;
  }
}

# if you want to add a new column to users (the table being polled by the webhook, syntax is below)
# ALTER TABLE LOOKER_SCRATCH.USERS_TEMP ADD COLUMN bryan_new_column NUMBER COMMENT 'this is bryans new column'
