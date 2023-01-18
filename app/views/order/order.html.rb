<%= form_with model: @order, url: orders_path do |form| %>
  <%= form.label :customer_name %>
  <%= form.text_field :customer_name %>

  <%= form.label :customer_email %>
  <%= form.email_field :customer_email %>

  <%= form.label :customer_phone %>
  <%= form.tel_field :customer_phone %>

  <%= form.label :delivery_address %>
  <%= form.text_field :delivery_address %>

  <%= form.label :items %>
  <%= form.collection_select :items, MenuItem.all, :id, :name %>

  <%= form.label :total_price %>
  <%= form.text_field :total_price %>

  <%= form.submit %>
<% end %>
