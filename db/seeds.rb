# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Volunteer.destroy_all
Parent.destroy_all
Messages.destroy_all

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
  volunteer.skills.create!(name: 1, level: 'beginner', years_of_experience: 1)
  volunteer.skills.create!(name: 8, level: 'intermediate', years_of_experience: 3)
  volunteer.languages.create!(name: 2, level: 'native')
  volunteer.languages.create!(name: 3, level: 'fluent')
end

parent = Parent.create!(
  email: "test55@email.com",
  encrypted_password: "password#55",
  password: "password#55",
  first_name: "first_name_55",
  last_name: "last_name_55",
  bio: "I am volunteer #55 and I love connect-educate :D",
  birth_date: "23/01/1994"
)
parent.save
task = Task.create!(content: 'I would like help with maths', skill: 'maths', parent_id: parent.id)
task.save
task2 = Task.create!(content: 'I would like help with physics', skill: 'science', parent_id: parent.id)
task2.save
task3 = Task.create!(content: 'I would like help with chemistry', skill: 'science', parent_id: parent.id)
task3.save


Message.create!(content: 'im task 1 message', user_id: parent.id, task_id: task.id)
Message.create!(content: 'im another task 1 message', user_id: parent.id, task_id: task.id)
Message.create!(content: 'im a task 2 message', user_id: parent.id, task_id: task2.id)


# We should create an Anonymous user so that Posts can have user_id as a reference, in case people do want to be logged in and post with their name appearing. As this would be required, then when Anon is selected a fake user should be appointed to this post?
