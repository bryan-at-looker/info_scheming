connection: "snowlooker"

include: "*.view.lkml"                       # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

explore: info_scheming {
  always_filter: {
    filters: { field: table_name_input value: ""}
    filters: { field: table_schema_input value: ""}
  }
}

explore: info_in_rows {
  persist_for: "0 hours"
  always_filter: {
    filters: { field: table_name_input value: ""}
    filters: { field: table_schema_input value: ""}
  }
}

explore: crazy_variant_unnest {
  always_filter: {
    filters: { field: table_name_input value: ""}
    filters: { field: table_schema_input value: ""}
    filters: { field: view_name_output value: ""}
  }
}
