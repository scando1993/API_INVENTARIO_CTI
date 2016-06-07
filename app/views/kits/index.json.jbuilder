json.array!(@kits) do |kit|
  json.merge! kit.attributes
  json.url kit_url(kit, format: :json)
  json.items do
    json.array!( kit.items )
  end
  json.owners do
	  json.array!(kit.owners)
  end
  json.kit_comments do
	  json.array!(kit.kit_comments)
  end
end
