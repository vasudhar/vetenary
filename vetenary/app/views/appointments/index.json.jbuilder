json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :dateofvisit, :pet_id, :doctor_id, :reason
  json.url appointment_url(appointment, format: :json)
end
