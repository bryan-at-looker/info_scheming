include: "temp_order_items.view.lkml"
view: temp_order_items_extended {
  extends: [temp_order_items]

  measure: total_sale_price {
    type: sum
    sql: ${sale_price} ;;
    value_format_name: usd
  }

}
