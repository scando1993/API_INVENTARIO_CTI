json.array!(@people) do |person|
  json.extract! person, :id, :firstname, :lastname, :email, :function, :phone, :gender, :cellphone, :institutional_email, :function
  json.url person_url(person, format: :json)
end
