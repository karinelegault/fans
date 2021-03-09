
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
require 'faker'
require "open-uri"




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

file = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1615303525/call-me-fred-6KZcjJoaqNI-unsplash_d7ewhm.jpg')
25.times do
    Fan.create!(user_id: "#{rand(1..3)}", name: Faker::Movie.title, description: Faker::Quotes::Shakespeare.hamlet_quote )
    fan.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    fan.save
end


puts "Fans Created"
