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
Chatroom.create(name: "Physical bullying", chatroom_type: "private")
Chatroom.create(name: "Cyberbullying", chatroom_type: "private")
Chatroom.create(name: "Verbal bullying", chatroom_type: "private")
Chatroom.create(name: "Harassment", chatroom_type: "private")
User.create(email: "reda@com", username: "Reda", password: "123456", first_name: "Reda", last_name: "Aboulouafa", address: "Rue de la Nassim", country: "Morocco", city: "Casablanca", phone_number: "0612345678", bullying_type: "Physical bullying")
User.create(email: "sara@com", username: "Sara", password: "123456", first_name: "Sara", last_name: "Souhail", address: "Rue de la sbata", country: "Morocco", city: "Casablanca", phone_number: "0615164579", bullying_type: "Cyberbullying")
User.create(email: "hamza@com", username: "Hamza", password: "123456", first_name: "Hamza", last_name: "khalid", address: "Rue de la berrechid", country: "Morocco", city: "Casablanca", phone_number: "0612345678", bullying_type: "Verbal bullying")
User.create(email: "anass@com", username: "Anass", password: "123456", first_name: "Anass", last_name: "Najam", address: "Rue de la berrechid", country: "Morocco", city: "Casablanca", phone_number: "0650121407", bullying_type: "Harassment")
Doctor.create(experience_years: 5, field: "Psychiatrist",first_name: "Wafaa", last_name: "Souhail", phone_number: "0612345678", address: "Rue de la sbata")
Doctor.create(experience_years: 3, field: "Psychologist",first_name: "Ilyass", last_name: "Najam", phone_number: "0612345678", address: "Rue de la abd karim al khatabi")
