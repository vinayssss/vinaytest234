#If necessary, uncomment the line below to include explore_source.
#include: "vinaytest234.model.lkml"

view: derived_tables {
  derived_table: {
    explore_source: order_items {
      column: id { field: orders.id }
      column: total_sale_price {}
    }
  }
  dimension: id {
    description: ""
    type: number
  }
  dimension: total_sale_price {
    description: ""
    value_format: "$#,##0"
    type: number
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
  filter: states {
    type: string
    suggest_dimension: state
  }
}
