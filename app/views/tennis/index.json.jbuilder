json.array!(@tennis) do |tenni|
  json.extract! tenni, :id, :description, :status
  json.url tenni_url(tenni, format: :json)
end
