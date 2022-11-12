# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

if Doorkeeper::Application.count.zero?
  Doorkeeper::Application.create!(
    name: "Web Client",
    redirect_uri: "",
  )
    Doorkeeper::Application.create!(
    name: "iOS Client",
    redirect_uri: "",
  )
    Doorkeeper::Application.create!(
    name: "Android Client",
    redirect_uri: "",
  )
    Doorkeeper::Application.create!(
    name: "React Client",
    redirect_uri: "",
  )
end



User.first_or_create(email: "shaun@example.com",
                     password: "password",
                     password_confirmation: "password",
                     role: User.roles[:admin])
