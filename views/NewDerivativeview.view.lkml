# If necessary, uncomment the line below to include explore_source.
# include: "vinaytest234.model.lkml"

view: NewDerivitiveview {
  derived_table: {
    explore_source: orders {
      column: first_name { field: users.first_name }
      column: id { field: users.id }
      column: count { field: users.count }
    }
  }
  dimension: first_name {
    description: ""
  }
  dimension: id {
    description: ""
    type: number
  }
  dimension: count {
    description: ""
    type: number
  }
}
