
view: orders {
  sql_table_name: `bq-dataworkeragent-test.thelook_ecommerce_launch_demo.orders`;;

  dimension: order_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }

  dimension: num_of_item {
    type: number
    sql: ${TABLE}.num_of_item ;;
  }
}
