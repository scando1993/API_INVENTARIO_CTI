# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Item.destroy_all
Kit.destroy_all


100.times do |i|
	User.create!({firstname: Faker::Name.first_name,
	                      lastname: Faker::Name.last_name,
												username: Faker::Internet.user_name,
												password_digest: Faker::Internet.password,
												email: Faker::Internet.email,
												function: "function-#{i+1}",
												phone: Faker::PhoneNumber.phone_number,
												gender: ["Male","Female"].sample(),
												cellphone: Faker::PhoneNumber.cell_phone
	             }		)

	item_type = ["elemento","dispositivo"].sample()

	Item.create!({title: Faker::Commerce.product_name,
								code: Faker::Code.asin,
								item_type: item_type,
								state: ["nuevo","usado"].sample(),
								reference: Faker::Lorem.sentence,
	              domain: Faker::Commerce.department,
	              characteristics: Faker::Lorem.paragraph,
                mac: item_type=="dispositivo"?Faker::Lorem.characters(10):nil,
								serie: item_type=="dispositivo"?Faker::Lorem.characters(5):nil,
								quantity:Faker::Number.between(1,100).to_i,
								value: Faker::Number.decimal(2,3).to_i
	})
end

owners_name = ["ESPOL","CTI","SENESCYT"]

owners_name.length.times {|i|
	Owner.create! name: owners_name[i], code: "#{owners_name[i]}"<<"#{Faker::Number}"
}

owners = Owner.all
items = Item.all

50.times do |i|
	 kit=Kit.create!({title: Faker::Commerce.product_name,
							 number_elements:Faker::Number.between(1,100).to_i,
							 code:Faker::Lorem.characters(6),
               kit_type: ["desarrollo","prueba"].sample(),
               state: ["nuevo","usado"].sample(),
               reference: Faker::Lorem.sentence,
               domain: Faker::Educator.university,
               purpose: Faker::Lorem.paragraph,
               serie: Faker::Lorem.characters(7)
	             })

	 Faker::Number.number(2).to_i.times{ |i|
		 kit.kit_comments.create!( comments:Faker::Hipster.sentence)
		 kit.items<<items.sample
		 kit.owners<<owners.sample
		 kit.save!
	 }

end


