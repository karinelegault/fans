
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:





puts " Now deleting all Fans..."
puts " Now deleting all Users..."
Fan.delete_all
User.delete_all

puts "Creating Gad, Karine and Pascal"


User.create!(email: "gad@email.com", password: "123456")
puts "... Gad created!"

User.create!(email: "karine@email.com", password: "123456")
puts "... Karine created!"

User.create!(email: "pascal@email.com", password: "123456")
puts "... Pascal created!"

puts "Deleting Fans"
Fan.delete_all


puts "Creating Fans"


25.times do
    Fan.create!(user_id: "#{rand(1..3)}", name: Faker::Movie.title, description: Faker::Quotes::Shakespeare.hamlet_quote )
end

puts "Fans Created"