
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
require 'faker'
require "open-uri"

puts " Now deleting all Fans..."
puts " Now deleting all Users..."
Booking.delete_all
Fan.delete_all
User.delete_all
User.reset_pk_sequence

puts "Creating Gad, Karine and Pascal"

filegad = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1615339200/jeff-tumale-5sYQ1uD4pHU-unsplash_sl7jog.jpg')
gad = User.create!(email: "gad@email.com", password: "123456")
gad.avatar.attach(io: filegad, filename: 'nes.jpg', content_type: 'image/jpg')
puts "... Gad created!"

filekarine = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1615339310/sarah-rodriguez-k4TE7Z-nK8M-unsplash_drs8cw.jpg')
karine = User.create!(email: "karine@email.com", password: "123456")
karine.avatar.attach(io: filekarine, filename: 'nes.jpg', content_type: 'image/jpg')
puts "... Karine created!"

filepascal = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1615339186/elizeu-dias-2EGNqazbAMk-unsplash_h5tkk1.jpg')
pascal = User.create!(email: "pascal@email.com", password: "123456")
pascal.avatar.attach(io: filepascal, filename: 'nes.jpg', content_type: 'image/jpg')
puts "... Pascal created!"

puts "Deleting Fans"
puts "Creating Fans"

25.times do
    file = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1615303525/call-me-fred-6KZcjJoaqNI-unsplash_d7ewhm.jpg')
    fan = Fan.create(user_id: "#{rand(1..3)}", name: Faker::Movie.title, description: Faker::Quotes::Shakespeare.hamlet_quote )
    fan.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
end


puts "Fans Created"


