json.array!(@sauces) do |sauce|
  json.extract! sauce, :id, :name, :description, :glutenFree
  json.url sauce_url(sauce, format: :json)
end
