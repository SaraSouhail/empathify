# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.destroy_all
Doctor.destroy_all
Chatroom.destroy_all


Chatroom.create(name: "general", chatroom_type: "public")
Chatroom.create(name: "blogs", chatroom_type: "public")
Chatroom.create(name: "news", chatroom_type: "public")
Chatroom.create(name: "thread", chatroom_type: "thread")
Chatroom.create(name: "Physical Bullying", chatroom_type: "private")
Chatroom.create(name: "Cyberbullying", chatroom_type: "private")
Chatroom.create(name: "Verbal Bullying", chatroom_type: "private")
Chatroom.create(name: "Harassment", chatroom_type: "private")


Doctor.create(experience_years: 5, field: "Psychologue",first_name: "Dr wafaa", last_name: "Amrani", phone_number: "0612345678", address: "Bd abdelmoumen rue 3 n 5 etage 1 casablanca")
Doctor.create(experience_years: 3, field: "Psychiatre",first_name: "Dr Ilyass", last_name: "Cherif", phone_number: "0612345678", address: "Bd zerktouni rue 16 n 42  etage 4 casablanca")
Doctor.create(experience_years: 3, field: "Psychologue",first_name: "Dr Adam", last_name: "Benani", phone_number: "0612345678", address: "Bd karim al khatabi rue 3 n 15  etage 3 casablanca")

User.create(email: "reda@gmail.com", username: "Reda", password: "12345678", first_name: "Reda", last_name: "Aboulouafa", address: "Nassim rue 3 n 5", country: "Morocco", city: "Casablanca", phone_number: "0612345678", bullying_type: "Physical Bullying", description: "I'm a victim of physical bullying, I need help")
User.create(email: "sara@gmail.com", username: "Sara", password: "12345678", first_name: "Sara", last_name: "Souhail", address: "Sbata rue 13 n 45", country: "Morocco", city: "Casablanca", phone_number: "0615164579", bullying_type: "Cyberbullying", description: "I'm a victim of cyberbullying, I need help")
User.create(email: "hamza@gmail.com", username: "Hamza", password: "12345678", first_name: "Hamza", last_name: "khalid", address: "Bd karim al khatabi rue 16 n 4", country: "Morocco", city: "Casablanca", phone_number: "0612345678", bullying_type: "Verbal Bullying", description: "I'm a victim of verbal bullying, I need help")
User.create(email: "anass@gmail.com", username: "Anass", password: "12345678", first_name: "Anass", last_name: "Najam", address: "Bd karim al khatabi rue 43 n 65", country: "Morocco", city: "Casablanca", phone_number: "0650121407", bullying_type: "Harassment", description: "I'm a victim of harassment, I need help")
User.create(email: "sanaa@gmail.com", username: "Sanaa", password: "12345678", first_name: "Sanaa", last_name: "Karim", address: "Bd abdlmoumen rue 43 n 65", country: "Morocco", city: "Casablanca", phone_number: "0650121407", bullying_type: "Harassment", description: "I'm a victim of harassment, I need help")
