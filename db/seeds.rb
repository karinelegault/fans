
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
# require 'faker'
require "open-uri"

puts " Now deleting all Fans..."
puts " Now deleting all Users..."
Booking.delete_all
Fan.delete_all
User.delete_all
Booking.reset_pk_sequence
Fan.reset_pk_sequence
User.reset_pk_sequence

puts "Creating Gad, Karine and Pascal"

filegad = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1615339200/jeff-tumale-5sYQ1uD4pHU-unsplash_sl7jog.jpg')
gad = User.create!(email: "gad@email.com", password: "123456")
gad.avatar.attach(io: filegad, filename: 'nes.jpg', content_type: 'image/jpg')
puts "... Gad created!"

filekarine = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1615339310/sarah-rodriguez-k4TE7Z-nK8M-unsplash_drs8cw.jpg')
karine = User.create!(email: "karine@email.com", password: "123456")
karine.avatar.attach(io: filekarine, filename: 'nes.jpg', content_type: 'image/jpg')
puts "... Karine created!"

filepascal = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1615339186/elizeu-dias-2EGNqazbAMk-unsplash_h5tkk1.jpg')
pascal = User.create!(email: "pascal@email.com", password: "123456")
pascal.avatar.attach(io: filepascal, filename: 'nes.jpg', content_type: 'image/jpg')
puts "... Pascal created!"

puts "Deleting Fans"
puts "Creating Fans"

file1 = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1615303525/call-me-fred-6KZcjJoaqNI-unsplash_d7ewhm.jpg')
fan1 = Fan.create(user_id: "#{rand(1..3)}", name: "Fanatomic plus", description: "Amazing big fan, ideal for big events like wedding", price: "#{rand(10..300)}" )
fan1.photo.attach(io: file1, filename: 'nes.jpg', content_type: 'image/jpg')

file13 = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1615305428/ji9smwacxk4bs8jdh48s3do06a40.jpg')
fan13 = Fan.create(user_id: "#{rand(1..3)}", name: "Colourful master", description: "Colourful industrial fan. Amazing look for music event, festival or else.", price: "#{rand(10..300)}" )
fan13.photo.attach(io: file13, filename: 'nes.jpg', content_type: 'image/jpg')

file2 = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1615649521/Screen_Shot_2021-03-13_at_10.31.30_AM_gwcnay.png')
fan2 = Fan.create(user_id: "#{rand(1..3)}", name: "Littlefanny", description: "Small fan, perfect for a desk, an office or a bedroom", price: "#{rand(10..300)}" )
fan2.photo.attach(io: file2, filename: 'nes.jpg', content_type: 'image/png')

file3 = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1615649190/a4reqajtts60s8azu8bkuv33dib9.jpg')
fan3 = Fan.create(user_id: "#{rand(1..3)}", name: "Indus Max", description: "Big Industrial fan, ideal for construction site, school or lab", price: "#{rand(10..300)}" )
fan3.photo.attach(io: file3, filename: 'nes.jpg', content_type: 'image/jpg')

file12 = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1615650895/jason-yoder-sFdllEpGF3Y-unsplash_csci1u.jpg')
fan12 = Fan.create(user_id: "#{rand(1..3)}", name: "High, big ceiling fan", description: "Huge ceiling fan. Can be installed everywhere. Ideal for barn event such as wedding.", price: "#{rand(10..300)}" )
fan12.photo.attach(io: file12, filename: 'nes.jpg', content_type: 'image/jpg')

file4 = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1615649715/Screen_Shot_2021-03-13_at_10.34.51_AM_vsp1qm.png')
fan4 = Fan.create(user_id: "#{rand(1..3)}", name: "Tall Fan", description: "Medium fan ideal for all rooms. Fully adjustable height and tilt-back feature.", price: "#{rand(10..300)}" )
fan4.photo.attach(io: file4, filename: 'nes.jpg', content_type: 'image/png')

file15 = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1615652929/Screen_Shot_2021-03-13_at_11.18.50_AM_czpn6z.png')
fan15 = Fan.create(user_id: "#{rand(1..3)}", name: "Kiddos", description: "Really small fan for kids. Ideal for outdoor events for kids.", price: "#{rand(10..300)}" )
fan15.photo.attach(io: file15, filename: 'nes.jpg', content_type: 'image/png')

file5 = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1615649850/Screen_Shot_2021-03-13_at_10.37.16_AM_oo5epx.png')
fan5 = Fan.create(user_id: "#{rand(1..3)}", name: "Vintage pinky", description: "Small fan, rerolicious. Vintage. Pink. Super cute.", price: "#{rand(10..300)}" )
fan5.photo.attach(io: file5, filename: 'nes.jpg', content_type: 'image/png')

file7 = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1615650535/Screen_Shot_2021-03-13_at_10.41.08_AM_sv0dg6.png')
fan7 = Fan.create(user_id: "#{rand(1..3)}", name: "Majestic White Swan", description: "Big white fan. Ideal for glamourous event, wedding or celebration.", price: "#{rand(10..300)}" )
fan7.photo.attach(io: file7, filename: 'nes.jpg', content_type: 'image/png')

file8 = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1615650536/Screen_Shot_2021-03-13_at_10.39.47_AM_ftm0wn.png')
fan8 = Fan.create(user_id: "#{rand(1..3)}", name: "Major Wind", description: "Huge industrial fan. The best ally for your renovation.", price: "#{rand(10..300)}" )
fan8.photo.attach(io: file8, filename: 'nes.jpg', content_type: 'image/png')

file9 = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1615650884/filios-sazeides-FrKWsEbOYU0-unsplash_xzxik5.jpg')
fan9 = Fan.create(user_id: "#{rand(1..3)}", name: "Black costal fan", description: "Small, black, little vintage fan. Zen and fresh.", price: "#{rand(10..300)}" )
fan9.photo.attach(io: file9, filename: 'nes.jpg', content_type: 'image/jpg')

file10 = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1615650884/emmanuel-gido-U7YOw2jnkA4-unsplash_eppm6d.jpg')
fan10 = Fan.create(user_id: "#{rand(1..3)}", name: "Elegant silver", description: "Medium fan, tall. Adjustable height. Elegant.", price: "#{rand(10..300)}" )
fan10.photo.attach(io: file10, filename: 'nes.jpg', content_type: 'image/jpg')

file11 = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1615650892/nguy-n-hi-p-ajV2PvE2y74-unsplash_f9zpjn.jpg')
fan11 = Fan.create(user_id: "#{rand(1..3)}", name: "Vitaminboost", description: "Small colourful fan, oragne. Modern, original, cool.", price: "#{rand(10..300)}" )
fan11.photo.attach(io: file11, filename: 'nes.jpg', content_type: 'image/jpg')

file14 = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1615652103/Screen_Shot_2021-03-13_at_11.14.45_AM_abctqj.png')
fan14 = Fan.create(user_id: "#{rand(1..3)}", name: "Funny Jelly bean", description: "Medium fan made for inflatable puppets. Ideal for kids party, holidays.", price: "#{rand(10..300)}" )
fan14.photo.attach(io: file14, filename: 'nes.jpg', content_type: 'image/png')

file6 = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1615650532/Screen_Shot_2021-03-13_at_10.41.29_AM_fgksma.png')
fan6 = Fan.create(user_id: "#{rand(1..3)}", name: "Blue fan", description: "Small blowing machine. Ideal for outdoor event.", price: "#{rand(10..300)}" )
fan6.photo.attach(io: file6, filename: 'nes.jpg', content_type: 'image/png')

puts "Fans Created"


