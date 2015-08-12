json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :name, :address, :degreefrom, :experience
  json.url doctor_url(doctor, format: :json)
end
