json.array!(@registers) do |register|
  json.extract! register, :id, :name, :email, :cell_phone
  json.url register_url(register, format: :json)
end
