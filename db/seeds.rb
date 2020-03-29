require "open-uri"
puts "Cleaning the DB..."
Service.destroy_all
Need.destroy_all
User.destroy_all

puts "DB cleaned!"
puts "Creating users..."

ben = User.new(email: "ben@gmail.com", first_name: "Benjamin", last_name: "Baranger", password: "password", flat_number: 9, complex: "Maraschino")
file = URI.open('https://res.cloudinary.com/dpsj3levs/image/upload/v1585396067/xshdsin8xddomjhemnhk.jpg')
ben.photo.attach(io: file, filename: 'avatar_ben', content_type: 'image/png')
ben.save

becca = User.new(email: "becca@gmail.com", first_name: "Becca", last_name: "Ellis", password: "password", flat_number: 9, complex: "Maraschino")
file = URI.open('https://res.cloudinary.com/dpsj3levs/image/upload/v1585396409/igribfuaz6tdh5mlledw.jpg')
becca.photo.attach(io: file, filename: 'avatar_becca', content_type: 'image/png')
becca.save

alex = User.new(email: "alex@gmail.com", first_name: "Alex", last_name: "Haumer", password: "password", flat_number: 42, complex: "Rainier")
file = URI.open('https://res.cloudinary.com/dpsj3levs/image/upload/v1585511122/f2ckghely9gzkurn8qb1.jpg')
alex.photo.attach(io: file, filename: 'avatar_alex', content_type: 'image/png')
alex.save

puts "Users created!"
puts "Creating needs..."

need1 = Need.create(user: ben, name: "The lost egg", quantity: 6, note: "I know it is a lot to ask but can you only take free range please.")
need2 = Need.create(user: ben, name: "Toilet roll party 🚽", quantity: 12, note: "I work at Croydon Hospital and I don't have time to go shopping.")
need3 = Need.create(user: becca, name: "Dinner 🍕", quantity: 1, note: "I'm a healthcare worker and I don't have time to cook for myself.")
need4 = Need.create(user: becca, name: "Soap", quantity: 1, note: "People are hoarding and I can't find some anywhere, can you?")
need5 = Need.create(user: alex, name: "Sit my dog", quantity: 0, note: "Sit my dog whilst I'm saving lives!")

puts "Needs created!"