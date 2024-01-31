# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Chatroom.create(name: "general")
Chatroom.create(name: "Physical bullying")
Chatroom.create(name: "Cyberbullying")
Chatroom.create(name: "Verbal bullying")
Chatroom.create(name: "Harassment")
User.create(email: "reda@lewagon.org", username: "Reda", password: "123456")
User.create(email: "sara@lewagon.org", username: "Sara", password: "123456")
User.create(email: "hamza@lewagon.org", username: "Hamza", password: "123456")
User.create(email: "anass@lewagon.org", username: "Anass", password: "123456")
Doctor.create(experience_years: 5, field: "Psychiatrist", user_id: 1)
Doctor.create(experience_years: 3, field: "Psychologist", user_id: 2)
