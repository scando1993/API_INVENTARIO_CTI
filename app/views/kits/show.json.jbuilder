json.merge! @kit.attributes
json.items do
	json.array!(@kit.items)

end
json.owners do
	json.array!(@kit.owners)
end
json.kit_comments do
	json.array!(@kit.kit_comments)
end



