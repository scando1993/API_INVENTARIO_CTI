# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Person.destroy_all
Item.destroy_all
Kit.destroy_all


100.times do |i|
	Person.create!({firstname: Faker::Name.first_name,
	                      lastname: Faker::Name.last_name,
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
	              description: Faker::Lorem.paragraph,
                mac: item_type=="dispositivo"?Faker::Lorem.characters(10):nil,
								serie: item_type=="dispositivo"?Faker::Lorem.characters(5):nil,
								quantity:Faker::Number.between(1,100).to_i,
								value: Faker::Number.decimal(2,3).to_i
	})
end
50.times do |i|
	kit=Kit.create!({title: Faker::Commerce.product_name,
									 number_elements:Faker::Number.between(1,100).to_i,
									 code:Faker::Lorem.characters(6),
									 kit_type: ["desarrollo","prueba"].sample(),
									 state: ["nuevo","usado"].sample(),
									 reference: Faker::Lorem.sentence,
									 domain: Faker::Educator.university,
									 serie: Faker::Lorem.characters(7)
									})
end
owners_name = ["ESPOL","CTI","SENESCYT"]

owners_name.length.times {|i|
	Owner.create! name: owners_name[i], code: "#{owners_name[i]}"<<"#{Faker::Number}"
}

owners = Owner.all
items = Item.all
kits = Kit.all

Faker::Number.between(10,20).to_i.times{
  Faker::Number.number(1).to_i.times{ |i|
    kit = kits.sample
    kit.kit_comments.create!( comments:Faker::Hipster.sentence)
    #kit.items<<items.sample
    KitItem.create!( kit:kit, item: items.sample, quantity: Faker::Number.number(1).to_i)
    KitComponent.create!( kit:kit, kitComponent: kits.sample, quantity: Faker::Number.number(1).to_i)
    kit.owners<<owners.sample
    kit.save!
  }
  Faker::Number.number(1).to_i.times{|i|
    item = items.sample
    ItemComponent.create!( item:item,item_component:items.sample, quantity: Faker::Number.number(1).to_i )
  }
}
