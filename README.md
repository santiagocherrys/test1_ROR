# test1_ROR
Test for check the ability to use Ruby on Rails

this application use postgressql for datababse
Use the devise gem for authentication and send a email to the user to validate its account

the sign in has two Roles- admin and writer
admin are set by database with rails console and for default writers users are generated when they sign up

The connection for database and email password use enviroment variables for securiting of the credentials

for generate the admin user in rails console
User.create!(name: "John Doe", email: "admin@hotmail.com", password: "superUser1234", password_confirmation: "superUser1234", role: :admin, confirmed_at: Time.current)

seed the publications
Publication.create(title: "Publication 1", description: "This is the first publication.", category: :love, user_id: 1)
Publication.create(title: "Publication 2", description: "This is the second publication.", category: :love, user_id: 1)

seed a comment
Comment.create(description: "Comentario a la publicacion", publication_id: 1, user_id: 1)

next to readme i will put the diagram that i used and some commands i use due the process of doing the test
