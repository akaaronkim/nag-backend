# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# delete all the records

Order.destroy_all
PaymentInfo.destroy_all
User.destroy_all

#User details
user1 =  User.create(name: "girija", email: "girija@hotmail.com", address_one: "1460 mission st", address_two: "floor one", city: "San Francisco", state: "California", zipcode: "94016")
user2 = User.create(name: "aaron",email: "aaron@gmail.com", address_one: "1460 mission street", address_two: "floor one", city: "San Francisco", state: "California", zipcode: "94106")
user3 =  User.create(name: "nick", email: "nick@hotmail.com", address_one: "1460 mission st", address_two: "floor one", city: "San Francisco", state: "California", zipcode: "94016")
user4 = User.create(name: "bronte",email: "bronte@gmail.com", address_one: "1460 mission street", address_two: "floor one", city: "San Francisco", state: "California", zipcode: "94106")
user5 =  User.create(name: "jason", email: "jason@hotmail.com", address_one: "1460 mission st", address_two: "floor one", city: "San Francisco", state: "California", zipcode: "94016")
user6 = User.create(name: "amelie",email: "amelie@gmail.com", address_one: "1460 mission street", address_two: "floor one", city: "San Francisco", state: "California", zipcode: "94106")
user7 =  User.create(name: "donny", email: "donny@hotmail.com", address_one: "1460 mission st", address_two: "floor one", city: "San Francisco", state: "California", zipcode: "94016")
user8 = User.create(name: "david",email: "david@gmail.com", address_one: "1460 mission street", address_two: "floor one", city: "San Francisco", state: "California", zipcode: "94106")

#Payment details
p1 = PaymentInfo.create(card_grid1: 4833, card_grid2: 1600, card_grid3: 3368, card_grid4: 2222, first_name: "aaron", last_name: "kim", expiration_date: "2022-12-31", cvv: 248, card_type: "visa", user:user1  )
p2 = PaymentInfo.create(card_grid1: 1111, card_grid2: 2222, card_grid3: 3333, card_grid4: 4444, first_name: "nick", last_name: "corona", expiration_date: "2022-12-31", cvv: 123, card_type: "visa", user:user3  )
p3 = PaymentInfo.create(card_grid1: 4833, card_grid2: 1600, card_grid3: 1234, card_grid4: 1234, first_name: "bronte", last_name: "sewell", expiration_date: "2022-12-31", cvv: 234, card_type: "visa", user:user4  )
p4 = PaymentInfo.create(card_grid1: 4833, card_grid2: 1600, card_grid3: 3368, card_grid4: 9090, first_name: "david", last_name: "rosenholz", expiration_date: "2022-12-31", cvv: 643, card_type: "visa", user:user8  )

#Order details
Order.create(delivery_address: "548 Market St, San Francisco, CA 94104",pickup_address: "1460 Mission St, San Francisco, CA 94106", order_date: "2020-02-28", order_time: "15:31:26", delivery_date: "2020-02-28", delivery_time: "16:31:26", fee: 3.26, status: "successful", user_id: user1.id, payment_info_id: p1.id)
Order.create(delivery_address: "1531 44th Ave, San Francisco, CA 94122",pickup_address: "252 9th St Apt 202, San Francisco, CA 94103", order_date: "2020-02-02", order_time: "05:31:26", delivery_date: "2020-02-02", delivery_time: "06:31:26", fee: 46.65, status: "successful", user_id: user3.id, payment_info_id: p2.id)
Order.create(delivery_address: "614 29th St, San Francisco, CA 94131",pickup_address: "539 Ortega St, San Francisco, CA 94122", order_date: "2020-02-28", order_time: "18:31:26", delivery_date: "2020-02-28", delivery_time: "19:31:26", fee: 23.91, status: "failed", user_id: user4.id, payment_info_id: p3.id)