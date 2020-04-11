# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |i|
  volunteer = Volunteer.create!(
    email: "test#{i}@email.com",
    encrypted_password: "password#{i}",
    password: "password#{i}",
    first_name: "first_name_#{i}",
    last_name: "last_name_#{i}",
    bio: "I am volunteer ##{i} and I love connect-educate :D",
    birth_date: "#{i+1}/12/1994"
  )
  volunteer.save
  first_skill = volunteer.skills.create!(name: "cool skill #{i}", level: 'beginner', years_of_experience: 1)
  second_skill = volunteer.skills.create!(name: "another cool skill #{i}", level: 'intermediate', years_of_experience: 3)
  first_skill.save
  second_skill.save
  language = first_skill.languages.create!(name: "language #{i}", level: 'native')
  language.save
end
