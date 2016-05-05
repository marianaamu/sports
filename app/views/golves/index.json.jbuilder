json.array!(@golves) do |golf|
  json.extract! golf, :id, :description, :status
  json.url golf_url(golf, format: :json)
end
