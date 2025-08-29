- dashboard: sales_dashboard
  title: "Sales Dashboard"
  layout: "grid"
  elements:
  - name: "Sales Over Time"
    title: "Sales Over Time"
    model: sales_dashboard
    explore: order_items
    type: "looker_line"
    fields: [order_items.created_date, order_items.total_sale_price]
    fill_fields: [order_items.created_date]
    sorts: [order_items.created_date desc]
    limit: 500
    grid_box:
      width: 24
      height: 8

  - name: "Sales by Product Category"
    title: "Sales by Product Category"
    model: sales_dashboard
    explore: order_items
    type: "looker_bar"
    fields: [products.category, order_items.total_sale_price]
    sorts: [order_items.total_sale_price desc]
    limit: 500
    grid_box:
      width: 12
      height: 8

  - name: "Sales by User Location"
    title: "Sales by User Location"
    model: sales_dashboard
    explore: order_items
    type: "looker_google_map"
    fields: [users.state, order_items.total_sale_price]
    sorts: [order_items.total_sale_price desc]
    limit: 500
    grid_box:
      width: 12
      height: 8
