json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :customer_id, :pdoctor_id
  json.url pet_url(pet, format: :json)
end
