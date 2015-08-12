json.array!(@customers) do |customer|
  json.extract! customer, :id, :pname, :dateofnextapp, :reason
  json.url customer_url(customer, format: :json)
end
