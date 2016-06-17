class PersonSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :email, :function, :phone, :gender, :cellphone, :institutional_email, :function
end
