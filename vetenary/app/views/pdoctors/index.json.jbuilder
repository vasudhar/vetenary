json.array!(@pdoctors) do |pdoctor|
  json.extract! pdoctor, :id, :nameofpet, :type, :breed, :age, :weight, :dateofvist
  json.url pdoctor_url(pdoctor, format: :json)
end
