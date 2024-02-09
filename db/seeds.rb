# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Chatroom.create(name: "general", chatroom_type: "public")
Chatroom.create(name: "blogs", chatroom_type: "public")
Chatroom.create(name: "news", chatroom_type: "public")
Chatroom.create(name: "thread", chatroom_type: "thread")
Chatroom.create(name: "Physical Bullying", chatroom_type: "private")
Chatroom.create(name: "Cyberbullying", chatroom_type: "private")
Chatroom.create(name: "Verbal Bullying", chatroom_type: "private")
Chatroom.create(name: "Harassment", chatroom_type: "private")
User.create(email: "reda@gmail.com", username: "Reda", password: "12345678", first_name: "Reda", last_name: "Aboulouafa", address: "Rue de la Nassim", country: "Morocco", city: "Casablanca", phone_number: "0612345678", bullying_type: "Physical Bullying", description: "I'm a victim of physical bullying, I need help")
User.create(email: "sara@gmail.com", username: "Sara", password: "12345678", first_name: "Sara", last_name: "Souhail", address: "Rue de la sbata", country: "Morocco", city: "Casablanca", phone_number: "0615164579", bullying_type: "Cyberbullying", description: "I'm a victim of cyberbullying, I need help")
User.create(email: "hamza@gmail.com", username: "Hamza", password: "12345678", first_name: "Hamza", last_name: "khalid", address: "Rue de la berrechid", country: "Morocco", city: "Casablanca", phone_number: "0612345678", bullying_type: "Verbal Bullying", description: "I'm a victim of verbal bullying, I need help")
User.create(email: "anass@gmail.com", username: "Anass", password: "12345678", first_name: "Anass", last_name: "Najam", address: "Rue de la berrechid", country: "Morocco", city: "Casablanca", phone_number: "0650121407", bullying_type: "Harassment", description: "I'm a victim of harassment, I need help")
Doctor.create(experience_years: 5, field: "Psychiatrist",first_name: "Wafaa", last_name: "Souhail", phone_number: "0612345678", address: "Rue de la sbata")
Doctor.create(experience_years: 3, field: "Psychologist",first_name: "Ilyass", last_name: "Najam", phone_number: "0612345678", address: "Rue de la abd karim al khatabi")
