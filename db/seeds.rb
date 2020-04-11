# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |i|
  User.create(
    email: "test#{i}@email.com",
    encrypted_password: "password#{i}",
    type: 'Volunteer',
    first_name: "first_name_#{i}",
    last_name: "last_name_#{i}",
    bio: "I am volunteer ##{i} and I love connect-educate :D",
    birth_date: "#{i}/12/1994" 
  )
end
