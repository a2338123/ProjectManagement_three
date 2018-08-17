# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'admin', password: 'admin', password_confirmation: 'admin')

5.times do |i|
  Cloudservice.create(
    code: "code-#{i}",
    vendor: "vendor-#{i}",
    expired_at: Time.now + i.days
  )
end
5.times do |i|
  Customerserver.create(
	code: "code-#{i}",
	customerservice: "customerservice-#{i}",
	customer: "customer-#{i}",
	deadline: Time.now + i.days,
	our_server: "our_server-#{i}"	
	)
end
   
