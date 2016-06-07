json.array!(@items) do |item|
  json.merge! item.attributes
  json.url item_url(item, format: :json)
end
