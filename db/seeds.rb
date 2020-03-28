puts "Cleaning the DB..."
Service.destroy_all
Need.destroy_all
User.destroy_all

puts "DB cleaned!"
puts "Creating users"

ben = User.new(email: "ben@gmail.com")


